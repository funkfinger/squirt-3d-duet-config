; bed.g
; called to perform automatic bed compensation via G32
;
; generated by RepRapFirmware Configuration Tool on Mon Sep 04 2017 17:09:27 GMT-0700 (MST)

; Clear any bed transform
M561

; Probe the bed at 4 points
G30 P0 X15 Y15 H0 Z-99999
G30 P1 X15 Y195 H0 Z-99999
G30 P2 X195 Y195 H0 Z-99999
G30 P3 X195 Y15 H0 Z-99999 S
