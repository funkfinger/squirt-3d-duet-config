G91 ; relative mode
G1 S2 Z4 F200 ; raise head to avoid dragging nozzle over the bed
G1 S1 X-240 X-240 F3000 ; move up to 240mm in the -X and -Y direction, stopping if the homing switch is triggered
G1 X4 Y4 F600 ; move slowly 4mm in the +X and +Y direction
G1 S1 X-10 Y-10 ; move slowly 10mm in the -X and -X direction, stopping at the homing switch
G1 S2 Z-4 F200 ; lower the head again
G90 ; back to absolute mode

G1 X100 Y100 F3000 ; Go to first bed probe point and home the Z axis
M401 ; Lower Z probe (BLTouch)
G30 ; Calibrate Z-axis
M402 ; Retract Probe
G1 Z1 F200 S2; Raise bed to 1mm.
