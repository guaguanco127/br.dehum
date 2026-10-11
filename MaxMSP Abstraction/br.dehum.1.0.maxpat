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
   400.0
  ],
  "openinpresentation": 0,
  "description": "br.dehum.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
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
     "text": "br.dehum.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: each notch is a trapezoidal (TPT) state-variable filter after Andrew Simper, Cytomic, \"Solving the continuous SVF equations using trapezoidal integration and equivalent currents\" (2013).",
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
     "comment": "On/Off (Signal/Int) 0/1. 1 = remove the hum, 0 = the input passes untouched (20 ms crossfade, then the notches stop computing). Default 1",
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
     "comment": "Grid (Signal/Int) 0/1. The mains frequency where you play: 0 = 50 Hz (Europe, most of Asia, Africa, Australia), 1 = 60 Hz (North America, parts of South America, Korea, Taiwan...). Default 1",
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
     "comment": "Fine (Signal/Float) -3 - 3 Hz. Added to the grid frequency to land the notches exactly on the hum; nudge it until the hum is lowest. Default 0",
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
     "comment": "Harmonics (Signal/Float) 1 - 24. How many multiples of the hum get a notch: 1 = the fundamental only, 4 = 60/120/180/240 Hz on a 60 Hz grid. Each new notch fades in, no click. Default 4",
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
     "comment": "Q (Signal/Float) 5 - 200. Notch thinness, the same for every notch: higher = thinner and touches less music, but the hum must be closer to the notch. 30 = about 2 Hz wide at 60 Hz. Default 30",
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
     "comment": "Depth (Signal/Float) 0 - 100 %. How much each notch cuts: 50 = -12 dB, 90 = -40 dB, 100 = a full null. Default 100",
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
     "comment": "Tilt (Signal/Float) 0 - 100 %. Eases the cut on the higher harmonics: 0 = every notch at full Depth, 100 = each one cuts much less than the one below. Default 0",
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
     "comment": "Odd/Even (Signal/Float) -100 - 100 %. -100 = odd harmonics only (60, 180, 300 Hz: transformer and pickup hum), 0 = all, 100 = even only (120, 240 Hz: power-supply buzz). Default 0",
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
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-gen",
     "maxclass": "newobj",
     "numinlets": 10,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      15.0,
      80.0,
      720.0,
      22.0
     ],
     "text": "gen~ @title br.dehum.1.0",
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
     },
     "varname": "br_dehum"
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
      130.0,
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
      705.0,
      130.0,
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
      180.0,
      560.0,
      60.0
     ],
     "text": "The plain object: every control inlet goes straight into gen~, so it takes numbers OR signals. Unconnected inlets sit at the defaults; every control glides inside gen~ (30-100 ms), so jumps never click. One notch per harmonic, in a chain; the same Q for every notch. [br.dehum.ui.1.0] wraps this file with dials and the State outlet.",
     "linecount": 4
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
      "obj-gen",
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
      "obj-gen",
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
      "obj-gen",
      2
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
      "obj-gen",
      3
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
      "obj-gen",
      4
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
      "obj-gen",
      5
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
      "obj-gen",
      6
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
      "obj-gen",
      7
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
      "obj-gen",
      8
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
      "obj-o1",
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
      "obj-o2",
      0
     ]
    }
   }
  ]
 }
}