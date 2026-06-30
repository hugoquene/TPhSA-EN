# ============================================================
# draw_lpc_inverse.praat
#
# Draws the LPC spectral envelope and its inverse (flipped)
# on the same Picture window, for teaching inverse filtering.
#
# BEFORE RUNNING:
#   - Have a Sound object and an LPC object selected in the
#     Objects window, OR set the names below manually.
#   - Adjust the parameters in the SETTINGS section.
# ============================================================

# ---- SETTINGS ----------------------------------------------

sound_name$ = "aa_8000"        ; name of your Sound object
lpc_name$   = "aa_8000"        ; name of your LPC object

time        = 0.250            ; time slice to extract (seconds)
max_freq    = 4000           ; max frequency to display (Hz)
pre_emph    = 50             ; pre-emphasis from (Hz), use 0 to disable
bandwidth   = 20             ; bandwidth (Hz) for LPC spectrum
dynamic_range = 60           ; dB range shown in plot
n_points    = 1000           ; number of frequency points to sample

# Amplitude anchor: dB value shown at reference_freq Hz
# Adjust these to position the curves nicely in your plot
reference_freq = 500         ; Hz
anchor_dB      = 60          ; dB at reference_freq for the slope line

# ---- EXTRACT LPC SPECTRUM SLICE ----------------------------

selectObject: "LPC " + lpc_name$
To Spectrum (slice)... time bandwidth pre_emph dynamic_range
Rename: "lpc_envelope"

# ---- COPY AND NEGATE TO GET INVERSE ------------------------
# We work on the Matrix representation to extract power in dB,
# negate it, and reconstruct for drawing.

# Get the frequency resolution and number of bins
selectObject: "Spectrum lpc_envelope"
# this does not work, should be as below
# n_bins = Get number of frequencies
# f_step = Get frequency step
n_bins = Get number of bins
f_step = Get bin width

# Create a Table to hold frequency and dB values
# for both the original and flipped envelope
Create Table with column names: "specdata", n_bins, { "freq", "db_orig", "db_flip" }

selectObject: "Spectrum lpc_envelope"

for i from 1 to n_bins
    freq_i = (i - 1) * f_step
    db_i   = Get value at frequency... freq_i Nearest
    selectObject: "Table specdata"
    Set numeric value: i "freq"    freq_i
    Set numeric value: i "db_orig" db_i
    Set numeric value: i "db_flip" -db_i
endfor

# ---- FIND Y AXIS RANGE -------------------------------------
# Use the original envelope to set sensible y axis limits

selectObject: "Table specdata"
max_db =  Get maximum: "db_orig"
min_db =  Get minimum: "db_orig"

# Centre the flipped curve around the same midpoint
mid    = (max_db + min_db) / 2
margin = (max_db - min_db) / 2 + 10

y_max  = mid + margin
y_min  = mid - margin

# ---- DRAW --------------------------------------------------

Erase all
Black
Font size: 12

# Draw axes and labels
Axes: 0 max_freq y_min y_max
Draw inner box
Marks bottom every: 1 1000 yes yes no
Marks left every:   1 10   yes yes no
Text bottom:  yes "Frequency (Hz)"
Text left:    yes "Amplitude (dB)"
Text top:     no  ""

# Draw original LPC envelope in blue
Blue
lineWidth = 2
selectObject: "Table specdata"

for i from 2 to n_bins
    x1 = Get value: i-1 "freq"
    y1 = Get value: i-1 "db_orig"
    x2 = Get value: i   "freq"
    y2 = Get value: i   "db_orig"
    if x2 <= max_freq
        Draw line: x1 y1 x2 y2
    endif
endfor

# Draw flipped (inverse) envelope in red
Red

for i from 2 to n_bins
    x1 = Get value: i-1 "freq"
    y1 = Get value: i-1 "db_flip"
    x2 = Get value: i   "freq"
    y2 = Get value: i   "db_flip"
    if x2 <= max_freq
        Draw line: x1 y1 x2 y2
    endif
endfor

# Draw legend
Black
Text special: 500 "left" y_max - 5  "half" "Helvetica" 12 "b" "Blue = LPC envelope"
Text special: 500 "left" y_max - 12 "half" "Helvetica" 12 "b" "Red  = Inverse (flipped)"

# ---- OPTIONAL: draw a zero reference line ------------------
Black
Line type: 2   ; dashed
Draw line: 0 mid max_freq mid
Line type: 1   ; back to solid

# ---- CLEAN UP INTERMEDIATE OBJECTS -------------------------
# Comment these out if you want to inspect them

selectObject: "Spectrum lpc_envelope"
Remove
selectObject: "Table specdata"
Remove

# ---- DONE --------------------------------------------------
appendInfoLine: "Done. Original (blue) and inverse (red) drawn."
appendInfoLine: "Time slice: " + string$(time) + " s"
appendInfoLine: "Y range: " + string$(y_min) + " to " + string$(y_max) + " dB"
