Erase all
Create Sound from formula: "whitenoise", 1, 0, 10, 44100, "randomGauss(0,0.2)"
To Spectrum: "no"
Select outer viewport: 0, 3.5, 0, 2.5
Draw: 0, 0, 20, 50, "no"
Draw inner box
Marks bottom every: 1000, 10, "yes", "yes", "no"
Text left: "yes", "Relative amplitude"

selectObject: "Sound whitenoise"
Filter (de-emphasis): 50
Select outer viewport: 2.5, 6, 0, 2.5
To Spectrum: "no"
Draw: 0, 0, 20, 50, "no"
Draw inner box
Marks bottom every: 1000, 10, "yes", "yes", "no"
Select outer viewport: 0, 6, 0, 2.5
Text bottom: "yes", "Frequency (kHz)"
Save as 600-dpi PNG file: "/Users/Hugo/SURFdrive/colleges/phonetics/TPhSA-EN/figures/whitebrownnoises.png"
