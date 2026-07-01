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
        "rect": [ 129.0, 145.0, 1000.0, 759.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 377.0, 199.5, 107.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 377.0, 199.5, 107.0, 47.0 ],
                    "text": "Help patch with description of the object. "
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 187.0, 479.0, 110.0, 22.0 ],
                    "text": "sprintf %s.maxhelp"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 290.0, 212.0, 82.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 290.0, 212.0, 82.0, 22.0 ],
                    "text": "tarte.trackpad"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 277.0, 150.0, 221.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 277.0, 150.0, 221.0, 27.0 ],
                    "text": "Trackpad controller"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2784313725490196, 0.19215686274509805, 0.21176470588235294, 0.0 ],
                    "border": 1,
                    "bordercolor": [ 0.49411764705882355, 0.7764705882352941, 0.5019607843137255, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 278.0, 146.0, 220.0, 112.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 278.0, 146.0, 220.0, 113.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 241.5, 153.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 49.0, 241.5, 153.0, 33.0 ],
                    "text": "A crude but fun polyphonic version"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 185.0, 203.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 49.0, 185.0, 203.0, 33.0 ],
                    "text": "Quickly explore the voice model through some presets"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 217.5, 145.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.0, 217.5, 145.0, 22.0 ],
                    "text": "voice_interpolate_presets"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 43.0, 150.0, 221.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 43.0, 150.0, 221.0, 27.0 ],
                    "text": "Voice synthesis examples"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 276.5, 101.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.0, 276.5, 101.0, 22.0 ],
                    "text": "polyphonic_voice"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-7",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 70.0, 519.0, 67.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 15.0, 70.0, 519.0, 67.0 ],
                    "text": "Physical modelling synthesis of voice (and later other musical instruments). Based on stable simulations of port-Hamiltonian models."
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 20.0, 285.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 20.0, 285.0, 33.0 ],
                    "text": "Tarte overview"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 549.0, 53.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 514.0, 117.0, 22.0 ],
                    "text": "prepend loadunique"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 479.0, 106.0, 22.0 ],
                    "text": "sprintf %s.maxpat"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2784313725490196, 0.19215686274509805, 0.21176470588235294, 0.0 ],
                    "border": 1,
                    "bordercolor": [ 0.49411764705882355, 0.7764705882352941, 0.5019607843137255, 1.0 ],
                    "id": "obj-14",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 146.0, 219.0, 172.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 44.0, 146.0, 219.0, 172.0 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}