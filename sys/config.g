; Configuration file for Duet WiFi (firmware version 1.17)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Mon Sep 04 2017 17:09:27 GMT-0700 (MST)

; General preferences
M111 S0 ; Debugging off
G21 ; Work in millimetres
G90 ; Send absolute coordinates...
M83 ; ...but relative extruder moves
M555 P1 ; Set firmware compatibility to look like RepRapFirmare
M208 X0 Y0 Z0 S1 ; Set axis minima
M208 X210 Y210 Z210 S0 ; Set axis maxima

; Endstops
M574 X1 Y1 Z0 S0 ; Define active low and unused microswitches
M558 P1 X0 Y0 Z1 H5 F120 T6000 ; Set Z probe type to unmodulated, the axes for which it is used and the probe + travel speeds
G31 P600 X0 Y0 Z2.5 ; Set Z probe trigger value, offset and trigger height
M557 X15:195 Y15:195 S20 ; Define mesh grid

; Drives
M569 P0 S1 ; Drive 0 goes forwards
M569 P1 S0 ; Drive 1 goes backwards
M569 P2 S1 ; Drive 2 goes forwards
M569 P3 S0 ; Drive 3 goes backwards
M350 X16 Y16 Z16 E16 I1 ; Configure microstepping with interpolation
M92 X200 Y200 Z3200 E500 ; Set steps per mm
M566 X900 Y900 Z12 E120 ; Set maximum instantaneous speed changes (mm/min)
M203 X6000 Y6000 Z180 E1200 ; Set maximum speeds (mm/min)
M201 X500 Y20 Z250 E250 ; Set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800 I30 ; Set motor currents (mA) and motor idle factor in per cent
M84 S30 ; Set idle timeout

; Heaters
M143 S260 ; Set maximum heater temperature to 260C
M305 P0 T100000 B4138 C0 R4700 ; Set thermistor + ADC parameters for heater 0
M305 P1 T100000 B4138 C0 R4700 ; Set thermistor + ADC parameters for heater 1

; Tools
M563 P0 D0 H1 ; Define tool 0
G10 P0 X0 Y0 Z0 ; Set tool 0 axis offsets
G10 P0 R0 S0 ; Set initial tool 0 active and standby temperatures to 0C

; Network
M550 PMy printer ; Set machine name
M552 S1 ; Enable network
; Access point is configured manually via M587 by the user
M586 P0 S1 ; Enable HTTP
M586 P1 S0 ; Disable FTP
M586 P2 S0 ; Disable Telnet

; Fans
M106 P0 S0.3 I0 F500 H-1 ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T45 ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S1 I0 F500 H1 T45 ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Custom settings

; BLTouch settings...
M307 H3 A-1 C-1 D-1
M558 P5 X0 Y0 Z1 H5 F100 T2000
G31 X0 Y0 Z0 P25
