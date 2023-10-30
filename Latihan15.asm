
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
jmp mulai   

;Deklarasi variable byte dalam bentuk array
komentar db "SELAMAT",32,68,65,84,65,78,71,"$"

mulai:
;Masukan alamat offset komentar ke register DX
lea dx,komentar
;Aktifkan fungsi output string 
;Membaca isi data yang ada dalam alamat yang tersimpan di register DX
mov ah,9
;Interupsi DOS
int 021h

ret




