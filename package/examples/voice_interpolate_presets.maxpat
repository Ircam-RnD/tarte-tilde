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
        "rect": [ 34.0, 95.0, 1107.0, 853.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-24",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1231.0, 588.0, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 581.5, 826.0, 150.0, 33.0 ],
                    "text": "Presets from Tom Mudd: Thanks !!!"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 1274.0, 243.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 134.0, 284.0, 135.0, 22.0 ],
                                    "text": "setnode 5 0.05 0.95 0.6"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 119.0, 269.0, 135.0, 22.0 ],
                                    "text": "setnode 4 0.5 0.5 0.333"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 104.0, 254.0, 128.0, 22.0 ],
                                    "text": "setnode 3 0.75 0.8 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 84.0, 230.0, 128.0, 22.0 ],
                                    "text": "setnode 2 0.9 0.25 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 69.0, 215.0, 121.0, 22.0 ],
                                    "text": "setnode 1 0.1 0.1 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 50.0, 100.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-89",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 339.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 4,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 3,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "order": 2,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1047.0, 198.0, 48.0, 22.0 ],
                    "text": "p setup"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 16.0,
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 258.0, 112.0, 195.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 972.0, 289.5, 152.0, 24.0 ],
                    "text": "Explore presets",
                    "textcolor": [ 0.88529247045517, 0.673130631446838, 0.377244234085083, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "candycane": 8,
                    "displayknob": 1,
                    "id": "obj-35",
                    "maxclass": "nodes",
                    "nodenumber": 5,
                    "nodesnames": [ "1", "2", "3", "4", "5" ],
                    "nsize": [ 0.5, 0.5, 0.5, 0.333, 0.6 ],
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1047.0, 228.5, 57.0, 51.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 578.0, 319.0, 546.0, 490.0 ],
                    "xplace": [ 0.1, 0.9, 0.75, 0.5, 0.05 ],
                    "yplace": [ 0.1, 0.25, 0.8, 0.5, 0.95 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 16.0,
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 243.0, 97.0, 195.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1133.0, 362.0, 152.0, 24.0 ],
                    "text": "Presets",
                    "textcolor": [ 0.88529247045517, 0.673130631446838, 0.377244234085083, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1125.0, 207.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-150",
                    "items": [ ",", "1:", "Throaty", "formants", ",", "2:", "Low", "and", "stable", ",", "3:", "Breathy", "croaking", ",", "4:", "Broken", "Gurgling", ",", "5:", "Help", "me" ],
                    "margin": 10,
                    "maxclass": "chooser",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1238.0, 45.0, 154.0, 180.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1131.0, 360.0, 154.0, 140.0 ],
                    "textcolor": [ 0.88529247045517, 0.673130631446838, 0.377244234085083, 1.0 ],
                    "varname": "chooser"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1250.5, 235.0, 163.0, 22.0 ],
                    "text": "setname 4 \"Broken Gurgling\""
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 1168.0, 269.5, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "name": "Throaty formants",
                            "data": [ 5, "obj-106", "number", "float", 0.499000012874603, 5, "obj-107", "number", "float", 0.800000011920929, 5, "obj-108", "number", "float", 1.0, 5, "obj-14", "number", "float", 0.100000001490116 ]
                        },
                        {
                            "number": 2,
                            "name": "Low and stable",
                            "data": [ 5, "obj-106", "number", "float", 0.474999994039536, 5, "obj-107", "number", "float", 0.0, 5, "obj-108", "number", "float", 0.048000000417233, 5, "obj-14", "number", "float", 0.0 ]
                        },
                        {
                            "number": 3,
                            "name": "Breathy croaking",
                            "data": [ 5, "obj-106", "number", "float", 0.470999985933304, 5, "obj-107", "number", "float", 0.800000011920929, 5, "obj-108", "number", "float", 0.048000000417233, 5, "obj-14", "number", "float", 0.150000005960464 ]
                        },
                        {
                            "number": 4,
                            "name": "Broken Gurgling",
                            "data": [ 5, "obj-106", "number", "float", 0.492000013589859, 5, "obj-107", "number", "float", 0.239999994635582, 5, "obj-108", "number", "float", 0.123999997973442, 5, "obj-14", "number", "float", 0.100000001490116 ]
                        },
                        {
                            "number": 5,
                            "name": "Help me",
                            "data": [ 5, "obj-106", "number", "float", 0.500999987125397, 5, "obj-107", "number", "float", 0.5, 5, "obj-108", "number", "float", 1.0, 5, "obj-14", "number", "float", 0.100000001490116 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "obj-143",
                    "linecount": 12,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1441.0, 60.5, 440.0, 194.0 ],
                    "presentation": 1,
                    "presentation_linecount": 10,
                    "presentation_rect": [ 320.5, 7.0, 693.0, 163.0 ],
                    "text": "If the patch, including the trackpad object, loads correctly, then subglottal pressure should be controlled by the pressure of your finger on the mac's trackpad. \nThe position on the trackpad should control the vowel in F1-F2 space.\n\nIf the trackpad object doesn't load, you can still use the patch by changing values of subglottal pressure and formant frequencies. Constant values give quite robotic sounds, but mapping to some kind of controller should give better results.\n\nThanks for experimenting with this patch! You can reach me at:\nthomas.risse@ircam.fr"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1257.0, 417.0, 19.0, 20.0 ],
                    "text": "lc"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1257.0, 376.0, 19.0, 20.0 ],
                    "text": "ta"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1257.0, 327.0, 19.0, 20.0 ],
                    "text": "ct"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 556.0, 120.0, 60.0, 22.0 ],
                    "text": "loadmess"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1095.0, 327.0, 150.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 497.0, 253.0, 138.0, 47.0 ],
                    "text": "Fundamental frequency goes up with this parameter"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1095.0, 374.5, 150.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 642.0, 253.0, 137.0, 47.0 ],
                    "text": "Higher values (0.5-1.) seem to result in period doubling regimes "
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1095.0, 421.5, 150.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 786.0, 253.0, 150.0, 47.0 ],
                    "text": "For auto-oscillations, \nkeep this in the \n0.4-0.5 range"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1147.0, 141.0, 32.0, 22.0 ],
                    "text": "s F1"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1052.0, 141.0, 32.0, 22.0 ],
                    "text": "s F0"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1147.0, 91.0, 93.0, 22.0 ],
                    "text": "loadmess 2200."
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1052.0, 91.0, 87.0, 22.0 ],
                    "text": "loadmess 600."
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 819.0, 102.0, 80.0, 22.0 ],
                    "text": "loadmess 0.1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 876.5, 138.0, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 947.0, 182.0, 167.0, 20.0 ],
                    "text": "Noise ratio (between 0 and 1)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-14",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 819.0, 137.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1002.0, 210.0, 50.0, 22.0 ],
                    "varname": "noise-ratio"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 819.0, 183.0, 115.0, 22.0 ],
                    "text": "prepend noise_ratio"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 27.0, 217.0, 29.5, 22.0 ],
                    "text": "* 5."
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 981.0, 352.0, 87.0, 22.0 ],
                    "text": "loadmess 0.48"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 18.0,
                    "id": "obj-202",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 45.0, 500.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 20.0, 45.0, 294.0, 47.0 ],
                    "text": "Real-time voice synthesis using a self-oscillating vocal folds model."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 25.0,
                    "id": "obj-201",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 19.5, 7.0, 289.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 19.5, 7.0, 289.0, 34.0 ],
                    "text": "Voice"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 604.0, 102.0, 22.0 ],
                    "text": "s~ pressure_drop"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1147.0, 873.0, 35.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 155.0, 850.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1039.0, 902.0, 81.0, 22.0 ],
                    "text": "normalize~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1450.0, 902.0, 57.0, 22.0 ],
                    "text": "r~ trigger"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1039.0, 873.0, 100.0, 22.0 ],
                    "text": "r~ pressure_drop"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1026.0, 851.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 851.0, 250.0, 20.0 ],
                    "text": "Larynx pressure drop"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1432.0, 853.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1399.0, 851.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 527.0, 849.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1399.0, 883.0, 87.0, 22.0 ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1037.0, 933.0, 476.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 873.0, 521.0, 114.0 ],
                    "range": [ 0.0, 1.0 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1118.0, 504.0, 35.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 137.0, 670.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 635.0, 873.0, 35.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 115.0, 515.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 540.0, 902.0, 81.0, 22.0 ],
                    "text": "normalize~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 951.0, 902.0, 57.0, 22.0 ],
                    "text": "r~ trigger"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 540.0, 873.0, 83.0, 22.0 ],
                    "text": "r~ glottal_flow"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 527.0, 851.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 516.0, 250.0, 20.0 ],
                    "text": "Glottal flow"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 933.0, 853.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 900.0, 851.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 527.0, 514.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0, 883.0, 87.0, 22.0 ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 538.0, 933.0, 476.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 538.0, 521.0, 114.0 ],
                    "range": [ -0.100000001490116, 1.0 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 578.0, 85.0, 22.0 ],
                    "text": "s~ glottal_flow"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1035.0, 533.0, 81.0, 22.0 ],
                    "text": "normalize~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1446.0, 533.0, 57.0, 22.0 ],
                    "text": "r~ trigger"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1035.0, 504.0, 70.0, 22.0 ],
                    "text": "r~ pressure"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1022.0, 482.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 671.0, 250.0, 20.0 ],
                    "text": "Output pressure"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 31.5, 662.0, 70.0, 22.0 ],
                    "text": "r~ pressure"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 453.0, 72.0, 22.0 ],
                    "text": "s~ pressure"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1428.0, 484.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1395.0, 482.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 527.0, 669.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1395.0, 514.0, 87.0, 22.0 ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1033.0, 564.0, 476.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 694.0, 521.0377342700958, 133.96227037906647 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 951.0, 533.0, 59.0, 22.0 ],
                    "text": "s~ trigger"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 888.0, 484.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 855.0, 482.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 527.0, 319.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 855.0, 514.0, 87.0, 22.0 ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 542.0, 803.0, 226.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 487.0, 226.0, 20.0 ],
                    "text": "Yellow: lower, Blue: upper, Green: body"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "activelinecolor": [ 0.301960784313725, 1.0, 0.196078431372549, 1.0 ],
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "id": "obj-41",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 542.0, 564.0, 468.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 342.0, 521.0, 142.0 ],
                    "range": [ 0.0, 0.2 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "activelinecolor": [ 0.196078431372549, 0.52156862745098, 1.0, 1.0 ],
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "id": "obj-40",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 542.0, 564.0, 468.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 342.0, 521.0, 142.0 ],
                    "range": [ 0.0, 0.2 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 542.0, 564.0, 468.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 342.0, 521.0, 142.0 ],
                    "range": [ 0.0, 0.2 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 714.0, 518.0, 79.0, 22.0 ],
                    "text": "r~ b_opening"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 628.0, 518.0, 79.0, 22.0 ],
                    "text": "r~ u_opening"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 542.0, 518.0, 75.0, 22.0 ],
                    "text": "r~ l_opening"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 528.0, 482.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 321.0, 250.0, 20.0 ],
                    "text": "Glottal opening"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 546.0, 81.0, 22.0 ],
                    "text": "s~ b_opening"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 514.0, 81.0, 22.0 ],
                    "text": "s~ u_opening"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 481.0, 77.0, 22.0 ],
                    "text": "s~ l_opening"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 30.0, 407.0, 84.0, 22.0 ],
                    "text": "mc.unpack~ 6"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 937.0, 353.0, 29.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 790.0, 195.0, 29.0, 20.0 ],
                    "text": "lc"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 884.0, 353.0, 29.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 642.0, 199.0, 29.0, 20.0 ],
                    "text": "ta"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 831.0, 353.0, 29.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 501.0, 199.0, 29.0, 20.0 ],
                    "text": "ct"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 378.0, 383.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 11.5,
                    "id": "obj-10",
                    "items": [ "mg", ",", "mm", ",", "mm", ",", "mm", ",", "N/m", ",", "mm^-2", ",", "mg", ",", "mm", ",", "mm", ",", "mm", ",", "N/m", ",", "mm-2", ",", "N/m", ",", "NA", ",", "mm-2", ",", "m/s", ",", "kg/m^3", ",", "NA", ",", "s^-1" ],
                    "maxclass": "chooser",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 391.0, 496.0, 101.0, 399.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 310.0, 416.0, 22.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 310.0, 383.0, 56.0, 22.0 ],
                    "text": "r params"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 206.0, 312.0, 65.0, 22.0 ],
                    "text": "r message"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 310.0, 445.0, 79.0, 22.0 ],
                    "text": "print_params"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 310.0, 469.0, 67.0, 22.0 ],
                    "text": "s message"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 145.0, 387.0, 35.0, 22.0 ],
                    "text": "r info"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 83.0, 375.0, 37.0, 22.0 ],
                    "text": "s info"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 145.0, 443.0, 29.5, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "dict.view",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 144.0, 496.0, 245.0, 399.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 145.0, 417.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 145.0, 469.0, 61.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 144.0, 353.0, 221.0, 20.0 ],
                    "text": "Print physical parameters"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 777.0, 382.0, 22.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 440.0, 58.0, 22.0 ],
                    "text": "s params"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 763.0, 319.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 499.0, 177.0, 251.0, 20.0 ],
                    "text": "Muscle activation controls (between 0 and 1)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-106",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 937.0, 382.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 790.0, 224.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[14]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[5]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "lc"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-107",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 884.0, 382.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 642.0, 228.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[15]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[4]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "ta"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-108",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 831.0, 382.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 501.0, 228.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[16]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[3]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "ct"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 412.0, 179.0, 22.0 ],
                    "text": "pack muscles_activation 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 136.0, 312.0, 56.0, 22.0 ],
                    "text": "r params"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 523.0, 92.0, 221.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 96.0, 139.0, 20.0 ],
                    "text": "Trackpad control"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 563.0, 434.0, 32.0, 22.0 ],
                    "text": "s F1"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 563.0, 359.0, 32.0, 22.0 ],
                    "text": "s F0"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 332.0, 167.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 291.0, 222.0, 150.0, 20.0 ],
                    "text": "Second formant frequency"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-75",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 332.0, 189.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 291.0, 244.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 184.0, 167.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 150.0, 222.0, 150.0, 20.0 ],
                    "text": "First formant frequency"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-74",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 189.0, 189.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 155.0, 244.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 332.0, 218.0, 29.5, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 189.0, 253.0, 61.0, 22.0 ],
                    "text": "pack 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 142.0, 30.0, 22.0 ],
                    "text": "r F1"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 189.0, 142.0, 30.0, 22.0 ],
                    "text": "r F0"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 97.0, 456.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 182.0, 456.0, 20.0 ],
                    "text": "Control: subglottal pressure and vocal tract articulation from formant frequencies"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 319.0, 80.0, 20.0 ],
                    "text": "Synthesis"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 142.0, 115.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 30.0, 204.0, 115.0, 47.0 ],
                    "text": "Subglottal pressure\n(try values from 0 to\n~1000) "
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 29.5, 120.0, 63.0, 22.0 ],
                    "text": "r pressure"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 608.0, 287.5, 65.0, 22.0 ],
                    "text": "s pressure"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 606.0, 179.5, 37.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.0, 128.0, 37.0, 22.0 ],
                    "text": "close"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 556.0, 179.5, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 31.0, 128.0, 45.0, 22.0 ],
                    "text": "open 0"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 13,
                    "outlettype": [ "int", "", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ],
                    "patching_rect": [ 554.0, 253.0, 145.0, 22.0 ],
                    "text": "unpack i s f f f f f f f f f f f"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 554.0, 218.0, 82.0, 22.0 ],
                    "text": "tarte.trackpad"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 31.0, 703.0, 78.0, 90.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1144.0, 182.5, 78.0, 90.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Output gain",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Output gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Output"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "multichannelsignal", "dict", "list" ],
                    "patching_rect": [ 38.0, 345.0, 71.0, 22.0 ],
                    "text": "tarte.voice~"
                }
            },
            {
                "box": {
                    "fontsize": 20.0,
                    "format": 6,
                    "id": "obj-8",
                    "maxclass": "flonum",
                    "maximum": 10000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 30.0, 189.0, 62.0, 31.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 40.00000059604645, 253.0, 92.00000137090683, 31.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number",
                            "parameter_mmax": 10000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number",
                            "parameter_type": 0
                        }
                    },
                    "varname": "pressure"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-7",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 89.0, 218.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 31.0, 266.0, 78.0, 22.0 ],
                    "text": "onepole~ 10."
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 27.0, 243.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 563.0, 311.5, 106.0, 35.0 ],
                    "text": "expr $f1*(749.4 - 180.6)+180.6"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 563.0, 389.0, 149.0, 35.0 ],
                    "text": "expr (1-$f1)*(2285.1 - 447.9)+447.9"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 377.0, 235.0, 73.0, 22.0 ],
                    "text": "loadmess 5."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 377.0, 266.0, 104.0, 22.0 ],
                    "text": "prepend lpf_cutoff"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 815.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1161.0, 289.5, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-19",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 812.0, 92.0, 214.5, 138.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 942.0, 177.0, 182.0, 77.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-98",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1020.0, 477.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 669.0, 534.8113193511963, 172.64151746034622 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-114",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 134.0, 344.0, 377.0, 576.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-67",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 92.0, 493.0, 204.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 177.0, 460.0, 112.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-63",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 312.0, 111.0, 348.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-62",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 666.0, 111.0, 205.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1133.0, 177.5, 101.0, 172.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-83",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 522.0, 92.0, 231.0, 375.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 96.0, 145.0, 77.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-111",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 763.0, 316.0, 312.0, 151.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 497.0, 177.0, 439.0, 128.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-129",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 846.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 514.0, 535.0, 147.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-130",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1024.0, 846.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 849.0, 535.0, 147.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-57",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 522.0, 477.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 319.0, 535.0, 188.0 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 387.5, 432.0, 333.0, 432.0, 333.0, 441.0, 319.5, 441.0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 1404.5, 507.0, 1404.5, 507.0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1404.5, 549.0, 1116.0, 549.0, 1116.0, 561.0, 1042.5, 561.0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "midpoints": [ 41.0, 696.0, 99.5, 696.0 ],
                    "order": 0,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 41.0, 687.0, 40.5, 687.0 ],
                    "order": 1,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1044.5, 528.0, 1044.5, 528.0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 3 ],
                    "midpoints": [ 946.5, 405.0, 946.5, 405.0 ],
                    "order": 0,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 946.5, 405.0, 816.0, 405.0, 816.0, 378.0, 786.5, 378.0 ],
                    "order": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 2 ],
                    "midpoints": [ 893.5, 405.0, 893.1666666666666, 405.0 ],
                    "order": 0,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 893.5, 405.0, 816.0, 405.0, 816.0, 378.0, 786.5, 378.0 ],
                    "order": 1,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 1 ],
                    "midpoints": [ 840.5, 405.0, 839.8333333333334, 405.0 ],
                    "order": 0,
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 840.5, 405.0, 816.0, 405.0, 816.0, 378.0, 786.5, 378.0 ],
                    "order": 1,
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 1 ],
                    "midpoints": [ 1455.5, 558.0, 1499.5, 558.0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 386.5, 291.0, 120.0, 291.0, 120.0, 342.0, 47.5, 342.0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "midpoints": [ 786.5, 435.0, 786.5, 435.0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 549.5, 897.0, 549.5, 897.0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "midpoints": [ 786.5, 405.0, 786.5, 405.0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 154.5, 411.0, 154.5, 411.0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1044.5, 558.0, 1042.5, 558.0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 828.5, 207.0, 765.0, 207.0, 765.0, 30.0, 309.0, 30.0, 309.0, 42.0, 6.0, 42.0, 6.0, 342.0, 47.5, 342.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "midpoints": [ 942.5, 876.0, 924.0, 876.0, 924.0, 846.0, 909.5, 846.0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 319.5, 468.0, 319.5, 468.0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 215.5, 336.0, 120.0, 336.0, 120.0, 342.0, 47.5, 342.0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "midpoints": [ 319.5, 408.0, 319.5, 408.0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 319.5, 441.0, 319.5, 441.0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 909.5, 876.0, 909.5, 876.0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 909.5, 918.0, 621.0, 918.0, 621.0, 930.0, 547.5, 930.0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "order": 2,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 3,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 644.5, 897.0, 549.5, 897.0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1127.5, 528.0, 1044.5, 528.0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "midpoints": [ 990.5, 375.0, 946.5, 375.0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "midpoints": [ 572.5, 426.0, 572.5, 426.0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "midpoints": [ 572.5, 348.0, 572.5, 348.0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 828.5, 162.0, 828.5, 162.0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 36.5, 240.0, 36.5, 240.0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 828.5, 126.0, 828.5, 126.0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 1061.5, 114.0, 1061.5, 114.0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 1156.5, 114.0, 1156.5, 114.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 386.5, 258.0, 386.5, 258.0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 563.5, 243.0, 563.5, 243.0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 40.5, 291.0, 15.0, 291.0, 15.0, 342.0, 47.5, 342.0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 565.5, 213.0, 563.5, 213.0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "midpoints": [ 55.25, 807.0, 80.5, 807.0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 40.5, 810.0, 54.5, 810.0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 1156.5, 897.0, 1048.5, 897.0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 615.5, 204.0, 563.5, 204.0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "midpoints": [ 154.5, 492.0, 153.5, 492.0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 595.0, 297.0, 549.0, 297.0, 549.0, 384.0, 572.5, 384.0 ],
                    "source": [ "obj-45", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "midpoints": [ 584.5, 297.0, 572.5, 297.0 ],
                    "source": [ "obj-45", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 616.0, 276.0, 617.5, 276.0 ],
                    "source": [ "obj-45", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1048.5, 927.0, 1046.5, 927.0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 1 ],
                    "midpoints": [ 1459.5, 927.0, 1503.5, 927.0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 36.5, 261.0, 40.5, 261.0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 39.0, 144.0, 30.0, 144.0, 30.0, 186.0, 39.5, 186.0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 1048.5, 897.0, 1048.5, 897.0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 154.5, 441.0, 154.5, 441.0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 165.0, 465.0, 154.5, 465.0 ],
                    "source": [ "obj-58", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 154.5, 468.0, 154.5, 468.0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "midpoints": [ 551.5, 543.0, 840.0, 543.0, 840.0, 549.0, 948.0, 549.0, 948.0, 561.0, 1000.5, 561.0 ],
                    "order": 2,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 551.5, 543.0, 551.5, 543.0 ],
                    "order": 4,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "midpoints": [ 551.5, 543.0, 840.0, 543.0, 840.0, 549.0, 948.0, 549.0, 948.0, 561.0, 1000.5, 561.0 ],
                    "order": 1,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 1 ],
                    "midpoints": [ 551.5, 543.0, 840.0, 543.0, 840.0, 549.0, 948.0, 549.0, 948.0, 561.0, 1000.5, 561.0 ],
                    "order": 0,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "midpoints": [ 551.5, 543.0, 840.0, 543.0, 840.0, 537.0, 948.0, 537.0, 948.0, 528.0, 960.5, 528.0 ],
                    "order": 3,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "midpoints": [ 73.5, 369.0, 92.5, 369.0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 47.5, 393.0, 39.5, 393.0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 637.5, 543.0, 552.0, 543.0, 552.0, 561.0, 551.5, 561.0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 723.5, 543.0, 552.0, 543.0, 552.0, 561.0, 551.5, 561.0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "midpoints": [ 1441.5, 876.0, 1425.0, 876.0, 1425.0, 846.0, 1408.5, 846.0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 1408.5, 876.0, 1408.5, 876.0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 198.5, 165.0, 198.5, 165.0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "midpoints": [ 98.5, 261.0, 99.5, 261.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "midpoints": [ 341.5, 165.0, 341.5, 165.0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 198.5, 297.0, 120.0, 297.0, 120.0, 342.0, 47.5, 342.0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 1 ],
                    "midpoints": [ 352.0, 252.0, 252.0, 252.0, 252.0, 249.0, 240.5, 249.0 ],
                    "source": [ "obj-72", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 341.5, 252.0, 252.0, 252.0, 252.0, 249.0, 198.5, 249.0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 198.5, 213.0, 198.5, 213.0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "midpoints": [ 341.5, 213.0, 341.5, 213.0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1408.5, 918.0, 1122.0, 918.0, 1122.0, 927.0, 1046.5, 927.0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "midpoints": [ 39.5, 213.0, 36.5, 213.0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 565.5, 144.0, 565.5, 144.0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 864.5, 549.0, 552.0, 549.0, 552.0, 561.0, 551.5, 561.0 ],
                    "order": 2,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 864.5, 549.0, 552.0, 549.0, 552.0, 561.0, 551.5, 561.0 ],
                    "order": 1,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 864.5, 549.0, 552.0, 549.0, 552.0, 561.0, 551.5, 561.0 ],
                    "order": 0,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 549.5, 927.0, 547.5, 927.0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 145.5, 336.0, 120.0, 336.0, 120.0, 342.0, 47.5, 342.0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "midpoints": [ 39.5, 432.0, 39.5, 432.0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "midpoints": [ 104.5, 432.0, 15.0, 432.0, 15.0, 591.0, 29.5, 591.0 ],
                    "source": [ "obj-9", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 52.5, 432.0, 15.0, 432.0, 15.0, 477.0, 54.5, 477.0 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 65.5, 432.0, 15.0, 432.0, 15.0, 510.0, 50.5, 510.0 ],
                    "source": [ "obj-9", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "midpoints": [ 78.5, 432.0, 15.0, 432.0, 15.0, 543.0, 50.5, 543.0 ],
                    "source": [ "obj-9", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 91.5, 432.0, 15.0, 432.0, 15.0, 573.0, 46.5, 573.0 ],
                    "source": [ "obj-9", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 864.5, 507.0, 864.5, 507.0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "midpoints": [ 897.5, 507.0, 879.0, 507.0, 879.0, 477.0, 864.5, 477.0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 1 ],
                    "midpoints": [ 960.5, 927.0, 1004.5, 927.0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "midpoints": [ 1437.5, 507.0, 1419.0, 507.0, 1419.0, 477.0, 1404.5, 477.0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-106": [ "number[14]", "number[5]", 0 ],
            "obj-107": [ "number[15]", "number[4]", 0 ],
            "obj-108": [ "number[16]", "number[3]", 0 ],
            "obj-4": [ "Output gain", "Output gain", 0 ],
            "obj-8": [ "number", "number", 0 ],
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
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [ "obj-36", "obj-40" ]
            }
        ],
        "styles": [
            {
                "name": "rnbohighcontrast",
                "default": {
                    "accentcolor": [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.0, 0.0, 0.0, 1.0 ],
                        "color1": [ 0.090196078431373, 0.090196078431373, 0.090196078431373, 1.0 ],
                        "color2": [ 0.156862745098039, 0.168627450980392, 0.164705882352941, 1.0 ],
                        "proportion": 0.5,
                        "type": "color"
                    },
                    "clearcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "color": [ 1.0, 0.874509803921569, 0.141176470588235, 1.0 ],
                    "editing_bgcolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "elementcolor": [ 0.223386004567146, 0.254748553037643, 0.998085916042328, 1.0 ],
                    "fontsize": [ 13.0 ],
                    "locked_bgcolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "selectioncolor": [ 0.301960784313725, 0.694117647058824, 0.949019607843137, 1.0 ],
                    "stripecolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textcolor_inverse": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ]
    }
}