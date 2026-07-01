/**
 * trackpad — Max/MSP external
 * Exposes raw multitouch finger data from macOS trackpads.
 *
 * Struct layout from OpenMultitouchSupport by Kyome22
 * (https://github.com/Kyome22/OpenMultitouchSupport, MIT license).
 * Uses Apple's private MultitouchSupport.framework via dlopen/dlsym.
 *
 * Outlets (left to right):
 *   0  list  — one message per active finger:
 *              id  state  x  y  size  pressure  angle  majorAxis  minorAxis
 *   1  int   — finger count
 *
 * Messages:
 *   open [N]          — open device N (default 0); closes current device first
 *   close             — close current device
 *   devices           — post available devices to console
 *   freeze            — decouple trackpad from cursor, hide cursor,
 *                       suppress system gestures, disable firmware click
 *                       (Escape key to release)
 *   unfreeze          — restore all normal behavior
 *   haptic [N] [amp]  — trigger haptic pattern N (1-16); optional float amp (0.0-1.0)
 *   clicks [0|1]      — enable/disable firmware click haptic
 *   bang              — toggle verbose logging
 *
 * Multiple [trackpad] instances may coexist; each listens to one device.
 * Two instances on the same device both receive data (a warning is posted).
 *
 * Build:
 *   ./build.sh
 */

#include "ext.h"
#include "ext_obex.h"
#include "ext_systhread.h"
#include <dlfcn.h>
#include <signal.h>
#include <stdio.h>
#include <CoreFoundation/CoreFoundation.h>
#include <CoreGraphics/CoreGraphics.h>
#include <IOKit/IOReturn.h>
#include <IOKit/IOKitLib.h>


/* ─────────────────────────────────────────────────────────────────────────
   MultitouchSupport private framework declarations.
   Struct layout from OpenMultitouchSupport (Kyome22, MIT license).
   Padding fields are load-bearing; do not remove or reorder.
   ───────────────────────────────────────────────────────────────────────── */

#define MAX_DEVICES    8
#define MAX_FINGERS   20
#define MAX_INSTANCES 16
#define FINGER_FIELDS  9

typedef struct { float x, y; } MTPoint;
typedef struct { MTPoint pos, vel; } MTVector;

typedef enum {
    MT_NOT_TOUCHING = 0,
    MT_STARTING     = 1,
    MT_HOVERING     = 2,
    MT_MAKING       = 3,
    MT_TOUCHING     = 4,
    MT_BREAKING     = 5,
    MT_LINGERING    = 6,
    MT_LEAVING      = 7
} MTFingerState;

static const char *mt_state_name(int s) {
    switch (s) {
        case MT_NOT_TOUCHING: return "notTouching";
        case MT_STARTING:     return "starting";
        case MT_HOVERING:     return "hovering";
        case MT_MAKING:       return "making";
        case MT_TOUCHING:     return "touching";
        case MT_BREAKING:     return "breaking";
        case MT_LINGERING:    return "lingering";
        case MT_LEAVING:      return "leaving";
        default:              return "unknown";
    }
}

typedef struct {
    int      frame;
    double   timestamp;
    int      identifier;
    int      state;
    int      _pad1;
    int      _pad2;
    MTVector normalized;    /* .pos: position (0..1), .vel: velocity */
    float    size;          /* contact area */
    float    pressure;
    float    angle;         /* radians */
    float    majorAxis;
    float    minorAxis;
    MTVector mm;            /* physical position in mm */
    int      _pad3[2];
    float    density;
} MTFinger;

typedef void *MTDeviceRef;
typedef void *MTActuatorRef;
typedef int (*MTContactCallbackFunction)(MTDeviceRef, MTFinger *, int, double, int);

/* multitouch device functions */
static CFArrayRef  (*_MTDeviceCreateList)(void)             = NULL;
static void        (*_MTDeviceStart)(MTDeviceRef, int)      = NULL;
static void        (*_MTDeviceStop)(MTDeviceRef)            = NULL;
static void (*_MTRegisterContactFrameCallback)(MTDeviceRef, MTContactCallbackFunction)   = NULL;
static void (*_MTUnregisterContactFrameCallback)(MTDeviceRef, MTContactCallbackFunction) = NULL;

