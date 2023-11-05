
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here  

;Input register DL dengan nilai 70 (huruf "F")
mov dl,70d

;Nilai register DL ditambah dengan 10 (menjadi hurif P)
add dl,10d

;Nilai register DL ditambah dengan !(33d) (menjadi hurif q)
add dl,"!"

;Nilai register DL dikurang dengan 2 (menjadi hurif o)
sub dl,02h
                                        
;Panggil fungsi cetak
mov ah, 02h          

;Interupsi DOS
int 021h   

ret




