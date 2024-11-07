
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt      
; Irsyad Purbha Irwansyah M.Kom
; irsyadpurbha.fst@uia.ac.id

org 100h

jmp mulai
;Deklarasi variable byte
;ASCII carriage return (CR) is a control character in the ASCII character set 
;   used to move the cursor to the beginning of the line in a text editor or terminal.
;ASCII carriage return has a decimal code point of 13.  
fungsi_enter db 13,10,"$"

; add your code here
mulai:
;Isi register DL dengan nilai 65d ("A")
mov dl,65                              
;Aktifkan fungsi output karakter
mov ah,2    
;Interupsi DOS
int 021h   

;Isi register dx dengan nilai offset fungsi_enter
lea dx,fungsi_enter
;Aktfkan fungsi output string
mov ah,09h                   
;Interupsi DOS
int 021h
        
;Isi register DL dengan nilai 65d ("A")
mov dl,65                              
;Aktifkan fungsi output karakter
mov ah,2    
;Interupsi DOS
int 021h   

;Isi register dx dengan nilai offset fungsi_enter
lea dx,fungsi_enter
;Aktfkan fungsi output string
mov ah,09h
;Interupsi DOS
int 021h
         
;Isi register DL dengan nilai 65d ("A")
mov dl,65                              
;Aktifkan fungsi output karakter
mov ah,2    
;Interupsi DOS
int 021h   
         
ret