/* haptic actuator functions */
static u_long (*_MTDeviceGetDeviceID)(MTDeviceRef) = NULL;
static MTActuatorRef (*_MTActuatorCreateFromDeviceID)(long)                        = NULL;
static IOReturn      (*_MTActuatorOpen)(MTActuatorRef)                                 = NULL;
static IOReturn      (*_MTActuatorActuate)(MTActuatorRef, int32_t, uint32_t, float, float) = NULL;
static IOReturn      (*_MTActuatorClose)(MTActuatorRef)                                = NULL;
static IOReturn      (*_MTActuatorSetFirmwareClicks)(MTActuatorRef, bool)              = NULL;

static int g_haptics_available   = 0;   /* full actuator chain present  */
static int g_fw_clicks_available = 0;   /* SetFirmwareClicks present    */

/* ─────────────────────────────────────────────────────────────────────────
   Global state
   ───────────────────────────────────────────────────────────────────────── */

static int         g_mt_loaded = 0;
static MTDeviceRef g_devices[MAX_DEVICES];
static int         g_n_devices = 0;

/* ── Dock suspension state ─────────────────────────────────────────────── */
static volatile pid_t g_frozen_dock_pid = -1;

/* ── Escape-key poller (real OS thread) ────────────────────────────────── */
static t_systhread  g_escape_thread = NULL;
static volatile int g_escape_active = 0;

bool frozen = false;

#define ESCAPE_POLL_MS 50

/* ─────────────────────────────────────────────────────────────────────────
   Max object
   ───────────────────────────────────────────────────────────────────────── */

typedef struct _trackpad {
    t_object  ob;

    void *out_fingers;      /* outlet 0 (left):  per-finger data */
    void *out_count;        /* outlet 1 (right): finger count    */

    int         dev_index;
    int         active;

    /* thread-safe handoff: OS callback -> qelem on main thread */
    t_systhread_mutex  mutex;
    t_qelem           *qelem;
    MTFinger           finger_buf[MAX_FINGERS];
    int                n_fingers;

    /* haptics — actuator kept open for low-latency repeated triggering */
    MTActuatorRef actuator;

    long verbose;
} t_trackpad;

static t_class    *trackpad_class = NULL;
static t_trackpad *g_instances[MAX_INSTANCES];

/* ─────────────────────────────────────────────────────────────────────────
   Dock pid helper
   ───────────────────────────────────────────────────────────────────────── */

static pid_t get_pid(const char *name)
{
    char cmd[128];
    snprintf(cmd, sizeof(cmd), "pgrep -x '%s'", name);
    FILE *f = popen(cmd, "r");
    if (!f) return -1;
    pid_t pid = -1;
    fscanf(f, "%d", &pid);
    pclose(f);
    return pid;
}

/*
    Get device Id using IOkit as _MTDeviceGetDeviceID returns garbage (probably wrong signature...)
*/
static unsigned long long get_multitouch_device_id(void)
{
    unsigned long long result = 0;
    io_iterator_t iter = 0;

    IOServiceGetMatchingServices(
        kIOMainPortDefault,
        IOServiceMatching("AppleMultitouchDevice"),
        &iter);

    io_service_t service = IOIteratorNext(iter);
    if (service) {
        IORegistryEntryGetRegistryEntryID(service, &result);
        // or read the "Multitouch ID" property directly:
        CFNumberRef prop = IORegistryEntryCreateCFProperty(
            service,
            CFSTR("Multitouch ID"),
            kCFAllocatorDefault, 0);
        if (prop) {
            CFNumberGetValue(prop, kCFNumberSInt64Type, &result);
            CFRelease(prop);
        }
        IOObjectRelease(service);
    }
    IOObjectRelease(iter);
    return result;
}

/* ─────────────────────────────────────────────────────────────────────────
   Actuator helpers.
   The actuator is opened once when the device is opened and kept alive,
   avoiding the open/close overhead on every haptic trigger.
   ───────────────────────────────────────────────────────────────────────── */

