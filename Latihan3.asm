
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
; Instruksi yang ilegal karena register segmen tidak dapat di set secara langsung
; Harus melalui register umum
mov ds,100                 

ret




