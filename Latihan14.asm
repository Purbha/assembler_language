
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
jmp start

;Inisialisasi variable byte bernama fakultas
fakultas db "TEKNIK$"

start:   

;Memasukan alamat offset fakultas ke dalam register DX
lea dx, fakultas

;Mengaktifkan fungsi output string
mov ah, 09h     
                  
;Interupsi DOS
int 021h

ret