static void actuator_open(t_trackpad *x)
{
    if (!g_haptics_available) return;
    if (x->actuator) return;
    if (x->dev_index < 0) return;

    MTActuatorRef act = NULL;

    long devid = get_multitouch_device_id();
    if (x->verbose){
        post("trackpad: raw device ID: %ld (0x%lx)", devid, devid);
    }
    act = _MTActuatorCreateFromDeviceID(devid);
    if (!act) {
        post("trackpad: could not open actuator");
        return;
    }

    IOReturn r = _MTActuatorOpen(act);
    x->actuator = act;

    // // MTDeviceGetDeviceID is unreliable — it returns IOReturn error codes
    // // on some systems. Instead, brute-force the small ID space: internal
    // // trackpads are consistently found at IDs 0, 1, or 2.
    // for (uint64_t id = 0; id <= 4 && !act; id++) {
    //     act = _MTActuatorCreateFromDeviceID(504403158265495834);
    //     if (act) {
    //         IOReturn r = _MTActuatorOpen(act);
    //         post("trackpad: ID %llu -> MTActuatorOpen returned 0x%x", id, r);
    //         if (r != kIOReturnSuccess) {
    //             CFRelease(act);
    //             act = NULL;
    //         }
    //     } else {
    //         post("trackpad: ID %llu -> MTActuatorCreateFromDeviceID returned NULL", id);
    //     }
    // }


    // if (!act) {
    //     post("trackpad: could not open actuator (tried IDs 0-4)");
    //     return;
    // }

    // x->actuator = act;
}

static void actuator_close(t_trackpad *x)
{
    if (!x->actuator) return;
    _MTActuatorClose(x->actuator);
    CFRelease(x->actuator);
    x->actuator = NULL;
}

/* ─────────────────────────────────────────────────────────────────────────
   Haptic pattern playback
   pattern : 1-16  (firmware-defined waveforms)
   amp     : 0.0-1.0  (passed as args 4/5 of MTActuatorActuate;
                        effect depends on device firmware — may be a no-op)
   ───────────────────────────────────────────────────────────────────────── */

static void actuator_play(t_trackpad *x, int32_t pattern, float amp)
{
    if (!g_haptics_available) {
        error("trackpad: haptics not available on this device");
        return;
    }
    if (!x->actuator) {
        error("trackpad: actuator not open — send 'open' first");
        return;
    }

    if (pattern < 1)  pattern = 1;
    if (pattern > 16) pattern = 16;
    if (amp < 0.0f)   amp = 0.0f;
    if (amp > 1.0f)   amp = 1.0f;

    IOReturn r = _MTActuatorActuate(x->actuator, pattern, 0, amp, amp);
    if (r != kIOReturnSuccess)
        error("trackpad: MTActuatorActuate failed (pattern %d, IOReturn 0x%x)",
              pattern, r);
    else if (x->verbose)
        post("trackpad: haptic pattern %d amp %.2f", pattern, amp);
}

/* ─────────────────────────────────────────────────────────────────────────
   Firmware click control
   ───────────────────────────────────────────────────────────────────────── */

static void actuator_set_clicks(t_trackpad *x, bool enable)
{
    if (!g_fw_clicks_available) {
        post("trackpad: firmware click control not available on this device");
        return;
    }

    /* if actuator not already open, open it temporarily */
    bool opened_here = false;
    if (!x->actuator) {
        actuator_open(x);
        opened_here = true;
    }
    if (!x->actuator) return;

    _MTActuatorSetFirmwareClicks(x->actuator, enable);

    if (opened_here)
        actuator_close(x);

    if (x->verbose)
        post("trackpad: firmware clicks %s", enable ? "on" : "off");
}

/* ─────────────────────────────────────────────────────────────────────────
   Escape-key thread — runs independently of Max's scheduler so it keeps
   polling even when the Dock (and potentially the main run loop) is stalled.
   ───────────────────────────────────────────────────────────────────────── */

