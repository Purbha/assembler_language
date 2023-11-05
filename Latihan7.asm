    
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt 
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here

;Karakter adalah "A"
mov dl,"A"

;Tampilan fungsi karakter
mov ah,02h           

;Menampilkan karakter
int 021h

ret




