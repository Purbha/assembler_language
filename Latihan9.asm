
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here

;Mengaktifkan fungsi input (tanpa echo)
;Hasil input tidak ditampilkan di layar
mov ah,07h

;Interupsi DOS
int 021h      

;Pindahkan nilai register AL ke DL
mov dl,al                         

;Mengaktifkan fungsi output (mengambil nilai register DL)
mov ah, 2h                                              

;Interupsi DOS
int 021h

ret