static void *escape_thread_fn(void *arg)
{
    while (g_escape_active) {
        /* raw HID query — no Input Monitoring permission required */
        if (CGEventSourceKeyState(kCGEventSourceStateHIDSystemState, 53)) {
            g_escape_active = 0;

            /* resume Dock before restoring cursor */
            if (g_frozen_dock_pid > 0) {
                kill(g_frozen_dock_pid, SIGCONT);
                g_frozen_dock_pid = -1;
            }

            CGAssociateMouseAndMouseCursorPosition(true);
            CGDisplayShowCursor(kCGDirectMainDisplay);

            /* re-enable firmware clicks on the first active instance
               that has an open actuator */
            if (g_fw_clicks_available) {
                for (int i = 0; i < MAX_INSTANCES; i++) {
                    t_trackpad *x = g_instances[i];
                    if (x && x->active && x->actuator) {
                        _MTActuatorSetFirmwareClicks(x->actuator, true);
                        break;
                    }
                }
            }

            post("trackpad: cursor released (Escape key)");
            break;
        }
        systhread_sleep(ESCAPE_POLL_MS);
    }

    g_escape_thread = NULL;
    frozen = false;
    return NULL;
}

static void install_escape_poll(void)
{
    if (g_escape_thread) return;
    g_escape_active = 1;
    systhread_create((method)escape_thread_fn, NULL, 0, 0, 0, &g_escape_thread);
}

static void remove_escape_poll(void)
{
    g_escape_active = 0;
    g_escape_thread = NULL;
}

/* ─────────────────────────────────────────────────────────────────────────
   Gesture suppression via Dock SIGSTOP / SIGCONT
   ───────────────────────────────────────────────────────────────────────── */

static void freeze_gestures(t_trackpad *x)
{
    g_frozen_dock_pid = get_pid("Dock");
    if (g_frozen_dock_pid > 0) {
        kill(g_frozen_dock_pid, SIGSTOP);
        post("trackpad: system gestures suppressed (Dock pid %d suspended)",
             (int)g_frozen_dock_pid);
    } else {
        post("trackpad: could not find Dock process");
    }
}

static void unfreeze_gestures(t_trackpad *x)
{
    if (g_frozen_dock_pid > 0) {
        kill(g_frozen_dock_pid, SIGCONT);
        post("trackpad: system gestures restored (Dock pid %d resumed)",
             (int)g_frozen_dock_pid);
        g_frozen_dock_pid = -1;
    }
}

/* ─────────────────────────────────────────────────────────────────────────
   Queue element callback (runs on Max main thread — safe for outlets).
   ───────────────────────────────────────────────────────────────────────── */

static void trackpad_qfn(t_trackpad *x)
{
    MTFinger local[MAX_FINGERS];
    int count;

    systhread_mutex_lock(x->mutex);
    count = x->n_fingers;
    if (count > 0)
        memcpy(local, x->finger_buf, count * sizeof(MTFinger));
    systhread_mutex_unlock(x->mutex);

    outlet_int(x->out_count, count);

    for (int i = 0; i < count; i++) {
        MTFinger *f = &local[i];
        t_atom av[FINGER_FIELDS];
        atom_setlong (&av[0], (long)f->identifier);
        atom_setsym  (&av[1], gensym(mt_state_name(f->state)));
        atom_setfloat(&av[2], f->normalized.pos.x);
        atom_setfloat(&av[3], f->normalized.pos.y);
        atom_setfloat(&av[4], f->size);
        atom_setfloat(&av[5], f->pressure);
        atom_setfloat(&av[6], f->angle);
        atom_setfloat(&av[7], f->majorAxis);
        atom_setfloat(&av[8], f->minorAxis);
        outlet_list(x->out_fingers, NULL, FINGER_FIELDS, av);
    }
}

/* ─────────────────────────────────────────────────────────────────────────
   Multitouch callbacks (fire on a private OS thread).
   ───────────────────────────────────────────────────────────────────────── */

static void mt_deliver(int dev_idx, MTFinger *fingers, int nFingers)
{
    if (!fingers || nFingers < 0) return;
    int count = (nFingers > MAX_FINGERS) ? MAX_FINGERS : nFingers;

    for (int i = 0; i < MAX_INSTANCES; i++) {
        t_trackpad *x = g_instances[i];
        if (!x || !x->active || x->dev_index != dev_idx) continue;

        systhread_mutex_lock(x->mutex);
        x->n_fingers = count;
        if (count > 0)
            memcpy(x->finger_buf, fingers, count * sizeof(MTFinger));
        systhread_mutex_unlock(x->mutex);

        qelem_set(x->qelem);
    }
}

