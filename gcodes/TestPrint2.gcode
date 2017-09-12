; Test Routine for Duet WiFi and Ethernet April 2017
M570 H1 P120 T120			; Extend the heater H1 fault timeout to 120 seconds for testing
M570 H2 P120 T120			; Same for H2
; Test motors
G28 ; home all axes - trigger endstops manually
G1 Z100 F10000; Move Z down 100
G4 P1000
G1 X100 F10000; Move X +100
G4 P1000
G1 X-100 F10000; Move X -100
G4 P1000
G1 Y100 F10000; Move Y +100
G4 P1000
G1 Y-100 F10000; Move Y -100
G4 1000
; Test PWM fans
M106 P0 S255
G4 P4000
M106 P0 S0
M106 P1 S255
G4 P4000
M106 P1 S0
M106 P2 S255
G4 P4000
M106 P2 S0
; Start heating bed
M140 S50
;Override cold extrusion
M302 P1
T0 ; Select first extruder
; start heating hotend
M104 S50
G4 P4000
; extrude 50
G1 E50 F1200
G4 P1000
; retract 50
G1 E-50 F1200
G4 P1000
; turn off hotend
M104 S0
T1; Select second extruder
M104 S50
G4 P4000
G1 E50 F1200
G4 P1000
G1 E-50 F1200
G4 P1000
M104 S0
M140 S0
G28
M84; disable motors

