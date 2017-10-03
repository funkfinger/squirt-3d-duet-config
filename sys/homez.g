; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool on Mon Sep 04 2017 17:09:27 GMT-0700 (MST)

; Lift Z relatively to current position
;G91
;G1 Z5 F6000

; Back to absolute positioning
;G90

; Go to first bed probe point and home the Z axis
;G1 X15 Y15 F6000
;G30

; Uncomment the following lines to lift Z after probing
;G91
;G1 Z5 F100
;G90




T0 ; select first hot end
G91 ; Relative coordinates
G1 Z10 F200 ; Lower bed.
G4 P500 ; Dwell for 500ms - to ensure bed is down
G90 ; Absolute positioning
G1 X100 Y100 F3000 ; Go to first bed probe point and home the Z axis
M401 ; Lower Z probe (BLTouch)
G30 ; Calibrate Z-axis
M402 ; Retract Probe
G1 Z1 F200 ; Raise bed to 1mm.