#define MT_CALLBACK(N) \
    static int mt_callback_##N(MTDeviceRef dev, MTFinger *fingers, int nFingers, \
                               double timestamp, int frame) { \
        mt_deliver(N, fingers, nFingers); \
        return 0; \
    }

MT_CALLBACK(0)  MT_CALLBACK(1)  MT_CALLBACK(2)  MT_CALLBACK(3)
MT_CALLBACK(4)  MT_CALLBACK(5)  MT_CALLBACK(6)  MT_CALLBACK(7)

static MTContactCallbackFunction g_callbacks[MAX_DEVICES] = {
    mt_callback_0, mt_callback_1, mt_callback_2, mt_callback_3,
    mt_callback_4, mt_callback_5, mt_callback_6, mt_callback_7,
};

/* ─────────────────────────────────────────────────────────────────────────
   Load private framework
   ───────────────────────────────────────────────────────────────────────── */

static int load_mt(void)
{
    void *lib = dlopen(
        "/System/Library/PrivateFrameworks/MultitouchSupport.framework"
        "/MultitouchSupport", RTLD_LAZY);
    if (!lib) {
        error("trackpad: failed to open MultitouchSupport.framework");
        return 0;
    }

#define SYM(name) \
    *(void **)&_ ## name = dlsym(lib, #name); \
    if (!_ ## name) { error("trackpad: symbol not found: " #name); return 0; }

    SYM(MTDeviceCreateList)
    SYM(MTDeviceStart)
    SYM(MTDeviceStop)
    SYM(MTRegisterContactFrameCallback)
    SYM(MTUnregisterContactFrameCallback)
#undef SYM

#define OPT(name) *(void **)&_ ## name = dlsym(lib, #name)
    OPT(MTDeviceGetDeviceID);
    OPT(MTActuatorCreateFromDeviceID);
    OPT(MTActuatorOpen);
    OPT(MTActuatorActuate);
    OPT(MTActuatorClose);
    OPT(MTActuatorSetFirmwareClicks);
#undef OPT

    g_haptics_available = (_MTDeviceGetDeviceID &&
                            _MTActuatorCreateFromDeviceID &&
                            _MTActuatorOpen &&
                            _MTActuatorActuate &&
                            _MTActuatorClose);

    g_fw_clicks_available = (g_haptics_available && _MTActuatorSetFirmwareClicks);

    return 1;
}

/* ─────────────────────────────────────────────────────────────────────────
   Max lifecycle
   ───────────────────────────────────────────────────────────────────────── */

void *trackpad_new(t_symbol *s, long argc, t_atom *argv)
{
    t_trackpad *x = (t_trackpad *)object_alloc(trackpad_class);
    if (!x) return NULL;

    x->out_count   = outlet_new(x, NULL);   /* 1 (right) */
    x->out_fingers = outlet_new(x, NULL);   /* 0 (left)  */

    x->verbose   = 0;
    x->active    = 0;
    x->dev_index = -1;
    x->n_fingers = 0;
    x->actuator  = NULL;

    systhread_mutex_new(&x->mutex, 0);
    x->qelem = qelem_new(x, (method)trackpad_qfn);

    for (int i = 0; i < MAX_INSTANCES; i++) {
        if (!g_instances[i]) { g_instances[i] = x; break; }
    }

    return x;
}

void trackpad_free(t_trackpad *x)
{
    x->active = 0;

    /* always restore clicks before closing actuator */
    if (x->actuator && g_fw_clicks_available)
        _MTActuatorSetFirmwareClicks(x->actuator, true);

    actuator_close(x);

    /* always resume Dock if we left it suspended */
    if (g_frozen_dock_pid > 0) {
        kill(g_frozen_dock_pid, SIGCONT);
        g_frozen_dock_pid = -1;
    }

    remove_escape_poll();

    if (x->dev_index >= 0) {
        _MTUnregisterContactFrameCallback(g_devices[x->dev_index],
                                          g_callbacks[x->dev_index]);
        int others = 0;
        for (int i = 0; i < MAX_INSTANCES; i++)
            if (g_instances[i] && g_instances[i] != x
                && g_instances[i]->active
                && g_instances[i]->dev_index == x->dev_index) others++;
        if (!others) _MTDeviceStop(g_devices[x->dev_index]);
    }

    for (int i = 0; i < MAX_INSTANCES; i++) {
        if (g_instances[i] == x) { g_instances[i] = NULL; break; }
    }

    qelem_free(x->qelem);
    systhread_mutex_free(x->mutex);
}

/* ─────────────────────────────────────────────────────────────────────────
   Messages
   ───────────────────────────────────────────────────────────────────────── */

void trackpad_bang(t_trackpad *x)
{
    x->verbose = !x->verbose;
    post("trackpad: verbose %s", x->verbose ? "on" : "off");
}

void trackpad_open(t_trackpad *x, t_symbol *s, long argc, t_atom *argv)
{
    if (!g_mt_loaded) { error("trackpad: framework not loaded"); return; }

    int idx = 0;
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG)
        idx = (int)atom_getlong(&argv[0]);

    if (idx < 0 || idx >= g_n_devices) {
        error("trackpad: device %d not found (%d available)", idx, g_n_devices);
        return;
    }

    if (x->active) {
        if (x->actuator && g_fw_clicks_available)
            _MTActuatorSetFirmwareClicks(x->actuator, true);
        actuator_close(x);
        _MTUnregisterContactFrameCallback(g_devices[x->dev_index],
                                          g_callbacks[x->dev_index]);
        int others = 0;
        for (int i = 0; i < MAX_INSTANCES; i++)
            if (g_instances[i] && g_instances[i] != x
                && g_instances[i]->active
                && g_instances[i]->dev_index == x->dev_index) others++;
        if (!others) _MTDeviceStop(g_devices[x->dev_index]);
        x->active = 0;
    }

    x->dev_index = idx;

    int already_running = 0;
    for (int i = 0; i < MAX_INSTANCES; i++) {
        if (g_instances[i] && g_instances[i] != x
            && g_instances[i]->active
            && g_instances[i]->dev_index == idx) {
            post("trackpad: warning — device %d already open on another instance", idx);
            already_running++;
        }
    }

    _MTRegisterContactFrameCallback(g_devices[idx], g_callbacks[idx]);
    if (!already_running)
        _MTDeviceStart(g_devices[idx], 0);

    x->active = 1;

    /* open actuator now so haptic triggers have no latency */
    actuator_open(x);

    post("trackpad: opened device %d — haptics %s, firmware clicks %s",
         idx,
         g_haptics_available   ? "available" : "not available",
         g_fw_clicks_available ? "available" : "not available");
}

