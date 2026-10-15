# Max/MSP RNBO Patch for External Creation: br.dehum.rnbo.1.0  
   
By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.dehum.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.dehum](https://github.com/guaguanco127/br.dehum)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[How To Export as a Max/MSP External](#Export)  
[A Note on VST and AU Plugins](#VST)  
[Credits](#Credits) 

## <a name="About"></a>About

A stereo hum remover for live input: razor-thin notches on the 50 or 60 Hz mains hum and up to 24 of its harmonics, with Fine tune, Q, Depth, Tilt and Odd/Even controls, all click-free.

Inside [rnbo~], On, Grid, Fine, Harmonics, Q, Depth, Tilt and Odd_Even are params, and inlets 3 to 10 set the same params, so the external has the same inlets and outlets as the plain abstraction br.dehum.1.0: L, R, the eight controls / L, R. Grid is 0 = 50 Hz, 1 = 60 Hz; Depth, Tilt and Odd_Even are in %, as on the abstraction. The gen~ code inside is the same as br.dehum.1.0, so you can also copy it into your own RNBO patches. To try it, drop a sample with hum into the [playlist~], set Grid, and nudge Fine with the attrui controls until the hum is lowest.

There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.dehum.rnbo.1.0.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.dehum.1.0~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.dehum.1.0, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.dehum.1.0~ in any patch. It has the same inlets and outlets as the plain abstraction br.dehum.1.0, except that the controls take numbers only.

## <a name="VST"></a>A Note on VST and AU Plugins

RNBO can also export this patch as a VST3 or AU plugin (Export Sidebar > Audio Plugin Export). The eight params become the plugin's parameters, so you can use the same hum remover on a live input in your DAW.

## <a name="Credits"></a>Credits

Each notch is a trapezoidal (topology-preserving transform) state-variable filter after Andrew Simper, Cytomic, "Solving the continuous SVF equations using trapezoidal integration and equivalent currents" (2013).
