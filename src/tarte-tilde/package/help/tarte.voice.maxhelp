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
        "rect": [ 34.0, 95.0, 1069.0, 853.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-156",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 46.0, 995.0, 68.0, 22.0 ],
                    "text": "normalize~"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 111.0, 1087.0, 405.0, 166.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 589.0, 254.0, 74.0, 22.0 ],
                    "text": "expr (1- $f1)"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 546.0, 347.0, 74.0, 22.0 ],
                    "text": "expr (1- $f1)"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 541.0, 387.5, 138.0, 22.0 ],
                    "text": "zmap 0. 1. 2285.1 447.9"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 589.5, 289.0, 131.0, 22.0 ],
                    "text": "zmap 0. 1. 749.4 180.6"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 615.0, 242.0, 29.5, 22.0 ],
                    "text": "* 5."
                }
            },
            {
                "box": {
                    "attr": "noise_ratio",
                    "id": "obj-139",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1092.0, 391.0, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 915.0, 181.0, 150.0, 22.0 ]
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
                    "presentation_rect": [ 20.0, 45.0, 500.0, 47.0 ],
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
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 45.0, 967.0, 70.0, 22.0 ],
                    "text": "r~ pressure"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 938.0, 197.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 573.0, 718.0, 197.0, 20.0 ],
                    "text": "Estimated signal descriptors"
                }
            },
            {
                "box": {
                    "fontsize": 20.0,
                    "id": "obj-140",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 107.0, 1041.0, 70.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 642.0, 742.0, 70.0, 29.0 ],
                    "text": "F0"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "format": 6,
                    "id": "obj-136",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 45.0, 1041.0, 60.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 580.0, 742.0, 60.0, 29.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "" ],
                    "patching_rect": [ 45.5, 1012.0, 42.0, 22.0 ],
                    "text": "fzero~"
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
                    "presentation_rect": [ 155.0, 793.0, 35.0, 22.0 ],
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
                    "presentation_rect": [ 30.0, 794.0, 250.0, 20.0 ],
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
                    "text": "loadmess 0"
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
                    "presentation_rect": [ 527.0, 792.0, 24.0, 24.0 ]
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
                    "active": 0,
                    "id": "obj-78",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1037.0, 933.0, 476.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 816.0, 521.0, 114.0 ],
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
                    "presentation_rect": [ 137.0, 613.0, 35.0, 22.0 ],
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
                    "presentation_rect": [ 115.0, 458.0, 35.0, 22.0 ],
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
                    "presentation_rect": [ 30.0, 459.0, 250.0, 20.0 ],
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
                    "text": "loadmess 0"
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
                    "presentation_rect": [ 527.0, 457.0, 24.0, 24.0 ]
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
                    "active": 0,
                    "id": "obj-128",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 538.0, 933.0, 476.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 481.0, 521.0, 114.0 ],
                    "range": [ 0.0, 1.0 ],
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
                    "presentation_rect": [ 30.0, 614.0, 250.0, 20.0 ],
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
                    "patching_rect": [ 31.0, 673.0, 70.0, 22.0 ],
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
                    "text": "loadmess 0"
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
                    "presentation_rect": [ 527.0, 612.0, 24.0, 24.0 ]
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
                    "active": 0,
                    "id": "obj-97",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1033.0, 564.0, 476.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 637.0, 521.0377342700958, 133.96227037906647 ],
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
                    "text": "loadmess 0"
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
                    "presentation_rect": [ 527.0, 262.0, 24.0, 24.0 ]
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
                    "presentation_rect": [ 30.0, 430.0, 226.0, 20.0 ],
                    "text": "Yellow: lower, Blue: upper, Green: body"
                }
            },
            {
                "box": {
                    "active": 0,
                    "activebgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "activelinecolor": [ 0.30196078431372547, 1.0, 0.19607843137254902, 1.0 ],
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "id": "obj-41",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 542.0, 564.0, 468.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 285.0, 521.0, 142.0 ],
                    "range": [ 0.0, 0.2 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "active": 0,
                    "activebgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "activelinecolor": [ 0.19607843137254902, 0.5215686274509804, 1.0, 1.0 ],
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "id": "obj-40",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 542.0, 564.0, 468.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 285.0, 521.0, 142.0 ],
                    "range": [ 0.0, 0.2 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "active": 0,
                    "id": "obj-36",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 542.0, 564.0, 468.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 285.0, 521.0, 142.0 ],
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
                    "presentation_rect": [ 30.0, 264.0, 250.0, 20.0 ],
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
                    "presentation_rect": [ 607.0, 199.0, 29.0, 20.0 ],
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
                    "presentation_rect": [ 554.0, 199.0, 29.0, 20.0 ],
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
                    "patching_rect": [ 391.0, 496.0, 101.0, 399.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 820.0, 295.0, 101.0, 399.0 ]
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
                    "patching_rect": [ 144.0, 496.0, 245.0, 399.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 573.0, 295.0, 245.0, 399.0 ]
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
                    "presentation": 1,
                    "presentation_rect": [ 578.0, 273.0, 221.0, 20.0 ],
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
                    "patching_rect": [ 766.0, 330.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 499.0, 177.0, 215.0, 20.0 ],
                    "text": "Higher level: muscle activation control"
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
                    "presentation_rect": [ 607.0, 228.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[14]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[5]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[12]"
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
                    "presentation_rect": [ 554.0, 228.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[15]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[4]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[13]"
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
                    "varname": "number[14]"
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
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1058.0, 295.0, 58.0, 22.0 ],
                    "text": "s params"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 778.0, 295.0, 58.0, 22.0 ],
                    "text": "s params"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 202.0, 58.0, 22.0 ],
                    "text": "s params"
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
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 766.0, 92.0, 250.0, 20.0 ],
                    "text": "Low level physical parameters setters"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 541.0, 434.0, 32.0, 22.0 ],
                    "text": "s F1"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 589.5, 324.0, 32.0, 22.0 ],
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
                    "presentation_rect": [ 295.0, 204.0, 150.0, 20.0 ],
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
                    "presentation_rect": [ 295.0, 226.0, 50.0, 22.0 ]
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
                    "presentation_rect": [ 143.0, 204.0, 150.0, 20.0 ],
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
                    "presentation_rect": [ 148.0, 226.0, 50.0, 22.0 ]
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
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 167.0, 115.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 204.0, 115.0, 20.0 ],
                    "text": "Subglottal pressure"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 142.0, 63.0, 22.0 ],
                    "text": "r pressure"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 614.0, 265.0, 65.0, 22.0 ],
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
                    "patching_rect": [ 608.0, 124.0, 37.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.0, 128.0, 37.0, 22.0 ],
                    "text": "close"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 659.0, 124.0, 42.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 123.0, 128.0, 42.0, 22.0 ],
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
                    "patching_rect": [ 558.0, 124.0, 45.0, 22.0 ],
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
                    "patching_rect": [ 558.0, 205.0, 145.0, 22.0 ],
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
                    "patching_rect": [ 558.0, 168.0, 71.5, 22.0 ],
                    "text": "trackpad"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 236.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 778.0, 265.0, 245.0, 22.0 ],
                    "text": "pack rest_positions 0.00009 0.00009 0.0015"
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
                    "presentation_rect": [ 740.0, 90.0, 78.0, 90.0 ],
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
                    "patching_rect": [ 38.0, 345.0, 64.0, 22.0 ],
                    "text": "tarte.voice"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-8",
                    "maxclass": "flonum",
                    "maximum": 10000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 30.0, 189.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 226.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number",
                            "parameter_mmax": 10000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number"
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
                    "patching_rect": [ 31.0, 256.0, 78.0, 22.0 ],
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
                    "patching_rect": [ 31.0, 218.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "maximum": 200.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1186.0, 237.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[9]",
                            "parameter_mmax": 200.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[9]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[9]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-21",
                    "maxclass": "flonum",
                    "maximum": 200.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1154.0, 210.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[8]",
                            "parameter_mmax": 200.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[8]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[8]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-23",
                    "maxclass": "flonum",
                    "maximum": 200.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1122.0, 182.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[7]",
                            "parameter_mmax": 200.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[7]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[7]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-24",
                    "maxclass": "flonum",
                    "maximum": 200.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1090.0, 156.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[6]",
                            "parameter_mmax": 200.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[6]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[6]"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1058.0, 229.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1058.0, 265.0, 147.0, 22.0 ],
                    "text": "pack stiffnesses 1. 1. 1. 1."
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 977.0, 139.0, 60.0, 22.0 ],
                    "text": "* 0.00001"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 911.0, 139.0, 60.0, 22.0 ],
                    "text": "* 0.00001"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 844.0, 139.0, 60.0, 22.0 ],
                    "text": "* 0.00001"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "maximum": 10.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 977.0, 114.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[5]",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[5]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[5]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "maximum": 10.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 911.0, 114.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[4]",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[4]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[4]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-18",
                    "maxclass": "flonum",
                    "maximum": 10.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 844.0, 114.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[3]",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[3]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[3]"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 138.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 174.0, 219.0, 22.0 ],
                    "text": "pack masses 0.00001 0.00001 0.00001"
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
                    "presentation_rect": [ 757.0, 197.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-141",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 933.0, 213.0, 147.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 567.0, 714.0, 216.0, 71.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-98",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1020.0, 477.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 612.0, 534.8113193511963, 172.64151746034622 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-114",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 134.0, 344.0, 377.0, 576.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 567.0, 263.0, 359.0, 440.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-67",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 92.0, 493.0, 204.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 177.0, 460.0, 77.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
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
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-62",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 666.0, 111.0, 205.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 729.0, 85.0, 101.0, 172.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
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
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-81",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 761.0, 92.0, 475.0, 230.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-111",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 761.0, 330.0, 255.0, 137.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 497.0, 177.0, 217.0, 77.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-129",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 846.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 457.0, 535.0, 147.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-130",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1024.0, 846.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 792.0, 535.0, 147.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-57",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 522.0, 477.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 262.0, 535.0, 188.0 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 387.5, 430.0, 332.0, 430.0, 332.0, 442.0, 319.5, 442.0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 1404.5, 508.0, 1404.5, 508.0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1404.5, 550.0, 1118.0, 550.0, 1118.0, 556.0, 1042.5, 556.0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "midpoints": [ 40.5, 697.0, 99.5, 697.0 ],
                    "order": 0,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 40.5, 697.0, 40.5, 697.0 ],
                    "order": 1,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1044.5, 529.0, 1044.5, 529.0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 3 ],
                    "midpoints": [ 946.5, 406.0, 946.5, 406.0 ],
                    "order": 0,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 946.5, 406.0, 818.0, 406.0, 818.0, 379.0, 786.5, 379.0 ],
                    "order": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 2 ],
                    "midpoints": [ 893.5, 406.0, 893.1666666666666, 406.0 ],
                    "order": 0,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 893.5, 406.0, 818.0, 406.0, 818.0, 379.0, 786.5, 379.0 ],
                    "order": 1,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 1 ],
                    "midpoints": [ 840.5, 406.0, 839.8333333333334, 406.0 ],
                    "order": 0,
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 840.5, 406.0, 818.0, 406.0, 818.0, 379.0, 786.5, 379.0 ],
                    "order": 1,
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 1 ],
                    "midpoints": [ 1455.5, 556.0, 1499.5, 556.0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 386.5, 298.0, 122.0, 298.0, 122.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "midpoints": [ 786.5, 436.0, 786.5, 436.0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 549.5, 898.0, 549.5, 898.0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "midpoints": [ 786.5, 406.0, 786.5, 406.0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 154.5, 412.0, 154.5, 412.0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1044.5, 556.0, 1042.5, 556.0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "midpoints": [ 786.5, 199.0, 786.5, 199.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 942.5, 877.0, 909.5, 877.0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 319.5, 469.0, 319.5, 469.0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 215.5, 337.0, 110.0, 337.0, 110.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "midpoints": [ 319.5, 406.0, 319.5, 406.0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 319.5, 439.0, 319.5, 439.0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 909.5, 877.0, 909.5, 877.0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 909.5, 919.0, 623.0, 919.0, 623.0, 925.0, 547.5, 925.0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "midpoints": [ 853.5, 163.0, 853.1666666666666, 163.0 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 853.5, 163.0, 830.0, 163.0, 830.0, 133.0, 786.5, 133.0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "midpoints": [ 55.0, 1030.0, 54.5, 1030.0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 644.5, 898.0, 549.5, 898.0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1127.5, 529.0, 1044.5, 529.0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 2 ],
                    "midpoints": [ 920.5, 169.0, 919.8333333333334, 169.0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 920.5, 163.0, 830.0, 163.0, 830.0, 133.0, 786.5, 133.0 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 0 ],
                    "midpoints": [ 54.5, 991.0, 55.5, 991.0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 3 ],
                    "midpoints": [ 986.5, 163.0, 986.5, 163.0 ],
                    "order": 0,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 986.5, 163.0, 830.0, 163.0, 830.0, 133.0, 786.5, 133.0 ],
                    "order": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 786.5, 163.0, 786.5, 163.0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 853.5, 139.0, 853.5, 139.0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "midpoints": [ 787.5, 289.0, 787.5, 289.0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 920.5, 139.0, 920.5, 139.0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 1163.5, 235.0, 1094.0, 235.0, 1094.0, 226.0, 1067.5, 226.0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 3 ],
                    "midpoints": [ 1163.5, 235.0, 1163.5, 235.0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 986.5, 139.0, 986.5, 139.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 1131.5, 214.0, 1067.5, 214.0 ],
                    "order": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 2 ],
                    "midpoints": [ 1131.5, 205.0, 1131.5, 205.0 ],
                    "order": 0,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 1099.5, 214.0, 1067.5, 214.0 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "midpoints": [ 1099.5, 181.0, 1099.5, 181.0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 1067.5, 256.0, 1067.5, 256.0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "midpoints": [ 1067.5, 289.0, 1067.5, 289.0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 1195.5, 262.0, 1172.0, 262.0, 1172.0, 244.0, 1094.0, 244.0, 1094.0, 226.0, 1067.5, 226.0 ],
                    "order": 1,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 4 ],
                    "midpoints": [ 1195.5, 262.0, 1195.5, 262.0 ],
                    "order": 0,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 386.5, 259.0, 386.5, 259.0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 567.5, 193.0, 567.5, 193.0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 40.5, 304.0, 17.0, 304.0, 17.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 786.5, 262.0, 787.5, 262.0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 567.5, 148.0, 567.5, 148.0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 668.5, 163.0, 567.5, 163.0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "midpoints": [ 55.25, 811.0, 80.5, 811.0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 40.5, 811.0, 54.5, 811.0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 1156.5, 898.0, 1048.5, 898.0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 617.5, 148.0, 567.5, 148.0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "midpoints": [ 154.5, 493.0, 153.5, 493.0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "midpoints": [ 620.0, 238.0, 624.5, 238.0 ],
                    "source": [ "obj-45", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-45", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-45", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1048.5, 925.0, 1046.5, 925.0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 1 ],
                    "midpoints": [ 1459.5, 925.0, 1503.5, 925.0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 40.5, 241.0, 40.5, 241.0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 1048.5, 898.0, 1048.5, 898.0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 154.5, 442.0, 154.5, 442.0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 165.0, 466.0, 154.5, 466.0 ],
                    "source": [ "obj-58", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 154.5, 466.0, 154.5, 466.0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "midpoints": [ 551.5, 550.0, 947.0, 550.0, 947.0, 559.0, 1000.5, 559.0 ],
                    "order": 2,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 551.5, 541.0, 551.5, 541.0 ],
                    "order": 4,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "midpoints": [ 551.5, 550.0, 947.0, 550.0, 947.0, 559.0, 1000.5, 559.0 ],
                    "order": 1,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 1 ],
                    "midpoints": [ 551.5, 550.0, 947.0, 550.0, 947.0, 559.0, 1000.5, 559.0 ],
                    "order": 0,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "midpoints": [ 551.5, 550.0, 947.0, 550.0, 947.0, 529.0, 960.5, 529.0 ],
                    "order": 3,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "midpoints": [ 70.0, 370.0, 92.5, 370.0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "source": [ "obj-6", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 47.5, 394.0, 39.5, 394.0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 637.5, 550.0, 551.5, 550.0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 723.5, 550.0, 551.5, 550.0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 1441.5, 877.0, 1408.5, 877.0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 1408.5, 877.0, 1408.5, 877.0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 198.5, 166.0, 198.5, 166.0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "midpoints": [ 98.5, 241.0, 99.5, 241.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "midpoints": [ 341.5, 166.0, 341.5, 166.0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 198.5, 298.0, 122.0, 298.0, 122.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 1 ],
                    "midpoints": [ 352.0, 250.0, 240.5, 250.0 ],
                    "source": [ "obj-72", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 341.5, 250.0, 198.5, 250.0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 198.5, 214.0, 198.5, 214.0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "midpoints": [ 341.5, 214.0, 341.5, 214.0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1408.5, 919.0, 1121.0, 919.0, 1121.0, 928.0, 1046.5, 928.0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 39.5, 214.0, 40.5, 214.0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 864.5, 550.0, 551.5, 550.0 ],
                    "order": 2,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 864.5, 550.0, 551.5, 550.0 ],
                    "order": 1,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 864.5, 550.0, 551.5, 550.0 ],
                    "order": 0,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 549.5, 925.0, 547.5, 925.0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 145.5, 337.0, 110.0, 337.0, 110.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "midpoints": [ 39.5, 430.0, 39.5, 430.0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "midpoints": [ 104.5, 439.0, 17.0, 439.0, 17.0, 589.0, 26.0, 589.0, 26.0, 601.0, 29.5, 601.0 ],
                    "source": [ "obj-9", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 52.5, 439.0, 17.0, 439.0, 17.0, 478.0, 54.5, 478.0 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 65.5, 439.0, 17.0, 439.0, 17.0, 511.0, 50.5, 511.0 ],
                    "source": [ "obj-9", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "midpoints": [ 78.5, 439.0, 17.0, 439.0, 17.0, 541.0, 50.5, 541.0 ],
                    "source": [ "obj-9", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 91.5, 439.0, 17.0, 439.0, 17.0, 574.0, 46.5, 574.0 ],
                    "source": [ "obj-9", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 864.5, 508.0, 864.5, 508.0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 897.5, 508.0, 864.5, 508.0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 1 ],
                    "midpoints": [ 960.5, 925.0, 1004.5, 925.0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 1437.5, 508.0, 1404.5, 508.0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-106": [ "number[14]", "number[5]", 0 ],
            "obj-107": [ "number[15]", "number[4]", 0 ],
            "obj-108": [ "number[16]", "number[3]", 0 ],
            "obj-18": [ "number[3]", "number[3]", 0 ],
            "obj-20": [ "number[4]", "number[4]", 0 ],
            "obj-21": [ "number[8]", "number[8]", 0 ],
            "obj-22": [ "number[5]", "number[5]", 0 ],
            "obj-23": [ "number[7]", "number[7]", 0 ],
            "obj-24": [ "number[6]", "number[6]", 0 ],
            "obj-27": [ "number[9]", "number[9]", 0 ],
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
        ]
    }
}