void trackpad_close(t_trackpad *x)
{
    if (!x->active) { post("trackpad: no device open"); return; }

    if (x->actuator && g_fw_clicks_available)
        _MTActuatorSetFirmwareClicks(x->actuator, true);
    actuator_close(x);

    _MTUnregisterContactFrameCallback(g_devices[x->dev_index],
                                      g_callbacks[x->dev_index]);

    int others = 0;
    for (int i = 0; i < MAX_INSTANCES; i++)
        if (g_instances[i] && g_instances[i] != x
            && g_instances[i]->active
            && g_instances[i]->dev_index == x->dev_index) others++;

    if (!others) _MTDeviceStop(g_devices[x->dev_index]);

    x->active = 0;
    post("trackpad: closed");
}

void trackpad_devices(t_trackpad *x)
{
    if (g_n_devices == 0) { post("trackpad: no devices found"); return; }
    post("trackpad: %d device%s:", g_n_devices, g_n_devices == 1 ? "" : "s");
    for (int i = 0; i < g_n_devices; i++) {
        int in_use = 0;
        for (int j = 0; j < MAX_INSTANCES; j++) {
            if (g_instances[j] && g_instances[j]->active
                && g_instances[j]->dev_index == i) { in_use = 1; break; }
        }
        post("  [%d]%s", i, in_use ? " (in use)" : "");
    }
}

/* ── mouse / freeze control ────────────────────────────────────────────── */

