
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov AX, 712Ah
mov BX, 652dh
XCHG AH, BH
XCHG AL, BH

ret




