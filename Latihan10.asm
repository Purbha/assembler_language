
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt 
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here
;Isi register DL dengan karakter "?"
mov dl,"?"
;Aktifkan fungsi output karakter
;Karakter yang akan tampil adalah yang ada di register DL
mov ah,02
;Interupsi DOS
int 021h


;Aktifkan fungsi input karakter
;Karakter akan masuk ke register AL
mov ah,1
;Iterupsi DOS
int 021h

;Aktifkan fungsi output karakter
mov ah,2                        
;Interupsi DOS
;Karakter yang tampil adalah "?"
;Nilai register DL belum berubah
int 021h

ret




