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
   1000.0,
   640.0
  ],
  "showontab": 1,
  "description": "_br.dehum.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
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
      620.0,
      15.0,
      660.0,
      60.0
     ],
     "text": "_br.dehum.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
     "linecount": 3
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 24.0,
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      15.0,
      300.0,
      33.0
     ],
     "text": "br.dehum"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      57.0,
      560.0,
      33.0
     ],
     "text": "A stereo hum remover for live input: one razor-thin notch on the mains frequency (50 or 60 Hz) and on up to 24 of its harmonics, all in one gen~.",
     "linecount": 2
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      115.0,
      560.0,
      60.0
     ],
     "text": "Two files, same inlets in the same order. br.dehum.ui.1.0 has the controls and the State outlet; br.dehum.1.0 is the plain object (numbers or signals into every inlet). Inlets: Left, Right, On/Off, Grid, Fine, Harmonics, Q, Depth, Tilt, Odd/Even.",
     "linecount": 4
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      185.0,
      560.0,
      20.0
     ],
     "text": "Outlets: Left, Right, and on the .ui the State outlet (last)."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-6",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      230.0,
      560.0,
      60.0
     ],
     "text": "Tabs:\n  dehum: a source with fake hum, through the .ui\n  plain object: the same into the plain object, numbers into the inlets\n  State outlet: the .ui's state, routed by name",
     "linecount": 4
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      300.0,
      560.0,
      20.0
     ],
     "text": "Outputs start muted at -70 dB: turn on audio, then raise the slider slowly."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      325.0,
      300.0,
      20.0
     ],
     "text": "By Brian Riordan. github.com/guaguanco127"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-tab1",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      15.0,
      360.0,
      80.0,
      22.0
     ],
     "text": "p dehum",
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
       0.0,
       26.0,
       1000.0,
       614.0
      ],
      "showontab": 1,
      "boxes": [
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 18.0,
         "id": "obj-1",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          15.0,
          150.0,
          27.0
         ],
         "text": "dehum"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-2",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          51.0,
          290.0,
          74.0
         ],
         "text": "A source with fake hum added, through br.dehum.ui. The hum sits at 60.02 Hz on purpose: with Fine at 0 the notches are 0.02 Hz off and some hum is left. Nudge Fine to 0.02 and it vanishes.",
         "linecount": 5
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-3",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          135.0,
          290.0,
          60.0
         ],
         "text": "Harmonics: how many multiples get a notch. This fake hum has 12; try 4, then 12, and watch the lines in the after view disappear one by one.",
         "linecount": 4
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-4",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          205.0,
          290.0,
          60.0
         ],
         "text": "Q: higher = thinner notches that touch less music, but less forgiving when the hum drifts. Depth and Tilt set how hard, and how hard on the high ones.",
         "linecount": 4
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-5",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          275.0,
          290.0,
          47.0
         ],
         "text": "Odd/Even: this hum is mostly odd harmonics. Turn toward -100 and the even notches let go with almost no change.",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-6",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          332.0,
          290.0,
          47.0
         ],
         "text": "Grid: set it to where you play (50 Hz in Europe, 60 Hz in North America). Set the hum Hz to 50 to hear the 50 Hz grid.",
         "linecount": 3
        }
       },
       {
        "box": {
         "id": "obj-smenu",
         "items": [
          "drum loop",
          ",",
          "Anton",
          ",",
          "uneven plucks",
          ",",
          "mic (adc~ 1)"
         ],
         "maxclass": "umenu",
         "numinlets": 1,
         "numoutlets": 3,
         "outlettype": [
          "int",
          "",
          ""
         ],
         "parameter_enable": 0,
         "patching_rect": [
          340.0,
          40.0,
          130.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-smenulm",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          480.0,
          40.0,
          80.0,
          22.0
         ],
         "text": "loadmess 1"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-smenuc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          565.0,
          40.0,
          60.0,
          20.0
         ],
         "text": "source"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssrc",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "signal"
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
          "classnamespace": "box",
          "rect": [
           100.0,
           100.0,
           400.0,
           300.0
          ],
          "boxes": [
           {
            "box": {
             "comment": "Source (Int) 0 drum loop, 1 voice, 2 uneven plucks, 3 mic",
             "id": "obj-1",
             "index": 1,
             "maxclass": "inlet",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              "int"
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
             "comment": "Source (Signal) mono",
             "id": "obj-2",
             "index": 1,
             "maxclass": "outlet",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              15.0,
              490.0,
              30.0,
              30.0
             ]
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-3",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 4,
             "outlettype": [
              "int",
              "int",
              "int",
              "int"
             ],
             "patching_rect": [
              15.0,
              50.0,
              79.0,
              22.0
             ],
             "text": "t i i i i"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-4",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "bang"
             ],
             "patching_rect": [
              470.0,
              15.0,
              72.0,
              22.0
             ],
             "text": "loadbang"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-5",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              15.0,
              110.0,
              212.0,
              22.0
             ],
             "text": "open drumLoop.aif, loop 1, 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-6",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              15.0,
              140.0,
              79.0,
              22.0
             ],
             "text": "sfplay~ 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-7",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              240.0,
              110.0,
              191.0,
              22.0
             ],
             "text": "open anton.aif, loop 1, 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-8",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              240.0,
              140.0,
              79.0,
              22.0
             ],
             "text": "sfplay~ 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-9",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 3,
             "outlettype": [
              "bang",
              "bang",
              "bang"
             ],
             "patching_rect": [
              470.0,
              45.0,
              65.0,
              22.0
             ],
             "text": "t b b b"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-10",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              15.0,
              80.0,
              260.0,
              20.0
             ],
             "text": "drumLoop.aif and anton.aif ship with Max"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-11",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              80.0,
              40.0,
              22.0
             ],
             "text": "1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-12",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "bang"
             ],
             "patching_rect": [
              470.0,
              110.0,
              79.0,
              22.0
             ],
             "text": "metro 180"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-13",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 2,
             "outlettype": [
              "bang",
              "bang"
             ],
             "patching_rect": [
              470.0,
              140.0,
              51.0,
              22.0
             ],
             "text": "t b b"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-14",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              170.0,
              86.0,
              22.0
             ],
             "text": "random 100"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-15",
             "maxclass": "newobj",
             "numinlets": 6,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              200.0,
              142.0,
              22.0
             ],
             "text": "scale 0 99 0.03 1."
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-16",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              230.0,
              93.0,
              22.0
             ],
             "text": "$1 1 0. 220"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-17",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              470.0,
              260.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-18",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              630.0,
              170.0,
              79.0,
              22.0
             ],
             "text": "random 12"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-19",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              630.0,
              200.0,
              44.0,
              22.0
             ],
             "text": "+ 48"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-20",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              630.0,
              230.0,
              44.0,
              22.0
             ],
             "text": "mtof"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-21",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              630.0,
              260.0,
              44.0,
              22.0
             ],
             "text": "saw~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-22",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              470.0,
              290.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-23",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              560.0,
              80.0,
              400.0,
              20.0
             ],
             "text": "plucks at random levels (-30 to 0 dB): the comp evens them out"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-24",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              700.0,
              290.0,
              58.0,
              22.0
             ],
             "text": "adc~ 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-25",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              85.0,
              180.0,
              44.0,
              22.0
             ],
             "text": "== 0"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-26",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              85.0,
              210.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-27",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              85.0,
              240.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-28",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              270.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-29",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              310.0,
              180.0,
              44.0,
              22.0
             ],
             "text": "== 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-30",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              310.0,
              210.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-31",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              310.0,
              240.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-32",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              240.0,
              270.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-33",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              540.0,
              330.0,
              44.0,
              22.0
             ],
             "text": "== 2"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-34",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              540.0,
              355.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-35",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              540.0,
              380.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-36",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              470.0,
              410.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-37",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              770.0,
              330.0,
              44.0,
              22.0
             ],
             "text": "== 3"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-38",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              770.0,
              355.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-39",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              770.0,
              380.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-40",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              700.0,
              410.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-41",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              450.0,
              58.0,
              22.0
             ],
             "text": "*~ 0.7"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-42",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              80.0,
              450.0,
              480.0,
              20.0
             ],
             "text": "each source has its own 20 ms fade: switching never clicks (selector~ would)"
            }
           }
          ],
          "lines": [
           {
            "patchline": {
             "destination": [
              "obj-3",
              0
             ],
             "source": [
              "obj-1",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-12",
              0
             ],
             "source": [
              "obj-11",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-13",
              0
             ],
             "source": [
              "obj-12",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-14",
              0
             ],
             "source": [
              "obj-13",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-18",
              0
             ],
             "source": [
              "obj-13",
              1
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-15",
              0
             ],
             "source": [
              "obj-14",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-16",
              0
             ],
             "source": [
              "obj-15",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-17",
              0
             ],
             "source": [
              "obj-16",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-22",
              0
             ],
             "source": [
              "obj-17",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-19",
              0
             ],
             "source": [
              "obj-18",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-20",
              0
             ],
             "source": [
              "obj-19",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-21",
              0
             ],
             "source": [
              "obj-20",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-22",
              1
             ],
             "source": [
              "obj-21",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-36",
              0
             ],
             "source": [
              "obj-22",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-40",
              0
             ],
             "source": [
              "obj-24",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-26",
              0
             ],
             "source": [
              "obj-25",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-27",
              0
             ],
             "source": [
              "obj-26",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-28",
              1
             ],
             "source": [
              "obj-27",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-28",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-30",
              0
             ],
             "source": [
              "obj-29",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-25",
              0
             ],
             "source": [
              "obj-3",
              3
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-29",
              0
             ],
             "source": [
              "obj-3",
              2
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-33",
              0
             ],
             "source": [
              "obj-3",
              1
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-37",
              0
             ],
             "source": [
              "obj-3",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-31",
              0
             ],
             "source": [
              "obj-30",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-32",
              1
             ],
             "source": [
              "obj-31",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-32",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-34",
              0
             ],
             "source": [
              "obj-33",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-35",
              0
             ],
             "source": [
              "obj-34",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-36",
              1
             ],
             "source": [
              "obj-35",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-36",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-38",
              0
             ],
             "source": [
              "obj-37",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-39",
              0
             ],
             "source": [
              "obj-38",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-40",
              1
             ],
             "source": [
              "obj-39",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-9",
              0
             ],
             "source": [
              "obj-4",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-40",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-2",
              0
             ],
             "source": [
              "obj-41",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-6",
              0
             ],
             "source": [
              "obj-5",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-28",
              0
             ],
             "source": [
              "obj-6",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-8",
              0
             ],
             "source": [
              "obj-7",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-32",
              0
             ],
             "source": [
              "obj-8",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-11",
              0
             ],
             "source": [
              "obj-9",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-5",
              0
             ],
             "source": [
              "obj-9",
              2
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-7",
              0
             ],
             "source": [
              "obj-9",
              1
             ]
            }
           }
          ]
         },
         "patching_rect": [
          340.0,
          70.0,
          72.0,
          22.0
         ],
         "text": "p source"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssrcc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          420.0,
          70.0,
          200.0,
          20.0
         ],
         "text": "20 ms fades between sources"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-shzc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          640.0,
          18.0,
          60.0,
          20.0
         ],
         "text": "hum Hz"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-shzlm",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640.0,
          40.0,
          100.0,
          22.0
         ],
         "text": "loadmess 60.02"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-shz",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          640.0,
          70.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-slvc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          750.0,
          18.0,
          90.0,
          20.0
         ],
         "text": "hum level 0-1"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-slvlm",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          750.0,
          40.0,
          90.0,
          22.0
         ],
         "text": "loadmess 0.3"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-slv",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          750.0,
          70.0,
          60.0,
          22.0
         ],
         "minimum": 0.0,
         "maximum": 1.0
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-shum",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          640.0,
          105.0,
          120.0,
          22.0
         ],
         "text": "p hum",
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
           100.0,
           150.0,
           520.0,
           240.0
          ],
          "boxes": [
           {
            "box": {
             "comment": "Hum frequency (Float) Hz",
             "id": "obj-1",
             "index": 1,
             "maxclass": "inlet",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              ""
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
             "comment": "Hum level (Float) 0 - 1",
             "id": "obj-2",
             "index": 2,
             "maxclass": "inlet",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              200.0,
              15.0,
              30.0,
              30.0
             ]
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-3",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              60.0,
              40.0,
              22.0
             ],
             "text": "sig~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-4",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              95.0,
              50.0,
              22.0
             ],
             "text": "gen~",
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
               640.0,
               420.0
              ],
              "boxes": [
               {
                "box": {
                 "fontname": "Arial",
                 "fontsize": 12.0,
                 "id": "obj-1",
                 "maxclass": "newobj",
                 "numinlets": 0,
                 "numoutlets": 1,
                 "outlettype": [
                  ""
                 ],
                 "patching_rect": [
                  50.0,
                  20.0,
                  150.0,
                  22.0
                 ],
                 "text": "in 1 @comment Hum Hz"
                }
               },
               {
                "box": {
                 "code": "// fake mains hum for the example: 12 harmonics, odd ones louder (like transformer hum)\n// in1 hum frequency Hz, out1 the hum, peak about 0.6\nHistory ph(0);\np0 = ph;\ny = 0;\na = 0;\nfor (k = 1; k <= 12; k += 1) {\n    a = (k % 2) > 0.5 ? 1 / k : 0.4 / k;\n    y = y + a * sin(twopi * k * p0);\n}\nout1 = y * 0.35;\nph = wrap(p0 + in1 / samplerate, 0, 1);\n",
                 "fontface": 0,
                 "fontname": "<Monospaced>",
                 "fontsize": 12.0,
                 "id": "obj-2",
                 "maxclass": "codebox",
                 "numinlets": 1,
                 "numoutlets": 1,
                 "outlettype": [
                  ""
                 ],
                 "patching_rect": [
                  50.0,
                  60.0,
                  520.0,
                  260.0
                 ]
                }
               },
               {
                "box": {
                 "fontname": "Arial",
                 "fontsize": 12.0,
                 "id": "obj-3",
                 "maxclass": "newobj",
                 "numinlets": 1,
                 "numoutlets": 0,
                 "outlettype": [],
                 "patching_rect": [
                  50.0,
                  340.0,
                  120.0,
                  22.0
                 ],
                 "text": "out 1 @comment Hum"
                }
               }
              ],
              "lines": [
               {
                "patchline": {
                 "source": [
                  "obj-1",
                  0
                 ],
                 "destination": [
                  "obj-2",
                  0
                 ]
                }
               },
               {
                "patchline": {
                 "source": [
                  "obj-2",
                  0
                 ],
                 "destination": [
                  "obj-3",
                  0
                 ]
                }
               }
              ]
             }
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-5",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              200.0,
              60.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-6",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              200.0,
              95.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-7",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              135.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "comment": "Hum (Signal)",
             "id": "obj-8",
             "index": 1,
             "maxclass": "outlet",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              15.0,
              175.0,
              30.0,
              30.0
             ]
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-9",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              70.0,
              95.0,
              420.0,
              20.0
             ],
             "text": "gen~: a phasor and 12 sines, odd harmonics louder, like transformer hum"
            }
           }
          ],
          "lines": [
           {
            "patchline": {
             "source": [
              "obj-1",
              0
             ],
             "destination": [
              "obj-3",
              0
             ]
            }
           },
           {
            "patchline": {
             "source": [
              "obj-3",
              0
             ],
             "destination": [
              "obj-4",
              0
             ]
            }
           },
           {
            "patchline": {
             "source": [
              "obj-4",
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
              "obj-2",
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
              "obj-6",
              0
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
              "obj-8",
              0
             ]
            }
           }
          ]
         }
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssum",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          340.0,
          145.0,
          40.0,
          22.0
         ],
         "text": "+~"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssumc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          385.0,
          145.0,
          100.0,
          20.0
         ],
         "text": "source + hum"
        }
       },
       {
        "box": {
         "bgmode": 0,
         "border": 0,
         "clickthrough": 0,
         "enablehscroll": 0,
         "enablevscroll": 0,
         "id": "obj-ui",
         "lockeddragscroll": 0,
         "lockedsize": 0,
         "maxclass": "bpatcher",
         "name": "br.dehum.ui.1.0.maxpat",
         "numinlets": 10,
         "numoutlets": 3,
         "offset": [
          0.0,
          0.0
         ],
         "outlettype": [
          "signal",
          "signal",
          ""
         ],
         "patching_rect": [
          340.0,
          190.0,
          300.0,
          82.0
         ],
         "viewvisibility": 1
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-uic",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          645.0,
          190.0,
          120.0,
          20.0
         ],
         "text": "br.dehum.ui.1.0"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-bc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700.0,
          300.0,
          60.0,
          20.0
         ],
         "text": "before"
        }
       },
       {
        "box": {
         "domain": [
          20.0,
          2000.0
         ],
         "id": "obj-before",
         "logfreq": 1,
         "maxclass": "spectroscope~",
         "numinlets": 2,
         "numoutlets": 0,
         "patching_rect": [
          700.0,
          320.0,
          280.0,
          110.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ac",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700.0,
          440.0,
          200.0,
          20.0
         ],
         "text": "after (Left out), 20 - 2000 Hz"
        }
       },
       {
        "box": {
         "domain": [
          20.0,
          2000.0
         ],
         "id": "obj-after",
         "logfreq": 1,
         "maxclass": "spectroscope~",
         "numinlets": 2,
         "numoutlets": 0,
         "patching_rect": [
          700.0,
          460.0,
          280.0,
          110.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-ogain",
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
          340.0,
          300.0,
          48.0,
          136.0
         ],
         "saved_attribute_attributes": {
          "valueof": {
           "parameter_initial": [
            -70.0
           ],
           "parameter_initial_enable": 1,
           "parameter_longname": "Out dehum",
           "parameter_mmax": 6.0,
           "parameter_mmin": -70.0,
           "parameter_modmode": 3,
           "parameter_shortname": "Out",
           "parameter_type": 0,
           "parameter_unitstyle": 4
          }
         },
         "varname": "out_dehum"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ogainc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          395.0,
          300.0,
          200.0,
          20.0
         ],
         "text": "starts muted: raise slowly"
        }
       },
       {
        "box": {
         "id": "obj-otog",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          395.0,
          330.0,
          24.0,
          24.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-otogc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          425.0,
          330.0,
          100.0,
          20.0
         ],
         "text": "audio on/off"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-odac",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          340.0,
          450.0,
          72.0,
          22.0
         ],
         "text": "dac~ 1 2"
        }
       },
       {
        "box": {
         "comment": "State of br.dehum (to the State outlet tab)",
         "id": "obj-state",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          660.0,
          245.0,
          30.0,
          30.0
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-smenulm",
          0
         ],
         "destination": [
          "obj-smenu",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-smenu",
          0
         ],
         "destination": [
          "obj-ssrc",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-shzlm",
          0
         ],
         "destination": [
          "obj-shz",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-slvlm",
          0
         ],
         "destination": [
          "obj-slv",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-shz",
          0
         ],
         "destination": [
          "obj-shum",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-slv",
          0
         ],
         "destination": [
          "obj-shum",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ssrc",
          0
         ],
         "destination": [
          "obj-ssum",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-shum",
          0
         ],
         "destination": [
          "obj-ssum",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ssum",
          0
         ],
         "destination": [
          "obj-ui",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ssum",
          0
         ],
         "destination": [
          "obj-ui",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ssum",
          0
         ],
         "destination": [
          "obj-before",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ui",
          0
         ],
         "destination": [
          "obj-after",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ui",
          0
         ],
         "destination": [
          "obj-ogain",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ui",
          1
         ],
         "destination": [
          "obj-ogain",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ogain",
          0
         ],
         "destination": [
          "obj-odac",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ogain",
          1
         ],
         "destination": [
          "obj-odac",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-otog",
          0
         ],
         "destination": [
          "obj-odac",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ui",
          2
         ],
         "destination": [
          "obj-state",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-tab2",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      105.0,
      360.0,
      110.0,
      22.0
     ],
     "text": "p \"plain object\"",
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
       0.0,
       26.0,
       1000.0,
       614.0
      ],
      "showontab": 1,
      "boxes": [
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 18.0,
         "id": "obj-1",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          15.0,
          200.0,
          27.0
         ],
         "text": "plain object"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-2",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          51.0,
          290.0,
          74.0
         ],
         "text": "br.dehum.1.0 is the hum remover with no dials: every control inlet goes straight into gen~, so it takes numbers or signals. Use it inside your own patches; use the .ui in a bpatcher.",
         "linecount": 5
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-3",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          135.0,
          290.0,
          60.0
         ],
         "text": "Unconnected inlets sit at the defaults: On, 60 Hz, Fine 0, 4 harmonics, Q 30, Depth 100, Tilt 0, Odd/Even 0. Here the numbers set 8 harmonics and Fine 0.02.",
         "linecount": 4
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-4",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          15.0,
          205.0,
          290.0,
          33.0
         ],
         "text": "Every control glides inside gen~, so typed jumps never click.",
         "linecount": 2
        }
       },
       {
        "box": {
         "id": "obj-smenu",
         "items": [
          "drum loop",
          ",",
          "Anton",
          ",",
          "uneven plucks",
          ",",
          "mic (adc~ 1)"
         ],
         "maxclass": "umenu",
         "numinlets": 1,
         "numoutlets": 3,
         "outlettype": [
          "int",
          "",
          ""
         ],
         "parameter_enable": 0,
         "patching_rect": [
          340.0,
          40.0,
          130.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-smenulm",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          480.0,
          40.0,
          80.0,
          22.0
         ],
         "text": "loadmess 1"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-smenuc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          565.0,
          40.0,
          60.0,
          20.0
         ],
         "text": "source"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssrc",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "signal"
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
          "classnamespace": "box",
          "rect": [
           100.0,
           100.0,
           400.0,
           300.0
          ],
          "boxes": [
           {
            "box": {
             "comment": "Source (Int) 0 drum loop, 1 voice, 2 uneven plucks, 3 mic",
             "id": "obj-1",
             "index": 1,
             "maxclass": "inlet",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              "int"
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
             "comment": "Source (Signal) mono",
             "id": "obj-2",
             "index": 1,
             "maxclass": "outlet",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              15.0,
              490.0,
              30.0,
              30.0
             ]
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-3",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 4,
             "outlettype": [
              "int",
              "int",
              "int",
              "int"
             ],
             "patching_rect": [
              15.0,
              50.0,
              79.0,
              22.0
             ],
             "text": "t i i i i"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-4",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "bang"
             ],
             "patching_rect": [
              470.0,
              15.0,
              72.0,
              22.0
             ],
             "text": "loadbang"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-5",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              15.0,
              110.0,
              212.0,
              22.0
             ],
             "text": "open drumLoop.aif, loop 1, 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-6",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              15.0,
              140.0,
              79.0,
              22.0
             ],
             "text": "sfplay~ 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-7",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              240.0,
              110.0,
              191.0,
              22.0
             ],
             "text": "open anton.aif, loop 1, 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-8",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              240.0,
              140.0,
              79.0,
              22.0
             ],
             "text": "sfplay~ 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-9",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 3,
             "outlettype": [
              "bang",
              "bang",
              "bang"
             ],
             "patching_rect": [
              470.0,
              45.0,
              65.0,
              22.0
             ],
             "text": "t b b b"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-10",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              15.0,
              80.0,
              260.0,
              20.0
             ],
             "text": "drumLoop.aif and anton.aif ship with Max"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-11",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              80.0,
              40.0,
              22.0
             ],
             "text": "1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-12",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "bang"
             ],
             "patching_rect": [
              470.0,
              110.0,
              79.0,
              22.0
             ],
             "text": "metro 180"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-13",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 2,
             "outlettype": [
              "bang",
              "bang"
             ],
             "patching_rect": [
              470.0,
              140.0,
              51.0,
              22.0
             ],
             "text": "t b b"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-14",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              170.0,
              86.0,
              22.0
             ],
             "text": "random 100"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-15",
             "maxclass": "newobj",
             "numinlets": 6,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              200.0,
              142.0,
              22.0
             ],
             "text": "scale 0 99 0.03 1."
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-16",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              470.0,
              230.0,
              93.0,
              22.0
             ],
             "text": "$1 1 0. 220"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-17",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              470.0,
              260.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-18",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              630.0,
              170.0,
              79.0,
              22.0
             ],
             "text": "random 12"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-19",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              630.0,
              200.0,
              44.0,
              22.0
             ],
             "text": "+ 48"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-20",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              630.0,
              230.0,
              44.0,
              22.0
             ],
             "text": "mtof"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-21",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              630.0,
              260.0,
              44.0,
              22.0
             ],
             "text": "saw~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-22",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              470.0,
              290.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-23",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              560.0,
              80.0,
              400.0,
              20.0
             ],
             "text": "plucks at random levels (-30 to 0 dB): the comp evens them out"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-24",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              700.0,
              290.0,
              58.0,
              22.0
             ],
             "text": "adc~ 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-25",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              85.0,
              180.0,
              44.0,
              22.0
             ],
             "text": "== 0"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-26",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              85.0,
              210.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-27",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              85.0,
              240.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-28",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              270.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-29",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              310.0,
              180.0,
              44.0,
              22.0
             ],
             "text": "== 1"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-30",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              310.0,
              210.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-31",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              310.0,
              240.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-32",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              240.0,
              270.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-33",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              540.0,
              330.0,
              44.0,
              22.0
             ],
             "text": "== 2"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-34",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              540.0,
              355.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-35",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              540.0,
              380.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-36",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              470.0,
              410.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-37",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "int"
             ],
             "patching_rect": [
              770.0,
              330.0,
              44.0,
              22.0
             ],
             "text": "== 3"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-38",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              770.0,
              355.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-39",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              770.0,
              380.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-40",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              700.0,
              410.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-41",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              450.0,
              58.0,
              22.0
             ],
             "text": "*~ 0.7"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-42",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              80.0,
              450.0,
              480.0,
              20.0
             ],
             "text": "each source has its own 20 ms fade: switching never clicks (selector~ would)"
            }
           }
          ],
          "lines": [
           {
            "patchline": {
             "destination": [
              "obj-3",
              0
             ],
             "source": [
              "obj-1",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-12",
              0
             ],
             "source": [
              "obj-11",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-13",
              0
             ],
             "source": [
              "obj-12",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-14",
              0
             ],
             "source": [
              "obj-13",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-18",
              0
             ],
             "source": [
              "obj-13",
              1
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-15",
              0
             ],
             "source": [
              "obj-14",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-16",
              0
             ],
             "source": [
              "obj-15",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-17",
              0
             ],
             "source": [
              "obj-16",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-22",
              0
             ],
             "source": [
              "obj-17",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-19",
              0
             ],
             "source": [
              "obj-18",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-20",
              0
             ],
             "source": [
              "obj-19",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-21",
              0
             ],
             "source": [
              "obj-20",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-22",
              1
             ],
             "source": [
              "obj-21",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-36",
              0
             ],
             "source": [
              "obj-22",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-40",
              0
             ],
             "source": [
              "obj-24",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-26",
              0
             ],
             "source": [
              "obj-25",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-27",
              0
             ],
             "source": [
              "obj-26",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-28",
              1
             ],
             "source": [
              "obj-27",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-28",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-30",
              0
             ],
             "source": [
              "obj-29",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-25",
              0
             ],
             "source": [
              "obj-3",
              3
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-29",
              0
             ],
             "source": [
              "obj-3",
              2
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-33",
              0
             ],
             "source": [
              "obj-3",
              1
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-37",
              0
             ],
             "source": [
              "obj-3",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-31",
              0
             ],
             "source": [
              "obj-30",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-32",
              1
             ],
             "source": [
              "obj-31",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-32",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-34",
              0
             ],
             "source": [
              "obj-33",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-35",
              0
             ],
             "source": [
              "obj-34",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-36",
              1
             ],
             "source": [
              "obj-35",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-36",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-38",
              0
             ],
             "source": [
              "obj-37",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-39",
              0
             ],
             "source": [
              "obj-38",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-40",
              1
             ],
             "source": [
              "obj-39",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-9",
              0
             ],
             "source": [
              "obj-4",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-41",
              0
             ],
             "source": [
              "obj-40",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-2",
              0
             ],
             "source": [
              "obj-41",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-6",
              0
             ],
             "source": [
              "obj-5",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-28",
              0
             ],
             "source": [
              "obj-6",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-8",
              0
             ],
             "source": [
              "obj-7",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-32",
              0
             ],
             "source": [
              "obj-8",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-11",
              0
             ],
             "source": [
              "obj-9",
              0
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-5",
              0
             ],
             "source": [
              "obj-9",
              2
             ]
            }
           },
           {
            "patchline": {
             "destination": [
              "obj-7",
              0
             ],
             "source": [
              "obj-9",
              1
             ]
            }
           }
          ]
         },
         "patching_rect": [
          340.0,
          70.0,
          72.0,
          22.0
         ],
         "text": "p source"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssrcc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          420.0,
          70.0,
          200.0,
          20.0
         ],
         "text": "20 ms fades between sources"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-shzc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          640.0,
          18.0,
          60.0,
          20.0
         ],
         "text": "hum Hz"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-shzlm",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640.0,
          40.0,
          100.0,
          22.0
         ],
         "text": "loadmess 60.02"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-shz",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          640.0,
          70.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-slvc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          750.0,
          18.0,
          90.0,
          20.0
         ],
         "text": "hum level 0-1"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-slvlm",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          750.0,
          40.0,
          90.0,
          22.0
         ],
         "text": "loadmess 0.3"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-slv",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          750.0,
          70.0,
          60.0,
          22.0
         ],
         "minimum": 0.0,
         "maximum": 1.0
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-shum",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          640.0,
          105.0,
          120.0,
          22.0
         ],
         "text": "p hum",
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
           100.0,
           150.0,
           520.0,
           240.0
          ],
          "boxes": [
           {
            "box": {
             "comment": "Hum frequency (Float) Hz",
             "id": "obj-1",
             "index": 1,
             "maxclass": "inlet",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              ""
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
             "comment": "Hum level (Float) 0 - 1",
             "id": "obj-2",
             "index": 2,
             "maxclass": "inlet",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              200.0,
              15.0,
              30.0,
              30.0
             ]
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-3",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              60.0,
              40.0,
              22.0
             ],
             "text": "sig~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-4",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              95.0,
              50.0,
              22.0
             ],
             "text": "gen~",
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
               640.0,
               420.0
              ],
              "boxes": [
               {
                "box": {
                 "fontname": "Arial",
                 "fontsize": 12.0,
                 "id": "obj-1",
                 "maxclass": "newobj",
                 "numinlets": 0,
                 "numoutlets": 1,
                 "outlettype": [
                  ""
                 ],
                 "patching_rect": [
                  50.0,
                  20.0,
                  150.0,
                  22.0
                 ],
                 "text": "in 1 @comment Hum Hz"
                }
               },
               {
                "box": {
                 "code": "// fake mains hum for the example: 12 harmonics, odd ones louder (like transformer hum)\n// in1 hum frequency Hz, out1 the hum, peak about 0.6\nHistory ph(0);\np0 = ph;\ny = 0;\na = 0;\nfor (k = 1; k <= 12; k += 1) {\n    a = (k % 2) > 0.5 ? 1 / k : 0.4 / k;\n    y = y + a * sin(twopi * k * p0);\n}\nout1 = y * 0.35;\nph = wrap(p0 + in1 / samplerate, 0, 1);\n",
                 "fontface": 0,
                 "fontname": "<Monospaced>",
                 "fontsize": 12.0,
                 "id": "obj-2",
                 "maxclass": "codebox",
                 "numinlets": 1,
                 "numoutlets": 1,
                 "outlettype": [
                  ""
                 ],
                 "patching_rect": [
                  50.0,
                  60.0,
                  520.0,
                  260.0
                 ]
                }
               },
               {
                "box": {
                 "fontname": "Arial",
                 "fontsize": 12.0,
                 "id": "obj-3",
                 "maxclass": "newobj",
                 "numinlets": 1,
                 "numoutlets": 0,
                 "outlettype": [],
                 "patching_rect": [
                  50.0,
                  340.0,
                  120.0,
                  22.0
                 ],
                 "text": "out 1 @comment Hum"
                }
               }
              ],
              "lines": [
               {
                "patchline": {
                 "source": [
                  "obj-1",
                  0
                 ],
                 "destination": [
                  "obj-2",
                  0
                 ]
                }
               },
               {
                "patchline": {
                 "source": [
                  "obj-2",
                  0
                 ],
                 "destination": [
                  "obj-3",
                  0
                 ]
                }
               }
              ]
             }
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-5",
             "maxclass": "message",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              200.0,
              60.0,
              51.0,
              22.0
             ],
             "text": "$1 20"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-6",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 2,
             "outlettype": [
              "signal",
              "bang"
             ],
             "patching_rect": [
              200.0,
              95.0,
              51.0,
              22.0
             ],
             "text": "line~"
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-7",
             "maxclass": "newobj",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              "signal"
             ],
             "patching_rect": [
              15.0,
              135.0,
              40.0,
              22.0
             ],
             "text": "*~"
            }
           },
           {
            "box": {
             "comment": "Hum (Signal)",
             "id": "obj-8",
             "index": 1,
             "maxclass": "outlet",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              15.0,
              175.0,
              30.0,
              30.0
             ]
            }
           },
           {
            "box": {
             "fontname": "Arial",
             "fontsize": 12.0,
             "id": "obj-9",
             "maxclass": "comment",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              70.0,
              95.0,
              420.0,
              20.0
             ],
             "text": "gen~: a phasor and 12 sines, odd harmonics louder, like transformer hum"
            }
           }
          ],
          "lines": [
           {
            "patchline": {
             "source": [
              "obj-1",
              0
             ],
             "destination": [
              "obj-3",
              0
             ]
            }
           },
           {
            "patchline": {
             "source": [
              "obj-3",
              0
             ],
             "destination": [
              "obj-4",
              0
             ]
            }
           },
           {
            "patchline": {
             "source": [
              "obj-4",
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
              "obj-2",
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
              "obj-6",
              0
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
              "obj-8",
              0
             ]
            }
           }
          ]
         }
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssum",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          340.0,
          145.0,
          40.0,
          22.0
         ],
         "text": "+~"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ssumc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          385.0,
          145.0,
          100.0,
          20.0
         ],
         "text": "source + hum"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l0",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          420.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "On/Off"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m0",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          420.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 1"
        }
       },
       {
        "box": {
         "id": "obj-n0",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          420.0,
          200.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l1",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          490.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "Grid"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m1",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          490.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 1"
        }
       },
       {
        "box": {
         "id": "obj-n1",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          490.0,
          200.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l2",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          560.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "Fine"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m2",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          560.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 0.02"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n2",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          560.0,
          200.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l3",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          630.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "Harmonics"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m3",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          630.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 8"
        }
       },
       {
        "box": {
         "id": "obj-n3",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          630.0,
          200.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l4",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "Q"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m4",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          700.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 30"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n4",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          700.0,
          200.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l5",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          770.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "Depth"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m5",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          770.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 100"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n5",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          770.0,
          200.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l6",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          840.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "Tilt"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m6",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          840.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 0"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n6",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          840.0,
          200.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l7",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          910.0,
          150.0,
          68.0,
          20.0
         ],
         "text": "Odd/Even"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-m7",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          910.0,
          172.0,
          66.0,
          22.0
         ],
         "text": "loadmess 0"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n7",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          910.0,
          200.0,
          50.0,
          22.0
         ]
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
          340.0,
          240.0,
          620.0,
          22.0
         ],
         "text": "br.dehum.1.0"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-corec",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500.0,
          268.0,
          200.0,
          20.0
         ],
         "text": "br.dehum.1.0 (plain object)"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ac",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700.0,
          300.0,
          200.0,
          20.0
         ],
         "text": "after (Left out), 20 - 2000 Hz"
        }
       },
       {
        "box": {
         "domain": [
          20.0,
          2000.0
         ],
         "id": "obj-after",
         "logfreq": 1,
         "maxclass": "spectroscope~",
         "numinlets": 2,
         "numoutlets": 0,
         "patching_rect": [
          700.0,
          320.0,
          280.0,
          110.0
         ]
        }
       },
       {
        "box": {
         "id": "obj-ogain",
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
          340.0,
          300.0,
          48.0,
          136.0
         ],
         "saved_attribute_attributes": {
          "valueof": {
           "parameter_initial": [
            -70.0
           ],
           "parameter_initial_enable": 1,
           "parameter_longname": "Out plain",
           "parameter_mmax": 6.0,
           "parameter_mmin": -70.0,
           "parameter_modmode": 3,
           "parameter_shortname": "Out",
           "parameter_type": 0,
           "parameter_unitstyle": 4
          }
         },
         "varname": "out_plain"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-ogainc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          395.0,
          300.0,
          200.0,
          20.0
         ],
         "text": "starts muted: raise slowly"
        }
       },
       {
        "box": {
         "id": "obj-otog",
         "maxclass": "toggle",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          395.0,
          330.0,
          24.0,
          24.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-otogc",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          425.0,
          330.0,
          100.0,
          20.0
         ],
         "text": "audio on/off"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-odac",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          340.0,
          450.0,
          72.0,
          22.0
         ],
         "text": "dac~ 1 2"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-smenulm",
          0
         ],
         "destination": [
          "obj-smenu",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-smenu",
          0
         ],
         "destination": [
          "obj-ssrc",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-shzlm",
          0
         ],
         "destination": [
          "obj-shz",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-slvlm",
          0
         ],
         "destination": [
          "obj-slv",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-shz",
          0
         ],
         "destination": [
          "obj-shum",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-slv",
          0
         ],
         "destination": [
          "obj-shum",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ssrc",
          0
         ],
         "destination": [
          "obj-ssum",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-shum",
          0
         ],
         "destination": [
          "obj-ssum",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-m0",
          0
         ],
         "destination": [
          "obj-n0",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n0",
          0
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
          "obj-m1",
          0
         ],
         "destination": [
          "obj-n1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n1",
          0
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
          "obj-m2",
          0
         ],
         "destination": [
          "obj-n2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n2",
          0
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
          "obj-m3",
          0
         ],
         "destination": [
          "obj-n3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n3",
          0
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
          "obj-m4",
          0
         ],
         "destination": [
          "obj-n4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n4",
          0
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
          "obj-m5",
          0
         ],
         "destination": [
          "obj-n5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n5",
          0
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
          "obj-m6",
          0
         ],
         "destination": [
          "obj-n6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n6",
          0
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
          "obj-m7",
          0
         ],
         "destination": [
          "obj-n7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-n7",
          0
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
          "obj-ssum",
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
          "obj-ssum",
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
          "obj-core",
          0
         ],
         "destination": [
          "obj-after",
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
          "obj-ogain",
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
          "obj-ogain",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ogain",
          0
         ],
         "destination": [
          "obj-odac",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ogain",
          1
         ],
         "destination": [
          "obj-odac",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-otog",
          0
         ],
         "destination": [
          "obj-odac",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-tab3",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      15.0,
      395.0,
      128.0,
      22.0
     ],
     "text": "p \"State outlet\"",
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
       0.0,
       26.0,
       1000.0,
       614.0
      ],
      "showontab": 1,
      "boxes": [
       {
        "box": {
         "comment": "State from the dehum tab",
         "id": "obj-1",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30.0,
          95.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-2",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30.0,
          15.0,
          600.0,
          47.0
         ],
         "text": "br.dehum.ui sends its state out of its LAST outlet as named messages, the moment a control changes (turn a dial on the dehum tab). Pick them out by name with route.",
         "linecount": 3
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-3",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          70.0,
          100.0,
          200.0,
          20.0
         ],
         "text": "the dehum tab"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-4",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 9,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          30.0,
          135.0,
          560.0,
          22.0
         ],
         "text": "route on grid fine harmonics q depth tilt oddeven"
        }
       },
       {
        "box": {
         "id": "obj-n0",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          30.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l0",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "on"
        }
       },
       {
        "box": {
         "id": "obj-n1",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          100.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l1",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          100.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "grid"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n2",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          170.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l2",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          170.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "fine"
        }
       },
       {
        "box": {
         "id": "obj-n3",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          240.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l3",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          240.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "harmonics"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n4",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          310.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l4",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          310.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "q"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n5",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          380.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l5",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "depth"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n6",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          450.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l6",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          450.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "tilt"
        }
       },
       {
        "box": {
         "format": 6,
         "id": "obj-n7",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          520.0,
          170.0,
          50.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-l7",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520.0,
          195.0,
          68.0,
          20.0
         ],
         "text": "oddeven"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-1",
          0
         ],
         "destination": [
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          0
         ],
         "destination": [
          "obj-n0",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          1
         ],
         "destination": [
          "obj-n1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          2
         ],
         "destination": [
          "obj-n2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          3
         ],
         "destination": [
          "obj-n3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          4
         ],
         "destination": [
          "obj-n4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          5
         ],
         "destination": [
          "obj-n5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          6
         ],
         "destination": [
          "obj-n6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          7
         ],
         "destination": [
          "obj-n7",
          0
         ]
        }
       }
      ]
     }
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-tab1",
      0
     ],
     "destination": [
      "obj-tab3",
      0
     ]
    }
   }
  ]
 }
}