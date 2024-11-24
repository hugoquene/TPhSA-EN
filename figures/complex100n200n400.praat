Erase all
Create Sound from formula: "complex100n200n400", 1, 0, 1, 44100, "0.5*sin(2*pi*100*x) + 0.4*sin(2*pi*200*x) + 0.2*sin(2*pi*400*x)"
Select outer viewport: 0, 4, 0, 2.5
Line width... 1
Draw: 0, 0.04, -0.9, 0.9, "yes", "curve"
Text left: "yes", "Amplitude"
Select outer viewport: 3, 6, 0, 2.5
To Spectrum: "no"
Draw (log freq): 50, 1000, 60, 88, "no"
Draw inner box
Text right: "yes", "Relative amplitude (dB)"
Marks right every: 1, 10, "yes", "yes", "no"
One mark bottom: 2, "no", "yes", "no", "100"
One mark bottom: 2.30103, "no", "yes", "no", "200"
One mark bottom: 2.60206, "no", "yes", "no", "400"
Text bottom: "yes", "Frequency (Hz)"
Select outer viewport: 0, 6, 0, 2.5
Save as 600-dpi PNG file: "/Users/Hugo/SURFdrive/colleges/phonetics/TPhSA-EN/figures/complex100n200n400.png"
