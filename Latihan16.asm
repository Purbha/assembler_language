
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
;Isi register DL dengan nilai 65d ("A")
mov dl,65                              
;Aktifkan fungsi output karakter
mov ah,2    
;Interupsi DOS
int 021h   
         
;Isi register DL dengan nilai 10d ("New Line")         
mov dl,10
;Aktifkan fungsi output karakter
mov ah,2
;Interupsi DOS
int 021h   

;Isi register DL dengan nilai 65d ("A")
mov dl,65                              
;Aktifkan fungsi output karakter
mov ah,2    
;Interupsi DOS
int 021h   
         
;Isi register DL dengan nilai 10d ("New Line")         
mov dl,10
;Aktifkan fungsi output karakter
mov ah,2
;Interupsi DOS
int 021h   

;Isi register DL dengan nilai 65d ("A")
mov dl,65                              
;Aktifkan fungsi output karakter
mov ah,2    
;Interupsi DOS
int 021h   
         
ret




