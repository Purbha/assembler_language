
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov AH, 65h
mov BL, 2Fh
XCHG AH, BH

ret




