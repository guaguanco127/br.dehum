# Max/MSP Abstractions:
## br.dehum.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.dehum.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.dehum](https://github.com/guaguanco127/br.dehum)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Credits](#Credits)



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

## <a name="Files"></a>Which file?

Both files have the same inlets and outlets in the same order (the .ui adds State as its last outlet), so either swaps in without rewiring:

| File | What it is |
|---|---|
| br.dehum.1.0 | The plain object, no UI. Control inlets take numbers or signals. Outlets: L, R |
| br.dehum.ui.1.0 | The same hum remover with controls and a State outlet, ready for a [bpatcher]. Controls take numbers |
| _br.dehum.example.1.0 | Example patch: open this first |

br.dehum.ui.1.0 contains br.dehum.1.0, so keep both files together. Open br.dehum.ui.1.0 in patching mode to see how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.

2. Copy br.dehum.1.0.maxpat and br.dehum.ui.1.0.maxpat into the same folder as the Max patch you are using (br.dehum.ui.1.0 uses br.dehum.1.0).

3. For the version with controls, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select br.dehum.ui.1.0.maxpat. Size the bpatcher to 300 x 82 to show all of the controls.

4. For the plain object, create an object called br.dehum.1.0 ([br.dehum.1.0], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

Every control has its own inlet, in the order listed below. On br.dehum.ui.1.0, sending a value to an inlet moves its on-screen control too, so the display always matches the sound. On br.dehum.1.0, every control inlet also takes a signal (Float/Int below = Signal too). Values outside a control's range are limited to that range. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio with hum | |
| 2 | Right In | Signal | audio with hum | |
| 3 | On/Off | Int | 0 / 1 | 1 |
| 4 | Grid | Int | 0 = 50 Hz, 1 = 60 Hz | 1 |
| 5 | Fine | Float | -3 - 3 Hz | 0 |
| 6 | Harmonics | Int (Float on the plain object) | 1 - 24 | 4 |
| 7 | Q | Float | 5 - 200 | 30 |
| 8 | Depth | Float | 0 - 100 % | 100 |
| 9 | Tilt | Float | 0 - 100 % | 0 |
| 10 | Odd/Even | Float | -100 - 100 % (-100 odd only, 100 even only) | 0 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out: audio without the hum | Signal |
| 2 | Right Out: audio without the hum | Signal |
| 3 | State (br.dehum.ui.1.0 only): the settings as named messages, see [State outlet](#State) | Message |

**Setting it up at soundcheck:**  
1. Set Grid to where you are playing.  
2. With the hum audible (the band quiet, the mic open), set Harmonics high (12 or more) and Depth to 100.  
3. Nudge Fine until the hum is lowest. Raise Q for thinner notches if it still nulls well; lower it if the hum keeps creeping back.  
4. Lower Harmonics until the hum just starts to come back, then add one or two. Fewer notches touch less of the music.  
5. Use Odd/Even and Tilt to leave alone the harmonics the hum does not have.

**Ideas:**  
- Mono: send the same signal into Left and Right and use one outlet.  
- Put it first in the chain, before compression: a compressor would pump on the hum.

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

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The example patch has a State outlet tab that shows this. The plain br.dehum.1.0 has no State outlet: whatever drives it already knows the values.

## <a name="Example"></a>Example Patch

Open _br.dehum.example.1.0.maxpat (keep it in the same folder as both br.dehum files). The first page introduces br.dehum; the tabs at the top hold the examples. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **dehum:** Pick a source (a drum loop, a voice, plucks or a microphone); a fake hum with 12 harmonics is added to it, at 60.02 Hz on purpose. With Fine at 0 the notches are 0.02 Hz off and some hum is left: nudge Fine to 0.02 and it vanishes. Raise Harmonics and watch the hum lines disappear one by one in the after view. Change the hum Hz and level to try other hums.  
- **plain object:** br.dehum.1.0 with no UI on the same source, set by number boxes (8 harmonics, Fine 0.02). Inlets left unconnected sit at their defaults.  
- **State outlet:** The dehum tab's settings, read by name with [route] into number boxes. Move a dial and its number follows.

## <a name="Credits"></a>Credits

Each notch is a trapezoidal (topology-preserving transform) state-variable filter after Andrew Simper, Cytomic, "Solving the continuous SVF equations using trapezoidal integration and equivalent currents" (2013). It stays accurate at 50 Hz with a high Q, where a standard biquad loses precision.
