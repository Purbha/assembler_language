
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
; Masukan register AH dengan nilai 26d
mov ah, 26                            
; Masukan register BL dengan nilai 5d
mov bl, 5
; Tukarkan nilai register AH dengan register BL
xchg ah, bl


ret




