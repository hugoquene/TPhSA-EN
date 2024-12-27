# threetube.praat
# HQ 20241227
# draw a figure similar to Johnson, Fig.5.3 (p.95)
Erase all
Select outer viewport: 0, 5.5, 0, 2
Axes: 0, 17, 0, 4
Line width: 3
# back
Draw line: 0, 0, 10, 0
Draw line: 0, 3, 10, 3
Draw line: 0, 0,  0, 3
# constriction
Draw line: 10, 0, 10, 1
Draw line: 10, 3, 10, 2
Draw line: 10, 1, 12, 1
Draw line: 10, 2, 12, 2
Draw line: 12, 1, 12, 0
Draw line: 12, 2, 12, 3
# front
Draw line: 12, 0, 17, 0
Draw line: 12, 3, 17, 3
Line width: 1
# L marks
Draw two-way arrow: 0, -0.5, 10, -0.5
Text: 5.0, "centre", -1.0, "half", "L_b"
Draw two-way arrow: 10, -0.5, 12, -0.5
Text: 11.0, "centre", -1.0, "half", "L_c"
Draw two-way arrow: 12, -0.5, 17, -0.5
Text: 14.5, "centre", -1.0, "half", "L_f"
# A marks
Draw ellipse: 4.8, 5.2, 0, 3
Draw ellipse: 10.25, 10.5, 1, 2
Draw ellipse: 14.3, 14.7, 0, 3
Draw arrow: 6.0, 3.5, 5.0, 1.5
Text: 6.2, "left", 3.5, "half", "A_b"
Draw arrow: 11.375, 3.5, 10.375, 1.5
Text: 11.475, "left", 3.5, "half", "A_c"
Draw arrow: 15.5, 3.5, 14.5, 1.5
Text: 15.7, "left", 3.5, "half", "A_f"
# Save
# Save as 600-dpi PNG file: "/Users/Hugo/SURFdrive/colleges/phonetics/TPhSA-EN/figures/threetube.png"
