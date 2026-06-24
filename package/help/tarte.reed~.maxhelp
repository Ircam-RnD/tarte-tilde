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
        "boxes": [
            {
                "box": {
                    "attr": "contact_stiffness",
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 204.0, 436.13, 296.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "noise_ratio",
                    "id": "obj-15",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 216.02, 917.74, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 239.29, 500.3, 118.0, 22.0 ],
                    "text": "s~ auxiliary_variable"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1709.0, 259.0, 35.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 170.0, 808.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1566.0, 288.0, 81.0, 22.0 ],
                    "text": "normalize~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1566.0, 181.0, 116.0, 22.0 ],
                    "text": "r~ auxiliary_variable"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "live.scope~",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1564.0, 319.0, 476.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 45.0, 831.0, 521.0, 114.0 ],
                    "range": [ 0.0, 1.0 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 424.63, 680.91, 31.0, 22.0 ],
                    "text": "int 9"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 384.96, 596.95, 35.0, 22.0 ],
                    "text": "int -7"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 266.0, 766.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 347.0, 832.0, 29.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 347.0, 798.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 266.0, 834.0, 31.0, 22.0 ],
                    "text": "pow"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 266.0, 798.0, 38.0, 22.0 ],
                    "text": "int 10"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266.0, 873.0, 114.0, 22.0 ],
                    "text": "contact_stiffness $1"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 265.56999999999994, 598.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 347.0, 664.0, 29.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 347.0, 629.5, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 266.0, 666.0, 31.0, 22.0 ],
                    "text": "pow"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 265.56999999999994, 629.5, 38.0, 22.0 ],
                    "text": "int 10"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266.0, 705.0, 109.0, 22.0 ],
                    "text": "epsilon_smooth $1"
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 366.0, 234.0, 29.5, 22.0 ],
                    "text": "* 5."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 18.0,
                    "id": "obj-202",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 45.0, 500.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 45.0, 500.0, 27.0 ],
                    "text": "Simple single reed instrument synthesis."
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
                    "text": "Reed"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 487.0, 35.0, 22.0 ],
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
                    "patching_rect": [ 1037.0, 516.0, 81.0, 22.0 ],
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
                    "patching_rect": [ 1448.0, 516.0, 57.0, 22.0 ],
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
                    "patching_rect": [ 1037.0, 487.0, 100.0, 22.0 ],
                    "text": "r~ pressure_drop"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1024.0, 465.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 794.0, 250.0, 20.0 ],
                    "text": "Mouthpiece pressure drop"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1430.0, 467.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 1397.0, 465.0, 24.0, 24.0 ],
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
                    "patching_rect": [ 1397.0, 497.0, 87.0, 22.0 ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "active": 0,
                    "id": "obj-78",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1035.0, 547.0, 476.0, 227.0 ],
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
                    "patching_rect": [ 1136.0, 118.0, 35.0, 22.0 ],
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
                    "patching_rect": [ 633.0, 487.0, 35.0, 22.0 ],
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
                    "patching_rect": [ 538.0, 516.0, 81.0, 22.0 ],
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
                    "patching_rect": [ 949.0, 516.0, 57.0, 22.0 ],
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
                    "patching_rect": [ 538.0, 487.0, 44.0, 22.0 ],
                    "text": "r~ flow"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 465.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 459.0, 250.0, 20.0 ],
                    "text": "Mouthpiece flow"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 931.0, 467.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 898.0, 465.0, 24.0, 24.0 ],
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
                    "patching_rect": [ 898.0, 497.0, 87.0, 22.0 ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "active": 0,
                    "id": "obj-128",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 536.0, 547.0, 476.0, 227.0 ],
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
                    "patching_rect": [ 37.0, 578.0, 102.0, 22.0 ],
                    "text": "s~ pressure_drop"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1033.0, 147.0, 81.0, 22.0 ],
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
                    "patching_rect": [ 1444.0, 147.0, 57.0, 22.0 ],
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
                    "patching_rect": [ 1033.0, 118.0, 94.0, 22.0 ],
                    "text": "r~ displacement"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1020.0, 96.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 614.0, 250.0, 20.0 ],
                    "text": "Reed displacement (mm)"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 43.0, 629.5, 70.0, 22.0 ],
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
                    "patching_rect": [ 1426.0, 98.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 1393.0, 96.0, 24.0, 24.0 ],
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
                    "patching_rect": [ 1393.0, 128.0, 87.0, 22.0 ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "active": 0,
                    "id": "obj-97",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1031.0, 178.0, 476.0, 227.0 ],
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
                    "patching_rect": [ 949.0, 147.0, 59.0, 22.0 ],
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
                    "patching_rect": [ 886.0, 98.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 853.0, 96.0, 24.0, 24.0 ],
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
                    "patching_rect": [ 853.0, 128.0, 87.0, 22.0 ],
                    "text": "prepend active"
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
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 540.0, 178.0, 468.0, 227.0 ],
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
                    "patching_rect": [ 540.0, 178.0, 468.0, 227.0 ],
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
                    "patching_rect": [ 540.0, 178.0, 468.0, 227.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 285.0, 521.0, 142.0 ],
                    "range": [ 0.0, 0.2 ],
                    "samples": 2000.0,
                    "trigger_threshold": 0.01
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 540.0, 132.0, 66.0, 22.0 ],
                    "text": "r~ opening"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 526.0, 96.0, 250.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 264.0, 250.0, 20.0 ],
                    "text": "Effective motuhpiec opening (cm^3/s)"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 546.0, 46.0, 22.0 ],
                    "text": "s~ flow"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 514.0, 96.0, 22.0 ],
                    "text": "s~ displacement"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 481.0, 68.0, 22.0 ],
                    "text": "s~ opening"
                }
            },
            {
                "box": {
                    "id": "obj-13",
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
                    "patching_rect": [ 279.0, 92.0, 221.0, 20.0 ],
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
                    "patching_rect": [ 319.0, 434.0, 32.0, 22.0 ],
                    "text": "s F1"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 319.0, 341.0, 32.0, 22.0 ],
                    "text": "s F0"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 97.0, 166.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 182.0, 456.0, 20.0 ],
                    "text": "Control: mouth pressure"
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
                    "patching_rect": [ 366.0, 260.5, 65.0, 22.0 ],
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
                    "patching_rect": [ 364.0, 124.0, 37.0, 22.0 ],
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
                    "patching_rect": [ 415.0, 124.0, 42.0, 22.0 ],
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
                    "patching_rect": [ 314.0, 124.0, 45.0, 22.0 ],
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
                    "patching_rect": [ 314.0, 205.0, 145.0, 22.0 ],
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
                    "patching_rect": [ 314.0, 168.0, 71.5, 22.0 ],
                    "text": "trackpad"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 39.0, 664.0, 78.0, 90.0 ],
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
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "dict" ],
                    "patching_rect": [ 38.0, 345.0, 67.0, 22.0 ],
                    "text": "tarte.reed~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-21",
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
                    "id": "obj-22",
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
                    "id": "obj-23",
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
                    "id": "obj-24",
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
                    "id": "obj-138",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 319.0, 282.0, 106.0, 35.0 ],
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
                    "patching_rect": [ 319.0, 375.0, 149.0, 35.0 ],
                    "text": "expr (1-$f1)*(2285.1 - 447.9)+447.9"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 44.5, 772.0, 45.0, 45.0 ],
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
                    "id": "obj-142",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1018.0, 91.0, 493.0, 361.0 ],
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
                    "id": "obj-146",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 92.0, 170.0, 200.0 ],
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
                    "id": "obj-147",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 312.0, 139.0, 303.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.3137254901960784, 0.3137254901960784, 0.3137254901960784, 1.0 ],
                    "bordercolor": [ 0.25098039215686274, 0.20392156862745098, 0.9372549019607843, 1.0 ],
                    "id": "obj-148",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 623.0, 134.0, 205.0 ],
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
                    "id": "obj-149",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 278.0, 92.0, 231.0, 375.0 ],
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
                    "id": "obj-152",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 523.0, 460.0, 493.0, 361.0 ],
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
                    "id": "obj-153",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1022.0, 460.0, 493.0, 361.0 ],
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
                    "id": "obj-154",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 520.0, 91.0, 493.0, 361.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 262.0, 535.0, 188.0 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 2,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 1402.5, 122.0, 1402.5, 122.0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1402.5, 164.0, 1116.0, 164.0, 1116.0, 170.0, 1040.5, 170.0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "midpoints": [ 52.5, 654.0, 107.5, 654.0 ],
                    "order": 0,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 52.5, 654.0, 48.5, 654.0 ],
                    "order": 1,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1042.5, 143.0, 1042.5, 143.0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 1 ],
                    "midpoints": [ 1453.5, 170.0, 1497.5, 170.0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 1575.5, 284.0, 1575.5, 284.0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 547.5, 512.0, 547.5, 512.0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1042.5, 170.0, 1040.5, 170.0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 940.5, 491.0, 907.5, 491.0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 215.5, 337.0, 110.0, 337.0, 110.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 907.5, 491.0, 907.5, 491.0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 907.5, 533.0, 621.0, 533.0, 621.0, 539.0, 545.5, 539.0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "midpoints": [ 39.5, 430.0, 39.5, 430.0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 52.5, 439.0, 17.0, 439.0, 17.0, 478.0, 54.5, 478.0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 65.5, 439.0, 17.0, 439.0, 17.0, 511.0, 50.5, 511.0 ],
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "midpoints": [ 78.5, 439.0, 17.0, 439.0, 17.0, 541.0, 50.5, 541.0 ],
                    "source": [ "obj-13", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 91.5, 439.0, 17.0, 439.0, 17.0, 574.0, 46.5, 574.0 ],
                    "source": [ "obj-13", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 642.5, 512.0, 547.5, 512.0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1145.5, 143.0, 1042.5, 143.0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "midpoints": [ 328.5, 412.0, 328.5, 412.0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "midpoints": [ 328.5, 319.0, 328.5, 319.0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 375.5, 238.0, 375.5, 238.0 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 1 ],
                    "midpoints": [ 63.25, 768.0, 80.0, 768.0 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "midpoints": [ 48.5, 768.0, 54.0, 768.0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "midpoints": [ 95.5, 370.0, 92.5, 370.0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 47.5, 394.0, 39.5, 394.0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 39.5, 214.0, 40.5, 214.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "midpoints": [ 98.5, 241.0, 99.5, 241.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 40.5, 304.0, 17.0, 304.0, 17.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 40.5, 241.0, 40.5, 241.0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 1 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 323.5, 193.0, 323.5, 193.0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 1718.5, 284.0, 1575.5, 284.0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 323.5, 148.0, 323.5, 148.0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 424.5, 163.0, 323.5, 163.0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 1154.5, 512.0, 1046.5, 512.0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 373.5, 148.0, 323.5, 148.0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 355.0, 238.0, 304.0, 238.0, 304.0, 370.0, 328.5, 370.0 ],
                    "source": [ "obj-45", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "midpoints": [ 344.5, 268.0, 328.5, 268.0 ],
                    "source": [ "obj-45", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "source": [ "obj-45", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1046.5, 539.0, 1044.5, 539.0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 1 ],
                    "midpoints": [ 1457.5, 539.0, 1501.5, 539.0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 39.5, 166.0, 39.5, 166.0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 1046.5, 512.0, 1046.5, 512.0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "midpoints": [ 549.5, 164.0, 945.0, 164.0, 945.0, 173.0, 998.5, 173.0 ],
                    "order": 2,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 549.5, 155.0, 549.5, 155.0 ],
                    "order": 4,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "midpoints": [ 549.5, 164.0, 945.0, 164.0, 945.0, 173.0, 998.5, 173.0 ],
                    "order": 1,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 1 ],
                    "midpoints": [ 549.5, 164.0, 945.0, 164.0, 945.0, 173.0, 998.5, 173.0 ],
                    "order": 0,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "midpoints": [ 549.5, 164.0, 945.0, 164.0, 945.0, 143.0, 958.5, 143.0 ],
                    "order": 3,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 1439.5, 491.0, 1406.5, 491.0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 1406.5, 491.0, 1406.5, 491.0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 1575.5, 311.0, 1573.5, 311.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1406.5, 533.0, 1119.0, 533.0, 1119.0, 542.0, 1044.5, 542.0 ],
                    "source": [ "obj-77", 0 ]
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
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 862.5, 164.0, 549.5, 164.0 ],
                    "order": 2,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 862.5, 164.0, 549.5, 164.0 ],
                    "order": 1,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 862.5, 164.0, 549.5, 164.0 ],
                    "order": 0,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 547.5, 539.0, 545.5, 539.0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 145.5, 337.0, 110.0, 337.0, 110.0, 340.0, 47.5, 340.0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 862.5, 122.0, 862.5, 122.0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 895.5, 122.0, 862.5, 122.0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 1 ],
                    "midpoints": [ 958.5, 539.0, 1002.5, 539.0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 1435.5, 122.0, 1402.5, 122.0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-18": [ "Output gain", "Output gain", 0 ],
            "obj-21": [ "number", "number", 0 ],
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