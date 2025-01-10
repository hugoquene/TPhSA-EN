# spectrogram 5 ms
Read from file: "/Users/Hugo/SURFdrive/colleges/phonetics/TPhSA-EN/figures/speech_word.wav"
selectObject: "Sound speech_word"
Erase all
# there is a Spectrum object, a spectral slice centered at t=0.210 s
# and window length 0.015 ms
View & Edit
# oscillogram
Select outer viewport: 0, 6, 0, 1.5
Draw: 0, 0, 0, 0, "no", "curve"
Draw inner box
Marks bottom every: 1, 0.1, "yes", "yes", "yes"
Text left: "yes", "Amplitude"
One mark bottom: 0.21, "no", "yes", "yes", ""
One mark top: 0.21, "yes", "yes", "yes", ""
# spectrum
selectObject: "Spectrum speech_word_0_210_5ms"
Select outer viewport: 2.5, 5, 1, 3
Draw: 0, 5000, 0, 0, "no"
Draw inner box
Text bottom: "yes", "Frequency (kHz)"
Text left: "yes", "Amplitude"
Marks bottom every: 1000, 1, "yes", "yes", "yes"
# make spectrogram
selectObject: "Sound speech_word"
To Spectrogram: 0.005, 5000, 0.002, 20, "Gaussian"
Rename: "speech_word_5ms"
Select outer viewport: 0, 6, 2.5, 6
Paint: 0, 0, 0, 0, 100, "yes", 50, 6, 0, "no"
Draw inner box
Text left: "yes", "Frequency (kHz)"
Marks left every: 1000, 1, "yes", "yes", "yes"
Text bottom: "yes", "Time (s)"
Marks bottom every: 1, 0.1, "yes", "yes", "yes"
One mark bottom: 0.21, "no", "yes", "yes", ""
# entire figure
Select outer viewport: 2.5, 5, 1, 3
# New Praat script
