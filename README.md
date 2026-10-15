# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.dehum.1.0



By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.dehum.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.dehum](https://github.com/guaguanco127/br.dehum)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[State outlet](#State)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.dehum/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP  
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.dehum/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external or VST/AU plugin, or to reuse the code in your own RNBO patches (needs RNBO)  

You can use it as an abstraction within Max/MSP. With RNBO you can also build your own Max external or plugin from the included RNBO patch.

## <a name="About"></a>About

A stereo hum remover for Max/MSP, built in gen~ for live input (microphones, pickups, line inputs). It puts one razor-thin notch on the mains frequency (50 or 60 Hz, depending on where you play) and on up to 24 of its harmonics, so the hum and its buzzy overtones disappear while the music between them is left alone.

| Feature | What it does |
|---|---|
| 50 / 60 Hz grid | One switch for the mains frequency where you play, plus a Fine control (±3 Hz) to land exactly on the hum |
| Up to 24 harmonics | One notch per multiple of the hum: 60, 120, 180, 240 Hz and up |
| Q | How thin every notch is: thinner touches less music, wider forgives a drifting hum |
| Depth and Tilt | How hard the notches cut, and how much gentler they get on the higher harmonics |
| Odd/Even | Cut only the odd harmonics (transformer and pickup hum), only the even ones (power-supply buzz), or all |
| On/Off | Click-free bypass; when off, the filter stops computing |

**Constant Q:** Every notch has the same Q, so each one is wider in Hz the higher it sits. That matches the hum itself: if the hum is 0.1 Hz off at 60 Hz, its 20th harmonic is 2 Hz off at 1200 Hz, and still lands inside its notch.

**Click-free controls:** Every control glides inside gen~. Adding a harmonic fades its notch in, and On/Off is a 20 ms crossfade, so you can change anything while playing.

**Light on CPU:** The notch math is only redone while a control moves, only the notches in use run, Off skips the filter entirely, and a silent input stops all the work once the notches have rung out.

### Controls

**On/Off:** On removes the hum. Off passes the input untouched (a 20 ms crossfade) and stops the filter. The default is On.

**Grid:** 50 Hz or 60 Hz, the mains frequency where you play: 50 Hz in Europe and most of Asia, Africa and Australia; 60 Hz in North America, parts of South America, Korea and Taiwan. The default is 60 Hz.

**Fine:** -3 to 3 Hz, added to the grid frequency. The mains frequency is almost never exactly 50 or 60 Hz; nudge Fine until the hum is lowest. The higher the Q, the more this matters. The default is 0.

**Harmonics:** 1 to 24. How many multiples of the hum get a notch: 1 is the fundamental only; 4 is 60, 120, 180 and 240 Hz on a 60 Hz grid. Hum through guitar amps and dimmers can have many; a clean ground loop may need only a few. The default is 4.

**Q:** 5 to 200. How thin each notch is. Higher is thinner and touches less of the music, but the hum has to sit closer to the notch. 30 is about 2 Hz wide at 60 Hz. The dial is curved, so more of its travel covers the lower values. The default is 30.

**Depth:** 0 to 100 %. How much each notch cuts: 50 % is -12 dB, 90 % is -40 dB, 100 % is a full null. The default is 100.

**Tilt:** 0 to 100 %. Eases the cut on the higher harmonics: at 0 every notch cuts at full Depth; at 100 each harmonic is cut much less than the one below it. Use it when the overtones are faint and you want to touch them only lightly. The default is 0.

**Odd/Even:** -100 to 100 %. -100 cuts only the odd harmonics (60, 180, 300 Hz on a 60 Hz grid: typical transformer and pickup hum), 0 cuts all of them, 100 cuts only the even ones (120, 240 Hz: typical power-supply buzz). Leaving the harmonics that are not there untouched keeps more of the music. The default is 0.

The example patch (_br.dehum.example.1.0.maxpat) adds a fake hum to a drum loop, a voice, plucks or a microphone, with spectrum views before and after, plus a plain object tab and a State outlet tab.

## <a name="State"></a>State outlet

The last outlet of br.dehum.ui.1.0 (State) sends the current settings as named messages the moment they change, for example `grid 1`, `harmonics 8`, `q 30.`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route on grid fine harmonics q depth tilt oddeven], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| on | Int | 0 = off, 1 = on |
| grid | Int | 0 = 50 Hz, 1 = 60 Hz |
| fine | Float | Hz, -3 to 3 |
| harmonics | Int | 1 to 24 |
| q | Float | 5 to 200 |
| depth | Float | %, 0 to 100 |
| tilt | Float | %, 0 to 100 |
| oddeven | Float | %, -100 (odd only) to 100 (even only) |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The example patch has a State outlet tab that shows this.

## <a name="Credits"></a>Credits

Each notch is a trapezoidal (topology-preserving transform) state-variable filter after Andrew Simper, Cytomic, "Solving the continuous SVF equations using trapezoidal integration and equivalent currents" (2013). It stays accurate at 50 Hz with a high Q, where a standard biquad loses precision.
