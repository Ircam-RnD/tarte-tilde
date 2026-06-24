{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ -571.0, -988.0, 2526.0, 954.0 ],
        "openinpresentation": 1,
        "toolbars_unpinned_last_save": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 79.0, 106.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 79.0, 616.0, 218.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 546.0, 589.0, 218.0, 27.0 ],
                    "text": "Start audio !"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 205.0, 133.5, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 29.0, 154.0, 136.0, 33.0 ],
                    "text": "Open or close trackpad control"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 18.0,
                    "id": "obj-143",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 563.0, 55.0, 501.0, 208.0 ],
                    "presentation": 1,
                    "presentation_linecount": 10,
                    "presentation_rect": [ 539.0, 139.0, 501.0, 208.0 ],
                    "text": "If the patch, including the trackpad object, loads correctly, then subglottal pressure should be controlled by the pressure of your finger(s) on the mac's trackpad. \nThe position(s) on the trackpad should control the vowel in F1-F2 space. Each finger is linked to a voice with random lc parameter (pitch).\n\nThanks for experimenting with this patch! You can reach me at:\nthomas.risse@ircam.fr"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 411.0, 389.0, 49.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 177.0, 314.0, 49.0, 20.0 ],
                    "text": "range"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 317.0, 389.0, 34.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 83.0, 314.0, 34.0, 20.0 ],
                    "text": "min"
                }
            },
            {
                "box": {
                    "border": 5.0,
                    "id": "obj-40",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 663.0, 594.0, 354.0, 10.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 31.5, 347.0, 424.0, 10.0 ]
                }
            },
            {
                "box": {
                    "border": 5.0,
                    "id": "obj-38",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 663.0, 449.0, 354.0, 10.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.0, 585.0, 422.0, 14.0 ]
                }
            },
            {
                "box": {
                    "border": 5.0,
                    "id": "obj-37",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 268.0, 594.0, 354.0, 10.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.0, 457.0, 422.0, 12.0 ]
                }
            },
            {
                "box": {
                    "border": 5.0,
                    "id": "obj-36",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 268.0, 449.0, 354.0, 10.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 29.0, 222.0, 429.0, 9.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-32",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 266.0, 315.0, 130.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 32.0, 240.0, 130.0, 33.0 ],
                    "text": "Cricothyroid muscle activation"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-31",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 268.0, 458.0, 152.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 34.0, 364.0, 152.0, 33.0 ],
                    "text": "Thyroarytenoid muscle activation"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-29",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 663.0, 319.0, 200.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 34.0, 476.0, 200.0, 33.0 ],
                    "text": "Lateral Cricoarytenoid muscle activation"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 662.0, 461.0, 151.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 31.5, 608.0, 151.0, 20.0 ],
                    "text": "Noise ratio"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-25",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 868.0, 491.0, 159.0, 87.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 238.0, 623.0, 207.0, 60.0 ],
                    "text": "The noise ratio re-injects a portion of the kinetic energy dissipated at the exit of the larynx as a pink noise perturbation to the glottal flow. "
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-15",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 869.0, 351.0, 153.0, 100.0 ],
                    "presentation": 1,
                    "presentation_linecount": 5,
                    "presentation_rect": [ 238.0, 499.0, 208.0, 74.0 ],
                    "text": "lc has the same value for each voices. Values closer to 0 results in higher oscillation threshold (or no oscillation at all). Values closer to 0.5 result in more pressed voice."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 472.0, 495.0, 150.0, 87.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 238.0, 385.0, 207.0, 60.0 ],
                    "text": "ta has the same value for each voices. Higher values usually result in period-doubling or aperiodic oscillation regimes."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 472.0, 357.0, 154.0, 74.0 ],
                    "presentation": 1,
                    "presentation_linecount": 5,
                    "presentation_rect": [ 238.0, 260.0, 207.0, 74.0 ],
                    "text": "ct is set to a random value per voice, between ct_min and ct_min + ct_range. \nHigher values of ct results in higher voice pitch."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-26",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 268.0, 388.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.0, 313.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 268.0, 352.0, 80.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 359.0, 352.0, 80.0, 22.0 ],
                    "text": "loadmess 0.4"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 359.0, 388.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 125.0, 313.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 268.0, 496.0, 73.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 662.0, 523.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.0, 656.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 662.0, 491.0, 80.0, 22.0 ],
                    "text": "loadmess 0.2"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 663.0, 358.0, 87.0, 22.0 ],
                    "text": "loadmess 0.47"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 358.0, 64.0, 22.0 ],
                    "text": "clip~ -1. 1."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 18.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 56.0, 500.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 84.0, 500.0, 27.0 ],
                    "text": "Poly version of the self-oscillating voice model"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 24.0,
                    "id": "obj-202",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 7.0, 659.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 45.0, 659.0, 33.0 ],
                    "text": "Polyphonic voice synth"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 359.0, 422.0, 65.0, 22.0 ],
                    "text": "s ct_range"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 268.0, 422.0, 53.0, 22.0 ],
                    "text": "s ct_min"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 662.0, 557.0, 77.0, 22.0 ],
                    "text": "s noise_ratio"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 663.0, 424.0, 26.0, 22.0 ],
                    "text": "s lc"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 268.0, 562.0, 28.0, 22.0 ],
                    "text": "s ta"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-12",
                    "maxclass": "flonum",
                    "maximum": 0.5,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 663.0, 390.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.0, 551.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-10",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 268.0, 528.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.0, 423.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 70.0, 241.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 70.0, 273.0, 83.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 135.0, 139.0, 47.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 85.0, 194.0, 47.0, 22.0 ],
                    "text": "close 0"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 315.0, 207.0, 22.0 ],
                    "text": "poly~ voice_instance 110 @parallel 1"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 139.0, 42.0, 22.0 ],
                    "text": "freeze"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 79.0, 139.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 29.0, 194.0, 45.0, 22.0 ],
                    "text": "open 0"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 30.0, 193.0, 71.5, 22.0 ],
                    "text": "trackpad"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 32.0, 433.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 33.0, 607.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 546.0, 628.0, 45.0, 45.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "midpoints": [ 48.75, 592.0, 68.5, 592.0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 41.5, 601.0, 42.5, 601.0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "order": 0,
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-6": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "parameter_map": {
            "midi": {
                "number[1]": {
                    "srcname": "3.ctrl.0.chan.midi",
                    "min": 0.0,
                    "max": 1.0,
                    "flags": 2
                },
                "number[2]": {
                    "srcname": "4.ctrl.0.chan.midi",
                    "min": 0.0,
                    "max": 1.0,
                    "flags": 2
                },
                "number[3]": {
                    "srcname": "0.ctrl.15.chan.midi",
                    "min": 0.1,
                    "max": 10.0,
                    "flags": 2
                },
                "number[4]": {
                    "srcname": "1.ctrl.15.chan.midi",
                    "min": 0.1,
                    "max": 10.0,
                    "flags": 2
                },
                "number[7]": {
                    "srcname": "4.ctrl.15.chan.midi",
                    "min": 0.1,
                    "max": 20.0,
                    "flags": 2
                },
                "number[6]": {
                    "srcname": "3.ctrl.15.chan.midi",
                    "min": 0.1,
                    "max": 20.0,
                    "flags": 2
                },
                "number[5]": {
                    "srcname": "2.ctrl.15.chan.midi",
                    "min": 0.1,
                    "max": 10.0,
                    "flags": 2
                },
                "number[8]": {
                    "srcname": "5.ctrl.15.chan.midi",
                    "min": 0.1,
                    "max": 20.0,
                    "flags": 2
                },
                "number[9]": {
                    "srcname": "6.ctrl.15.chan.midi",
                    "min": 0.1,
                    "max": 20.0,
                    "flags": 2
                }
            }
        },
        "autosave": 0,
        "styles": [
            {
                "name": "rnbodefault",
                "default": {
                    "accentcolor": [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
                    "bgcolor": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "color": [ 0.929412, 0.929412, 0.352941, 1.0 ],
                    "elementcolor": [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
                    "fontname": [ "Lato" ],
                    "fontsize": [ 12.0 ],
                    "stripecolor": [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
                    "textcolor_inverse": [ 0.968627, 0.968627, 0.968627, 1 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rnbomonokai",
                "default": {
                    "accentcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.0, 0.0, 0.0, 1.0 ],
                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "clearcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "color": [ 0.611764705882353, 0.125490196078431, 0.776470588235294, 1.0 ],
                    "editing_bgcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "elementcolor": [ 0.749019607843137, 0.83921568627451, 1.0, 1.0 ],
                    "fontname": [ "Lato" ],
                    "locked_bgcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "stripecolor": [ 0.796078431372549, 0.207843137254902, 1.0, 1.0 ],
                    "textcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ]
    }
}