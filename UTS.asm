
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
jmp start

;Deklarasi variable byte
enter db 13,10,"$"
sl515 db "Masukan tiga buah huruf: $"

start:      

;Isi register dx dengan nilai offset sl515
lea dx,sl515
;Aktifkan fungsi output string
mov ah,09h                    
;Interupsi DOS
int 021h

;Aktifkan fungsi input karakter
mov ah,01h                     
;Interupsi DOS
int 021h
;Pindahkan isi register AL ke BL
mov bl,al

;Aktifkan fungsi input karakter
mov ah,01h                     
;Interupsi DOS
int 021h
;Pindahkan isi register AL ke BH
mov bh,al

;Aktifkan fungsi input karakter
mov ah,01h                     
;Interupsi DOS
int 021h
;Pindahkan isi register AL ke CL
mov cl,al

;Isi register DX dengan nilai offset enter
lea dx,enter
;Aktifkan fungsi output string
mov ah,09h
;Interupsi DOS
int 021h

;Isi register DL dengan nilai register BL
mov dl,bl                                
;Aktifkan fungsi output karakter
mov ah,02h                      
;Interupsi DOS
int 021h

;Isi register DX dengan nilai offset enter
lea dx,enter
;Aktifkan fungsi output string
mov ah,09h
;Interupsi DOS
int 021h

;Isi register DL dengan nilai register BH
mov dl,bh                                
;Aktifkan fungsi output karakter
mov ah,02h                      
;Interupsi DOS
int 021h

;Isi register DX dengan nilai offset enter
lea dx,enter
;Aktifkan fungsi output string
mov ah,09h
;Interupsi DOS
int 021h

;Isi register DL dengan nilai register CL
mov dl,cl                                
;Aktifkan fungsi output karakter
mov ah,02h                      
;Interupsi DOS
int 021h

ret




