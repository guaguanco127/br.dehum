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
  "rect": [
   85.0,
   104.0,
   1480.0,
   560.0
  ],
  "openrect": [
   85.0,
   104.0,
   300.0,
   82.0
  ],
  "openrectmode": 0,
  "openinpresentation": 1,
  "devicewidth": 300.0,
  "description": "br.dehum.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
  "boxes": [
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-signature",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      800.0,
      15.0,
      660.0,
      60.0
     ],
     "text": "br.dehum.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
     "linecount": 3
    }
   },
   {
    "box": {
     "comment": "Left In (Signal) audio with hum",
     "id": "obj-i1",
     "index": 1,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      15.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Right In (Signal) audio with hum",
     "id": "obj-i2",
     "index": 2,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      90.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "On/Off (Int) 0/1. 1 = remove the hum, 0 = the input passes untouched (20 ms crossfade, then the notches stop computing). Default 1",
     "id": "obj-i3",
     "index": 3,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      165.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Grid (Int) 0/1. The mains frequency where you play: 0 = 50 Hz (Europe, most of Asia, Africa, Australia), 1 = 60 Hz (North America, parts of South America, Korea, Taiwan...). Default 1",
     "id": "obj-i4",
     "index": 4,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      240.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Fine (Float) -3 - 3 Hz. Added to the grid frequency to land the notches exactly on the hum; nudge it until the hum is lowest. Default 0",
     "id": "obj-i5",
     "index": 5,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      315.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Harmonics (Int) 1 - 24. How many multiples of the hum get a notch: 1 = the fundamental only, 4 = 60/120/180/240 Hz on a 60 Hz grid. Each new notch fades in, no click. Default 4",
     "id": "obj-i6",
     "index": 6,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      390.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Q (Float) 5 - 200. Notch thinness, the same for every notch: higher = thinner and touches less music, but the hum must be closer to the notch. 30 = about 2 Hz wide at 60 Hz. Default 30",
     "id": "obj-i7",
     "index": 7,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      465.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Depth (Float) 0 - 100 %. How much each notch cuts: 50 = -12 dB, 90 = -40 dB, 100 = a full null. Default 100",
     "id": "obj-i8",
     "index": 8,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      540.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Tilt (Float) 0 - 100 %. Eases the cut on the higher harmonics: 0 = every notch at full Depth, 100 = each one cuts much less than the one below. Default 0",
     "id": "obj-i9",
     "index": 9,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      615.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Odd/Even (Float) -100 - 100 %. -100 = odd harmonics only (60, 180, 300 Hz: transformer and pickup hum), 0 = all, 100 = even only (120, 240 Hz: power-supply buzz). Default 0",
     "id": "obj-i10",
     "index": 10,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-c0",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      165.0,
      60.0,
      46.0,
      16.0
     ],
     "presentation": 1,
     "presentation_rect": [
      198.0,
      3.0,
      46.0,
      16.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "On/Off",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "On/Off",
       "parameter_type": 2
      }
     },
     "text": "Off",
     "texton": "On",
     "varname": "On/Off"
    }
   },
   {
    "box": {
     "id": "obj-c1",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      240.0,
      60.0,
      48.0,
      16.0
     ],
     "presentation": 1,
     "presentation_rect": [
      248.0,
      3.0,
      48.0,
      16.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "50 Hz",
        "60 Hz"
       ],
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Grid",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "Grid",
       "parameter_type": 2
      }
     },
     "text": "50 Hz",
     "texton": "60 Hz",
     "varname": "Grid"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-c2",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      315.0,
      55.0,
      48.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      6.0,
      26.0,
      48.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Fine",
       "parameter_mmax": 3.0,
       "parameter_mmin": -3.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Fine",
       "parameter_type": 0,
       "parameter_unitstyle": 3
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Fine"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-c3",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      390.0,
      55.0,
      48.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      54.0,
      26.0,
      48.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Harmonics",
       "parameter_mmax": 24,
       "parameter_mmin": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "Harmonics",
       "parameter_type": 1,
       "parameter_unitstyle": 0
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Harmonics"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-c4",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      465.0,
      55.0,
      48.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      102.0,
      26.0,
      48.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        30.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Q",
       "parameter_mmax": 200.0,
       "parameter_mmin": 5.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Q",
       "parameter_type": 0,
       "parameter_unitstyle": 1,
       "parameter_exponent": 3.0
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Q"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-c5",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      540.0,
      55.0,
      48.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      150.0,
      26.0,
      48.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        100.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Depth",
       "parameter_mmax": 100.0,
       "parameter_mmin": 0.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Depth",
       "parameter_type": 0,
       "parameter_unitstyle": 5
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Depth"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-c6",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      615.0,
      55.0,
      48.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      198.0,
      26.0,
      48.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Tilt",
       "parameter_mmax": 100.0,
       "parameter_mmin": 0.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Tilt",
       "parameter_type": 0,
       "parameter_unitstyle": 5
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Tilt"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-c7",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      690.0,
      55.0,
      48.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      246.0,
      26.0,
      48.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Odd/Even",
       "parameter_mmax": 100.0,
       "parameter_mmin": -100.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Odd/Even",
       "parameter_type": 0,
       "parameter_unitstyle": 5
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Odd/Even"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-core",
     "maxclass": "newobj",
     "numinlets": 10,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      15.0,
      330.0,
      720.0,
      22.0
     ],
     "text": "br.dehum.1.0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t0",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      165.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch0",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      165.0,
      175.0,
      70.0,
      22.0
     ],
     "text": "change 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p0",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      165.0,
      245.0,
      90.0,
      22.0
     ],
     "text": "prepend on"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t1",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      240.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch1",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      240.0,
      205.0,
      70.0,
      22.0
     ],
     "text": "change 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p1",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      240.0,
      275.0,
      106.0,
      22.0
     ],
     "text": "prepend grid"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      315.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      315.0,
      175.0,
      70.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      315.0,
      245.0,
      106.0,
      22.0
     ],
     "text": "prepend fine"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t3",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      390.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch3",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      390.0,
      205.0,
      70.0,
      22.0
     ],
     "text": "change 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p3",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      390.0,
      275.0,
      146.0,
      22.0
     ],
     "text": "prepend harmonics"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      465.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      465.0,
      175.0,
      70.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      465.0,
      245.0,
      82.0,
      22.0
     ],
     "text": "prepend q"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      540.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      540.0,
      205.0,
      70.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      540.0,
      275.0,
      114.0,
      22.0
     ],
     "text": "prepend depth"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      615.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      615.0,
      175.0,
      70.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      615.0,
      245.0,
      106.0,
      22.0
     ],
     "text": "prepend tilt"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-t7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      690.0,
      115.0,
      54.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-ch7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      690.0,
      205.0,
      70.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-p7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      690.0,
      275.0,
      130.0,
      22.0
     ],
     "text": "prepend oddeven"
    }
   },
   {
    "box": {
     "comment": "Left Out (Signal) audio without the hum",
     "id": "obj-o1",
     "index": 1,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      400.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Right Out (Signal) audio without the hum",
     "id": "obj-o2",
     "index": 2,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      400.0,
      400.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "State (Message): on, grid, fine <Hz>, harmonics, q, depth <%>, tilt <%>, oddeven <%>, sent the moment a control changes. Pick them out by name: [route on grid fine harmonics q depth tilt oddeven]",
     "id": "obj-state",
     "index": 3,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      760.0,
      400.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-why",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      450.0,
      560.0,
      47.0
     ],
     "text": "[br.dehum.1.0] is the real object: the gen~ lives inside it. This file adds the controls and the State outlet: each control goes [t] -> the core, and [change] -> [prepend <name>] -> State (last outlet).",
     "linecount": 3
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-title",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      800.0,
      120.0,
      60.0,
      20.0
     ],
     "text": "dehum",
     "presentation": 1,
     "presentation_rect": [
      2.0,
      0.0,
      60.0,
      20.0
     ],
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "annotation": "br.dehum.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
     "background": 1,
     "bgcolor": [
      0.0,
      0.0,
      0.0,
      1.0
     ],
     "bordercolor": [
      0.0,
      0.0,
      0.0,
      1.0
     ],
     "hint": "br.dehum.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
     "id": "obj-panel",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      800.0,
      160.0,
      128.0,
      60.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      300.0,
      82.0
     ],
     "rounded": 7
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-i1",
      0
     ],
     "destination": [
      "obj-core",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i2",
      0
     ],
     "destination": [
      "obj-core",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i3",
      0
     ],
     "destination": [
      "obj-c0",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c0",
      0
     ],
     "destination": [
      "obj-t0",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t0",
      1
     ],
     "destination": [
      "obj-core",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t0",
      0
     ],
     "destination": [
      "obj-ch0",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch0",
      0
     ],
     "destination": [
      "obj-p0",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p0",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i4",
      0
     ],
     "destination": [
      "obj-c1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c1",
      0
     ],
     "destination": [
      "obj-t1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t1",
      1
     ],
     "destination": [
      "obj-core",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t1",
      0
     ],
     "destination": [
      "obj-ch1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch1",
      0
     ],
     "destination": [
      "obj-p1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p1",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i5",
      0
     ],
     "destination": [
      "obj-c2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c2",
      0
     ],
     "destination": [
      "obj-t2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t2",
      1
     ],
     "destination": [
      "obj-core",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t2",
      0
     ],
     "destination": [
      "obj-ch2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch2",
      0
     ],
     "destination": [
      "obj-p2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p2",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i6",
      0
     ],
     "destination": [
      "obj-c3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c3",
      0
     ],
     "destination": [
      "obj-t3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t3",
      1
     ],
     "destination": [
      "obj-core",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t3",
      0
     ],
     "destination": [
      "obj-ch3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch3",
      0
     ],
     "destination": [
      "obj-p3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p3",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i7",
      0
     ],
     "destination": [
      "obj-c4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c4",
      0
     ],
     "destination": [
      "obj-t4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t4",
      1
     ],
     "destination": [
      "obj-core",
      6
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t4",
      0
     ],
     "destination": [
      "obj-ch4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch4",
      0
     ],
     "destination": [
      "obj-p4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p4",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i8",
      0
     ],
     "destination": [
      "obj-c5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c5",
      0
     ],
     "destination": [
      "obj-t5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t5",
      1
     ],
     "destination": [
      "obj-core",
      7
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t5",
      0
     ],
     "destination": [
      "obj-ch5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch5",
      0
     ],
     "destination": [
      "obj-p5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p5",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i9",
      0
     ],
     "destination": [
      "obj-c6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c6",
      0
     ],
     "destination": [
      "obj-t6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t6",
      1
     ],
     "destination": [
      "obj-core",
      8
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t6",
      0
     ],
     "destination": [
      "obj-ch6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch6",
      0
     ],
     "destination": [
      "obj-p6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p6",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-i10",
      0
     ],
     "destination": [
      "obj-c7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-c7",
      0
     ],
     "destination": [
      "obj-t7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t7",
      1
     ],
     "destination": [
      "obj-core",
      9
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-t7",
      0
     ],
     "destination": [
      "obj-ch7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-ch7",
      0
     ],
     "destination": [
      "obj-p7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-p7",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-core",
      0
     ],
     "destination": [
      "obj-o1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-core",
      1
     ],
     "destination": [
      "obj-o2",
      0
     ]
    }
   }
  ]
 }
}