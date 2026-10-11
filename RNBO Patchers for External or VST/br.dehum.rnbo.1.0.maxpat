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
   134.0,
   159.0,
   780.0,
   680.0
  ],
  "description": "br.dehum.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
  "autosave": 0,
  "boxes": [
   {
    "box": {
     "id": "obj-signature",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      218.0,
      40.0,
      520.0,
      33.0
     ],
     "text": "br.dehum.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
    }
   },
   {
    "box": {
     "bubble": 1,
     "bubbleside": 2,
     "id": "obj-3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      38.0,
      40.0,
      150.0,
      39.0
     ],
     "text": "Drop sample into here"
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "playlist~",
     "mode": "basic",
     "numinlets": 1,
     "numoutlets": 5,
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "",
      "dictionary"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      38.0,
      98.0,
      150.0,
      30.0
     ],
     "quality": "basic",
     "saved_attribute_attributes": {
      "candicane2": {
       "expression": ""
      },
      "candicane3": {
       "expression": ""
      },
      "candicane4": {
       "expression": ""
      },
      "candicane5": {
       "expression": ""
      },
      "candicane6": {
       "expression": ""
      },
      "candicane7": {
       "expression": ""
      },
      "candicane8": {
       "expression": ""
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      61.0,
      600.0,
      45.0,
      45.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "lastchannelcount": 0,
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "outlettype": [
      "signal",
      "signal",
      "",
      "float",
      "list"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      61.0,
      450.0,
      48.0,
      136.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        -70.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Out",
       "parameter_mmax": 6.0,
       "parameter_mmin": -70.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Out",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "live.gain~"
    }
   },
   {
    "box": {
     "autosave": 1,
     "id": "obj-7",
     "inletInfo": {
      "IOInfo": [
       {
        "type": "signal",
        "index": 1,
        "tag": "in1",
        "comment": "Left In (Signal) audio with hum"
       },
       {
        "type": "signal",
        "index": 2,
        "tag": "in2",
        "comment": "Right In (Signal) audio with hum"
       },
       {
        "type": "event",
        "index": 3,
        "tag": "in3",
        "comment": "On/Off (Signal/Int) 0/1. 1 = remove the hum, 0 = the input passes untouched (20 ms crossfade, then the notches stop computing). Default 1"
       },
       {
        "type": "event",
        "index": 4,
        "tag": "in4",
        "comment": "Grid (Signal/Int) 0/1. The mains frequency where you play: 0 = 50 Hz (Europe, most of Asia, Africa, Australia), 1 = 60 Hz (North America, parts of South America, Korea, Taiwan...). Default 1"
       },
       {
        "type": "event",
        "index": 5,
        "tag": "in5",
        "comment": "Fine (Signal/Float) -3 - 3 Hz. Added to the grid frequency to land the notches exactly on the hum; nudge it until the hum is lowest. Default 0"
       },
       {
        "type": "event",
        "index": 6,
        "tag": "in6",
        "comment": "Harmonics (Signal/Float) 1 - 24. How many multiples of the hum get a notch: 1 = the fundamental only, 4 = 60/120/180/240 Hz on a 60 Hz grid. Each new notch fades in, no click. Default 4"
       },
       {
        "type": "event",
        "index": 7,
        "tag": "in7",
        "comment": "Q (Signal/Float) 5 - 200. Notch thinness, the same for every notch: higher = thinner and touches less music, but the hum must be closer to the notch. 30 = about 2 Hz wide at 60 Hz. Default 30"
       },
       {
        "type": "event",
        "index": 8,
        "tag": "in8",
        "comment": "Depth (Signal/Float) 0 - 100 %. How much each notch cuts: 50 = -12 dB, 90 = -40 dB, 100 = a full null. Default 100"
       },
       {
        "type": "event",
        "index": 9,
        "tag": "in9",
        "comment": "Tilt (Signal/Float) 0 - 100 %. Eases the cut on the higher harmonics: 0 = every notch at full Depth, 100 = each one cuts much less than the one below. Default 0"
       },
       {
        "type": "event",
        "index": 10,
        "tag": "in10",
        "comment": "Odd/Even (Signal/Float) -100 - 100 %. -100 = odd harmonics only (60, 180, 300 Hz: transformer and pickup hum), 0 = all, 100 = even only (120, 240 Hz: power-supply buzz). Default 0"
       }
      ]
     },
     "maxclass": "newobj",
     "numinlets": 10,
     "numoutlets": 3,
     "outletInfo": {
      "IOInfo": [
       {
        "type": "signal",
        "index": 1,
        "tag": "out1",
        "comment": ""
       },
       {
        "type": "signal",
        "index": 2,
        "tag": "out2",
        "comment": ""
       }
      ]
     },
     "outlettype": [
      "signal",
      "signal",
      "list"
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 1,
       "revision": 4,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "rnbo",
      "rect": [
       100.0,
       100.0,
       1300.0,
       480.0
      ],
      "default_fontname": "Lato",
      "title": "untitled",
      "boxes": [
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-sin1",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          30.0,
          20.0,
          190.0,
          23.0
         ],
         "rnbo_classname": "in~",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "in~_obj-sin1",
         "text": "in~ 1 @comment \"Left In (Signal) audio with hum\""
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-sin2",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          260.0,
          20.0,
          190.0,
          23.0
         ],
         "rnbo_classname": "in~",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 2,
         "rnbo_uniqueid": "in~_obj-sin2",
         "text": "in~ 2 @comment \"Right In (Signal) audio with hum\""
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein3",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "in_obj-ein3",
         "text": "in 3 @comment \"On/Off (Signal/Int) 0/1. 1 = remove the hum; 0 = the input passes untouched (20 ms crossfade; then the notches stop computing). Default 1\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pOn",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          30.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 2.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "On",
         "text": "param On 1 @min 0 @max 1 @enum Off On @order 1",
         "linecount": 3,
         "varname": "On"
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein4",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          230.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 2,
         "rnbo_uniqueid": "in_obj-ein4",
         "text": "in 4 @comment \"Grid (Signal/Int) 0/1. The mains frequency where you play: 0 = 50 Hz (Europe; most of Asia; Africa; Australia); 1 = 60 Hz (North America; parts of South America; Korea; Taiwan...). Default 1\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pGrid",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          230.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 2.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 2,
         "rnbo_uniqueid": "Grid",
         "text": "param Grid 1 @min 0 @max 1 @enum 50Hz 60Hz @order 2",
         "linecount": 3,
         "varname": "Grid"
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein5",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          430.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 3,
         "rnbo_uniqueid": "in_obj-ein5",
         "text": "in 5 @comment \"Fine (Signal/Float) -3 - 3 Hz. Added to the grid frequency to land the notches exactly on the hum; nudge it until the hum is lowest. Default 0\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pFine",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          430.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 3,
         "rnbo_uniqueid": "Fine",
         "text": "param Fine 0 @min -3.0 @max 3.0 @order 3",
         "linecount": 3,
         "varname": "Fine"
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein6",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          630.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 4,
         "rnbo_uniqueid": "in_obj-ein6",
         "text": "in 6 @comment \"Harmonics (Signal/Float) 1 - 24. How many multiples of the hum get a notch: 1 = the fundamental only; 4 = 60/120/180/240 Hz on a 60 Hz grid. Each new notch fades in; no click. Default 4\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pHarmonics",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          630.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 24.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 4,
         "rnbo_uniqueid": "Harmonics",
         "text": "param Harmonics 4 @min 1 @max 24 @steps 24 @order 4",
         "linecount": 3,
         "varname": "Harmonics"
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein7",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          830.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 5,
         "rnbo_uniqueid": "in_obj-ein7",
         "text": "in 7 @comment \"Q (Signal/Float) 5 - 200. Notch thinness; the same for every notch: higher = thinner and touches less music; but the hum must be closer to the notch. 30 = about 2 Hz wide at 60 Hz. Default 30\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pQ",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          830.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 3.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 5,
         "rnbo_uniqueid": "Q",
         "text": "param Q 30 @min 5.0 @max 200.0 @exponent 3.0 @order 5",
         "linecount": 3,
         "varname": "Q"
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein8",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          1030.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 6,
         "rnbo_uniqueid": "in_obj-ein8",
         "text": "in 8 @comment \"Depth (Signal/Float) 0 - 100 %. How much each notch cuts: 50 = -12 dB; 90 = -40 dB; 100 = a full null. Default 100\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pDepth",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          1030.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 6,
         "rnbo_uniqueid": "Depth",
         "text": "param Depth 100 @min 0.0 @max 100.0 @order 6",
         "linecount": 3,
         "varname": "Depth"
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein9",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          1230.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 7,
         "rnbo_uniqueid": "in_obj-ein9",
         "text": "in 9 @comment \"Tilt (Signal/Float) 0 - 100 %. Eases the cut on the higher harmonics: 0 = every notch at full Depth; 100 = each one cuts much less than the one below. Default 0\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pTilt",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          1230.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 7,
         "rnbo_uniqueid": "Tilt",
         "text": "param Tilt 0 @min 0.0 @max 100.0 @order 7",
         "linecount": 3,
         "varname": "Tilt"
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-ein10",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          1430.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 8,
         "rnbo_uniqueid": "in_obj-ein10",
         "text": "in 10 @comment \"Odd/Even (Signal/Float) -100 - 100 %. -100 = odd harmonics only (60; 180; 300 Hz: transformer and pickup hum); 0 = all; 100 = even only (120; 240 Hz: power-supply buzz). Default 0\"",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "pOdd_Even",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          1430.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 8,
         "rnbo_uniqueid": "Odd_Even",
         "text": "param Odd_Even 0 @min -100.0 @max 100.0 @order 8",
         "linecount": 3,
         "varname": "Odd_Even"
        }
       },
       {
        "box": {
         "id": "obj-gen",
         "maxclass": "newobj",
         "text": "gen~ @title br.dehum.1.0",
         "numinlets": 10,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "signal"
         ],
         "patching_rect": [
          30.0,
          260.0,
          1560.0,
          23.0
         ],
         "rnbo_classname": "gen~",
         "rnbo_extra_attributes": {
          "exposeparams": 0
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "br.dehum.1.0",
         "varname": "br.dehum.1.0",
         "genpatcher": {
          "patcher": {
           "fileversion": 1,
           "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
           },
           "classnamespace": "dsp.gen",
           "rect": [
            100.0,
            100.0,
            1200.0,
            800.0
           ],
           "boxes": [
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in1",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               50,
               20.0,
               200.0,
               22.0
              ],
              "text": "in 1 @comment Audio L"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in2",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               265,
               20.0,
               200.0,
               22.0
              ],
              "text": "in 2 @comment Audio R"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in3",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               480,
               20.0,
               200.0,
               22.0
              ],
              "text": "in 3 @comment On/off 0/1 @default 1"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in4",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               695,
               20.0,
               200.0,
               22.0
              ],
              "text": "in 4 @comment Grid 0 = 50 Hz 1 = 60 Hz @default 1"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in5",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               910,
               20.0,
               200.0,
               22.0
              ],
              "text": "in 5 @comment Fine Hz -3 to 3 @default 0"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in6",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               50,
               50.0,
               200.0,
               22.0
              ],
              "text": "in 6 @comment Harmonics 1 to 24 @default 4"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in7",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               265,
               50.0,
               200.0,
               22.0
              ],
              "text": "in 7 @comment Q 5 to 200 @default 30"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in8",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               480,
               50.0,
               200.0,
               22.0
              ],
              "text": "in 8 @comment Depth % 0 to 100 @default 100"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in9",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               695,
               50.0,
               200.0,
               22.0
              ],
              "text": "in 9 @comment Tilt % 0 to 100 @default 0"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-in10",
              "maxclass": "newobj",
              "numinlets": 0,
              "numoutlets": 1,
              "outlettype": [
               ""
              ],
              "patching_rect": [
               910,
               50.0,
               200.0,
               22.0
              ],
              "text": "in 10 @comment Odd/even % -100 odd only to 100 even only @default 0"
             }
            },
            {
             "box": {
              "code": "// br.dehum.1.0 -- stereo hum remover for live input\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// MUST MATCH: the core, the UI by reference and the RNBO host embed this same code\n// in1/in2 audio L/R\n// in3 on/off 1 on, 0 off: off = the input passes untouched -- 20 ms crossfade, then the notches stop computing\n// in4 grid 0 = 50 Hz, 1 = 60 Hz: the mains frequency where you are\n// in5 fine Hz -3..3: added to the grid, to land the notches exactly on the hum\n// in6 harmonics 1..24: how many multiples of the hum get a notch; 1 = the fundamental only\n// in7 Q 5..200: how thin each notch is; higher = thinner, but it must sit closer to the hum\n// in8 depth % 0..100: how much each notch cuts; 50 = -12 dB, 90 = -40 dB, 100 = a full null\n// in9 tilt % 0..100: eases the cut on higher harmonics; 0 = all equal, 100 = steep ease-off\n// in10 odd/even % -100..100: -100 = odd harmonics only, 0 = all, +100 = even harmonics only\n// out1/out2 audio L/R\n//\n// How it works: one notch per harmonic, in a chain. Each notch is a state-variable filter\n// (topology-preserving transform, after Andrew Simper / Cytomic) taken as input - depth * bandpass,\n// so a notch can cut partly. The state-variable filter stays accurate at 50 Hz with a high Q, where a\n// direct-form biquad loses precision. Q is the same for every notch, so each notch is wider in Hz\n// the higher it sits -- and the hum's own drift grows the same way: 0.1 Hz off at 60 Hz = 2 Hz off at 1200 Hz.\n// Harmonic N fades in and out as Harmonics passes N, so turning the dial never clicks.\n// Skips work that isn't needed:\n//   - coefficients only while a control moves; the fast path keeps the cached ones\n//   - notches above the Harmonics setting, or with no depth, are skipped and their memory cleared\n//   - Off: no filtering after the crossfade to dry\n//   - silence: nothing runs once the input is silent and every notch has rung out (-140 dBFS)\n// Every History is read first and written last, never read after a write.\n\n// per notch: L ic1, L ic2, R ic1, R ic2\nData st(24, 4);\n// per notch: a1, a2, a3, depth\nData cf(24, 4);\n// smoothed controls: 30 ms, frequency 50 ms, harmonics and Q 100 ms\nHistory on_s(1);\nHistory f0_s(60);\nHistory nh_s(4);\nHistory q_s(30);\nHistory dp_s(1);\nHistory tl_s(0);\nHistory oe_s(0);\n// cached math\nHistory sr_last(0);\nHistory c30_c(0);\nHistory c50_c(0);\nHistory c100_c(0);\nHistory kq_c(0.0333333);\nHistory nb_c(4);\n// fast path: raw control inputs last seen, and whether every smoother had reached its target\nHistory settled_s(0);\nHistory ran_s(1);\nHistory cleared_s(0);\nHistory r3(-1);\nHistory r4(-1);\nHistory r5(-1);\nHistory r6(-1);\nHistory r7(-1);\nHistory r8(-1);\nHistory r9(-1);\nHistory r10(-1);\n\n// --- read all state first ---\non = on_s;\nf0 = f0_s;\nnh = nh_s;\nQ = q_s;\ndp = dp_s;\ntl = tl_s;\noe = oe_s;\nc30 = c30_c;\nc50 = c50_c;\nc100 = c100_c;\nkq = kq_c;\nnb = nb_c;\nsettled = settled_s;\nran = ran_s;\ncleared = cleared_s;\n\n// locals used inside if / for blocks start here\nt_on = 0;\nt_f0 = 0;\nt_nh = 0;\nt_q = 0;\nt_dp = 0;\nt_tl = 0;\nt_oe = 0;\npf0 = 0;\npq = 0;\npnh = 0;\npdp = 0;\nptl = 0;\npoe = 0;\nnew_f = 0;\nnew_d = 0;\nw_odd = 1;\nw_even = 1;\ntop = 0;\ni = 0;\nh = 0;\nfk = 0;\ng = 0;\na1 = 0;\na2 = 0;\na3 = 0;\ncnt = 0;\noew = 0;\ntw = 0;\ne1 = 0;\nd = 0;\npd = 0;\ndk = 0;\nl1 = 0;\nl2 = 0;\nm1 = 0;\nm2 = 0;\nv1 = 0;\nv2 = 0;\nv3 = 0;\n\n// --- constants: once, and again if the samplerate changes ---\nsr = samplerate;\nsr_new = sr != sr_last;\nif (sr_new) {\n    c30 = exp(-1 / mstosamps(30));\n    c50 = exp(-1 / mstosamps(50));\n    c100 = exp(-1 / mstosamps(100));\n}\n\n// --- fast path test: identical control inputs and nothing still gliding ---\nsame = in3 == r3 && in4 == r4 && in5 == r5 && in6 == r6 && in7 == r7 && in8 == r8 && in9 == r9 && in10 == r10;\nstill = same && settled > 0.5 && !sr_new;\n\nif (!still) {\n    t_on = in3 >= 0.5 ? 1 : 0;\n    t_f0 = (in4 >= 0.5 ? 60 : 50) + min(max(in5, -3), 3);\n    t_nh = min(max(in6, 1), 24);\n    t_q = min(max(in7, 5), 200);\n    t_dp = min(max(in8 * 0.01, 0), 1);\n    t_tl = min(max(in9 * 0.01, 0), 1);\n    t_oe = min(max(in10 * 0.01, -1), 1);\n\n    // glide, snapping exactly onto the target once within a hair\n    pf0 = f0;\n    pq = Q;\n    pnh = nh;\n    pdp = dp;\n    ptl = tl;\n    poe = oe;\n    on = mix(t_on, on, c30);\n    on = abs(on - t_on) < 0.00001 ? t_on : on;\n    f0 = mix(t_f0, f0, c50);\n    f0 = abs(f0 - t_f0) < 0.00001 ? t_f0 : f0;\n    nh = mix(t_nh, nh, c100);\n    nh = abs(nh - t_nh) < 0.0001 ? t_nh : nh;\n    Q = mix(t_q, Q, c100);\n    Q = abs(Q - t_q) < 0.0001 ? t_q : Q;\n    dp = mix(t_dp, dp, c30);\n    dp = abs(dp - t_dp) < 0.00001 ? t_dp : dp;\n    tl = mix(t_tl, tl, c30);\n    tl = abs(tl - t_tl) < 0.00001 ? t_tl : tl;\n    oe = mix(t_oe, oe, c30);\n    oe = abs(oe - t_oe) < 0.00001 ? t_oe : oe;\n\n    new_f = f0 != pf0 || Q != pq || sr_new;\n    new_d = nh != pnh || dp != pdp || tl != ptl || oe != poe || new_f;\n    kq = 1 / Q;\n    // notches that can be non-zero: harmonic N fades in while nh goes from N - 1 to N\n    nb = min(ceil(nh), 24);\n    w_odd = min(1, 1 - oe);\n    w_even = min(1, 1 + oe);\n    top = sr * 0.45;\n    if (new_d) {\n        for (i = 0; i < 24; i += 1) {\n            h = i + 1;\n            fk = h * f0;\n            if (new_f) {\n                g = tan(pi * min(fk, top) / sr);\n                a1 = 1 / (1 + g * (g + kq));\n                a2 = g * a1;\n                poke(cf, a1, i, 0);\n                poke(cf, a2, i, 1);\n                poke(cf, g * a2, i, 2);\n            }\n            // depth for this notch: count fade, S-curve, * odd/even * tilt * depth, zero above 45 % of the samplerate.\n            // The cut is 1 - (1 - x)^2, so the dial spreads evenly in dB: 50 % = -12 dB, 90 % = -40 dB, 100 % = full null\n            cnt = min(max(nh - i, 0), 1);\n            cnt = cnt * cnt * (3 - 2 * cnt);\n            oew = (h % 2) > 0.5 ? w_odd : w_even;\n            tw = tl > 0 ? pow(h, -2 * tl) : 1;\n            e1 = 1 - cnt * oew * tw * dp;\n            d = fk < top ? 1 - e1 * e1 : 0;\n            pd = peek(cf, i, 3);\n            poke(cf, d, i, 3);\n            // a notch switched fully off forgets its memory, so it starts clean when it comes back\n            if (d <= 0 && pd > 0) {\n                poke(st, 0, i, 0);\n                poke(st, 0, i, 1);\n                poke(st, 0, i, 2);\n                poke(st, 0, i, 3);\n            }\n        }\n    }\n\n    settled = on == t_on && f0 == t_f0 && nh == t_nh && Q == t_q && dp == t_dp && tl == t_tl && oe == t_oe;\n}\n\n// --- off: once fully dry, clear every notch so it starts clean when turned back on ---\noff = on <= 0;\nif (off && cleared < 0.5) {\n    for (i = 0; i < 24; i += 1) {\n        poke(st, 0, i, 0);\n        poke(st, 0, i, 1);\n        poke(st, 0, i, 2);\n        poke(st, 0, i, 3);\n    }\n}\ncleared = off ? 1 : 0;\n\n// --- silence: input silent and every notch rang out last sample ---\nquiet = abs(in1) < 0.0000001 && abs(in2) < 0.0000001;\nidle = off || (quiet && ran < 0.5);\n\n// --- the notch chain ---\nyl = in1;\nyr = in2;\nran = 0;\nif (!idle) {\n    for (i = 0; i < nb; i += 1) {\n        d = peek(cf, i, 3);\n        if (d > 0) {\n            a1 = peek(cf, i, 0);\n            a2 = peek(cf, i, 1);\n            a3 = peek(cf, i, 2);\n            dk = d * kq;\n            l1 = peek(st, i, 0);\n            l2 = peek(st, i, 1);\n            if (abs(yl) < 0.0000001 && max(abs(l1), abs(l2)) < 0.0000001) {\n                l1 = 0;\n                l2 = 0;\n            } else {\n                v3 = yl - l2;\n                v1 = a1 * l1 + a2 * v3;\n                v2 = l2 + a2 * l1 + a3 * v3;\n                l1 = 2 * v1 - l1;\n                l2 = 2 * v2 - l2;\n                yl = yl - dk * v1;\n                ran = 1;\n            }\n            poke(st, l1, i, 0);\n            poke(st, l2, i, 1);\n            m1 = peek(st, i, 2);\n            m2 = peek(st, i, 3);\n            if (abs(yr) < 0.0000001 && max(abs(m1), abs(m2)) < 0.0000001) {\n                m1 = 0;\n                m2 = 0;\n            } else {\n                v3 = yr - m2;\n                v1 = a1 * m1 + a2 * v3;\n                v2 = m2 + a2 * m1 + a3 * v3;\n                m1 = 2 * v1 - m1;\n                m2 = 2 * v2 - m2;\n                yr = yr - dk * v1;\n                ran = 1;\n            }\n            poke(st, m1, i, 2);\n            poke(st, m2, i, 3);\n        }\n    }\n}\n\n// --- on/off crossfade, S-curve: dry and filtered are the same signal minus the hum, so a plain mix is clean ---\nom = on * on * (3 - 2 * on);\nout1 = in1 + (yl - in1) * om;\nout2 = in2 + (yr - in2) * om;\n\n// --- write all state last ---\non_s = on;\nf0_s = f0;\nnh_s = nh;\nq_s = Q;\ndp_s = dp;\ntl_s = tl;\noe_s = oe;\nsr_last = sr;\nc30_c = c30;\nc50_c = c50;\nc100_c = c100;\nkq_c = kq;\nnb_c = nb;\nsettled_s = settled;\nran_s = ran;\ncleared_s = cleared;\nr3 = in3;\nr4 = in4;\nr5 = in5;\nr6 = in6;\nr7 = in7;\nr8 = in8;\nr9 = in9;\nr10 = in10;\n",
              "fontface": 0,
              "fontname": "<Monospaced>",
              "fontsize": 12.0,
              "id": "obj-code",
              "maxclass": "codebox",
              "numinlets": 10,
              "numoutlets": 2,
              "outlettype": [
               "",
               ""
              ],
              "patching_rect": [
               50.0,
               100.0,
               1060.0,
               600.0
              ]
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-out1",
              "maxclass": "newobj",
              "numinlets": 1,
              "numoutlets": 0,
              "outlettype": [],
              "patching_rect": [
               50.0,
               720.0,
               120.0,
               22.0
              ],
              "text": "out 1 @comment Audio L"
             }
            },
            {
             "box": {
              "fontname": "Arial",
              "fontsize": 12.0,
              "id": "obj-out2",
              "maxclass": "newobj",
              "numinlets": 1,
              "numoutlets": 0,
              "outlettype": [],
              "patching_rect": [
               1050.0,
               720.0,
               120.0,
               22.0
              ],
              "text": "out 2 @comment Audio R"
             }
            }
           ],
           "lines": [
            {
             "patchline": {
              "source": [
               "obj-in1",
               0
              ],
              "destination": [
               "obj-code",
               0
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in2",
               0
              ],
              "destination": [
               "obj-code",
               1
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in3",
               0
              ],
              "destination": [
               "obj-code",
               2
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in4",
               0
              ],
              "destination": [
               "obj-code",
               3
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in5",
               0
              ],
              "destination": [
               "obj-code",
               4
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in6",
               0
              ],
              "destination": [
               "obj-code",
               5
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in7",
               0
              ],
              "destination": [
               "obj-code",
               6
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in8",
               0
              ],
              "destination": [
               "obj-code",
               7
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in9",
               0
              ],
              "destination": [
               "obj-code",
               8
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-in10",
               0
              ],
              "destination": [
               "obj-code",
               9
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-code",
               0
              ],
              "destination": [
               "obj-out1",
               0
              ]
             }
            },
            {
             "patchline": {
              "source": [
               "obj-code",
               1
              ],
              "destination": [
               "obj-out2",
               0
              ]
             }
            }
           ]
          }
         }
        }
       },
       {
        "box": {
         "id": "obj-sout1",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30.0,
          320.0,
          200.0,
          23.0
         ],
         "rnbo_classname": "out~",
         "rnbo_extra_attributes": {
          "meta": "",
          "comment": ""
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "out~_obj-sout1",
         "text": "out~ 1 @comment \"Left Out (Signal) audio without the hum\""
        }
       },
       {
        "box": {
         "id": "obj-sout2",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          830.0,
          320.0,
          200.0,
          23.0
         ],
         "rnbo_classname": "out~",
         "rnbo_extra_attributes": {
          "meta": "",
          "comment": ""
         },
         "rnbo_serial": 2,
         "rnbo_uniqueid": "out~_obj-sout2",
         "text": "out~ 2 @comment \"Right Out (Signal) audio without the hum\""
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-note",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "linecount": 3,
         "patching_rect": [
          30.0,
          380.0,
          700.0,
          50.0
         ],
         "text": "gen~ code MUST MATCH br.dehum.1.0 (same gen~ patcher and codebox). The eight params are the plugin parameters (VST/AU, web, external): On, Grid (0 = 50 Hz, 1 = 60 Hz), Fine, Harmonics, Q, Depth, Tilt, Odd_Even."
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-sin1",
          0
         ],
         "destination": [
          "obj-gen",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-sin2",
          0
         ],
         "destination": [
          "obj-gen",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein3",
          0
         ],
         "destination": [
          "pOn",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pOn",
          0
         ],
         "destination": [
          "obj-gen",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein4",
          0
         ],
         "destination": [
          "pGrid",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pGrid",
          0
         ],
         "destination": [
          "obj-gen",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein5",
          0
         ],
         "destination": [
          "pFine",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pFine",
          0
         ],
         "destination": [
          "obj-gen",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein6",
          0
         ],
         "destination": [
          "pHarmonics",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pHarmonics",
          0
         ],
         "destination": [
          "obj-gen",
          5
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein7",
          0
         ],
         "destination": [
          "pQ",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pQ",
          0
         ],
         "destination": [
          "obj-gen",
          6
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein8",
          0
         ],
         "destination": [
          "pDepth",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pDepth",
          0
         ],
         "destination": [
          "obj-gen",
          7
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein9",
          0
         ],
         "destination": [
          "pTilt",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pTilt",
          0
         ],
         "destination": [
          "obj-gen",
          8
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein10",
          0
         ],
         "destination": [
          "pOdd_Even",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pOdd_Even",
          0
         ],
         "destination": [
          "obj-gen",
          9
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-gen",
          0
         ],
         "destination": [
          "obj-sout1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-gen",
          1
         ],
         "destination": [
          "obj-sout2",
          0
         ]
        }
       }
      ]
     },
     "patching_rect": [
      54.0,
      400.0,
      340.0,
      22.0
     ],
     "rnboversion": "1.4.3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_invisible": 1,
       "parameter_longname": "rnbo~",
       "parameter_modmode": 0,
       "parameter_shortname": "rnbo~",
       "parameter_type": 3
      }
     },
     "saved_object_attributes": {
      "optimization": "O1",
      "parameter_enable": 1,
      "uuid": "cf7852d0-f1f3-4612-adc0-3b1637b20322"
     },
     "text": "rnbo~",
     "varname": "rnbo~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-export",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "linecount": 3,
     "patching_rect": [
      420.0,
      400.0,
      340.0,
      47.0
     ],
     "text": "EXPORT NAME: br.dehum.1.0~\nMax External Export asks for a name: keep the ~ at the end."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr0",
     "maxclass": "attrui",
     "attr": "On",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      90.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr1",
     "maxclass": "attrui",
     "attr": "Grid",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      114.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr2",
     "maxclass": "attrui",
     "attr": "Fine",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      138.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr3",
     "maxclass": "attrui",
     "attr": "Harmonics",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      162.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr4",
     "maxclass": "attrui",
     "attr": "Q",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      186.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr5",
     "maxclass": "attrui",
     "attr": "Depth",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      210.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr6",
     "maxclass": "attrui",
     "attr": "Tilt",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      234.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-attr7",
     "maxclass": "attrui",
     "attr": "Odd_Even",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      258.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-hint",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "linecount": 3,
     "patching_rect": [
      420.0,
      300.0,
      340.0,
      47.0
     ],
     "text": "Drop a sample with hum into the playlist (or patch your own source into the two left inlets), then set Grid and nudge Fine until the hum is lowest."
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      1
     ],
     "destination": [
      "obj-7",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      1
     ],
     "destination": [
      "obj-5",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      1
     ],
     "destination": [
      "obj-6",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr0",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr1",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr2",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr3",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr4",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr5",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr6",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr7",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   }
  ]
 }
}