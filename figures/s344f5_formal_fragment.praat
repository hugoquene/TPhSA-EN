# draw oscillogram and textgrid of sentence containing significant pauses
# fragment from sound file: 
#   /Users/Hugo/SURFdrive/onderzoek/LUCEA/MaxWitt/trimmed_recordings/R5_nonD-nonE/formal/s344f5-1_formal.wav
#   with times preserved
#   total duration is 6.973687944684144 seconds
# HQ 20250403
# 
# draw oscillogram, no garnish
selectObject: "Sound s344f5_formal_fragment"
Erase all
Font size: 10
Draw: 0, 0, -0.15, 0.15, "no", "curve"
# draw textgrid, no garnish
selectObject: "TextGrid s344f5_formal_fragment"
Draw: 0, 0, "yes", "yes", "no"
# add garnish
Draw inner box
Marks bottom every: 1, 1, "yes", "yes", "no"
Text bottom: "yes", "Time (s)"
Text left: "no", "Amplitude"
# Save as 600-dpi PNG file: "/Users/Hugo/SURFdrive/colleges/phonetics/TPhSA-EN/figures/s344f5_formal_fragment.png"
#
## line 	tmin 	tier 	text 	tmax		dur
## 1		82.027	word		pause	83.159	1.132
## 2		83.159	word		(8)		84.818
## 3		84.818	word		pause	85.398	0.580
## 4		85.398	word		(13)		89.001
