
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov ax, 162Dh
mov bx, 4F32h
XCHG AH, AL
XCHG BH, BL
 

ret




