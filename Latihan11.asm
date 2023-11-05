
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt 
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here  

;Input register DL dengan nilai 65 (huruf "A")
mov dl,65d

;Nilai register DL ditambah dengan 5 (menjadi hurif F)
add dl,5d

;Nilai register DL dikurang dengan 2 (menjadi hurif D)
sub dl,02h
                                        
;Panggil fungsi cetak
mov ah, 02h          

;Interupsi DOS
int 021h   

ret