void trackpad_freeze(t_trackpad *x)
{
    if (!frozen){
        CGAssociateMouseAndMouseCursorPosition(false);
        CGDisplayHideCursor(kCGDirectMainDisplay);
        freeze_gestures(x);
        actuator_set_clicks(x, false);
        install_escape_poll();
        post("trackpad: frozen — cursor decoupled, gestures suppressed, "
            "click disabled (Escape to release)");
        frozen = true;
    }
}

void trackpad_unfreeze(t_trackpad *x)
{
    if (frozen){
        remove_escape_poll();
        actuator_set_clicks(x, true);
        unfreeze_gestures(x);
        CGAssociateMouseAndMouseCursorPosition(true);
        CGDisplayShowCursor(kCGDirectMainDisplay);
        post("trackpad: unfrozen — all behavior restored");
        frozen = false;
    }
}

/* ── haptics ───────────────────────────────────────────────────────────── */

/*
 * haptic N [amp]
 *   N   : integer 1-16, selects firmware waveform
 *   amp : float 0.0-1.0 (optional, default 1.0)
 *         Passed as both float arguments of MTActuatorActuate.
 *         Effect is device/firmware dependent — may be a no-op on some models.
 */
void trackpad_haptic(t_trackpad *x, t_symbol *s, long argc, t_atom *argv)
{
    if (argc < 1) {
        error("trackpad: haptic requires at least one argument (pattern 1-16)");
        return;
    }
    int32_t pattern = (int32_t)atom_getlong(&argv[0]);
    float   amp     = (argc > 1) ? (float)atom_getfloat(&argv[1]) : 1.0f;
    actuator_play(x, pattern, amp);
}

/*
 * clicks 0|1
 *   0 — disable the physical click feel when pressing the trackpad
 *   1 — re-enable it
 */
void trackpad_clicks(t_trackpad *x, long enable)
{
    actuator_set_clicks(x, enable != 0);
}

/* ─────────────────────────────────────────────────────────────────────────
   ext_main — load framework, enumerate devices
   Devices are started per-instance via open/close, not globally.
   ───────────────────────────────────────────────────────────────────────── */

void ext_main(void *r)
{
    if (trackpad_class) return;

    t_class *c = class_new("tarte.trackpad",
        (method)trackpad_new,
        (method)trackpad_free,
        sizeof(t_trackpad), NULL, A_GIMME, 0);

    class_addmethod(c, (method)trackpad_bang,     "bang",     0);
    class_addmethod(c, (method)trackpad_open,     "open",     A_GIMME, 0);
    class_addmethod(c, (method)trackpad_close,    "close",    0);
    class_addmethod(c, (method)trackpad_devices,  "devices",  0);
    class_addmethod(c, (method)trackpad_freeze,   "freeze",   0);
    class_addmethod(c, (method)trackpad_unfreeze, "unfreeze", 0);
    class_addmethod(c, (method)trackpad_haptic,   "haptic",   A_GIMME, 0);
    class_addmethod(c, (method)trackpad_clicks,   "clicks",   A_LONG, 0);

    CLASS_ATTR_LONG(c, "verbose", 0, t_trackpad, verbose);
    CLASS_ATTR_STYLE_LABEL(c, "verbose", 0, "onoff", "Verbose state output");

    class_register(CLASS_BOX, c);
    trackpad_class = c;

    g_mt_loaded = load_mt();
    if (!g_mt_loaded) return;

    CFArrayRef list = _MTDeviceCreateList();
    if (!list || CFArrayGetCount(list) == 0) {
        post("trackpad v0.1 — no devices found");
        return;
    }

    g_n_devices = (int)CFArrayGetCount(list);
    if (g_n_devices > MAX_DEVICES) g_n_devices = MAX_DEVICES;

    for (int i = 0; i < g_n_devices; i++){
        g_devices[i] = (MTDeviceRef)CFArrayGetValueAtIndex(list, i);
    }
    post("trackpad v0.1 — %d device%s | haptics: %s | firmware clicks: %s",
         g_n_devices,
         g_n_devices == 1 ? "" : "s",
         g_haptics_available   ? "yes" : "no",
         g_fw_clicks_available ? "yes" : "no");
}