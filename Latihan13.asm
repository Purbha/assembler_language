
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here

;Isi register DL dengan nilai 3
mov dl,03                      

;Tambahkan nilai DL dengan nilai 48
add dl,48

;Nilai DL ditambah 1
;Total nilai DL adalah 52d atau 34h
;34h adalah karakter "4"
inc dl

;Aktifkan fungsi output
mov ah,02h 
            
;Interupsi DOS
int 021h

ret




