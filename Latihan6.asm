
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

;Fungsi tombol masukan
mov ah,01h  

;Kode ASCII dalam AL
;Jika kita masukan "A" maka isi register AL=41h (65d)
int 21h 

ret




