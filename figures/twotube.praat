# twotube.praat
# HQ 20241227
# draw a figure similar to Stevens 1989, Fig.3.13(p.143)
Erase all
Select outer viewport: 0, 5.5, 0, 2
Axes: 0, 17, 0, 4
Line width: 3
Draw line: 0, 1, 7, 1
Draw line: 0, 2, 7, 2
Draw line: 0, 1, 0, 2
Draw line: 7, 1, 7, 0
Draw line: 7, 2, 7, 3
Draw line: 7, 0, 17, 0
Draw line: 7, 3, 17, 3
# Draw line: 0, 0, 0, 2
Line width: 1
# L marks
Draw two-way arrow: 0, -0.5, 7, -0.5
Text: 3.5, "centre", -1.0, "half", "L_1"
Draw two-way arrow: 7, -0.5, 17, -0.5
Text: 12.0, "centre", -1.0, "half", "L_2"
# A marks
Draw ellipse: 3.2, 3.8, 1, 2
Draw ellipse: 11.8, 12.8, 0, 3
Draw arrow: 5.0, 3.5, 3.5, 1.5
Text: 5.2, "left", 3.5, "half", "A_1"
Draw arrow: 14.0, 3.5, 12.5, 1.5
Text: 14.2, "left", 3.5, "half", "A_2"
Save as 600-dpi PNG file: "/Users/Hugo/SURFdrive/colleges/phonetics/TPhSA-EN/figures/twotube.png"
