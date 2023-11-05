
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here

comment !
    Buat sebuah program yang membaca salah satu dari digit hex A - F
    Tampilkan dalam bentuk desimal pada baris berikutnya
    Contoh:
    Masukan Sebuah Digit Hex: C
    Nilai C adalah sama dengan 12
!
jmp mulai

;Deklarasi variable
kata1 db "Masukan Sebuah Digit Hex: $"
kata2 db "Nilai $"
kata3 db " adalah sama dengan $"
enter db 13,10,"$"

mulai:      
;Masukan nilai offset kata1 ke register DX
lea dx,kata1
;Aktifkan fungsi output string
mov ah,09h                    
;Interupsi DOS
int 021h   
          
;Aktifkan fungsi input karakter          
mov ah,01h
;Interupsi DOS
int 021h   
;Isi register BH dengan nilai register AL
mov bh,al
;Contoh jika yang diinput adalah "A"
;Nilai A hexa adalah sama dengan 10 desimal
;Mencetak angka 10 adalah dengan cara mencetak angka 1 dan angka 0
;Huruf "A" harus berubah menjadi angka nol
;Huruf "A" adalah bernilai 41h dan angka "0" bernilai 30h
;Maka 41h - X = 30h 

comment !
    41h (karakter "A") = 65d
    30h (karakter "0") = 48d
    65d - 48d = 17d
    17d adalah sama dengan 11h
!

;Maka X adalah 11h


;Isi register AL dikurang 11h       
sub al,011h
;Pindahkan isi register AL ke BL
mov bl,al

;Masukan nilai offset enter ke register DX
lea dx,enter                              
;Aktifkan fungsi output string
mov ah,09h
;Interupsi DOS
int 021h   

;Masukan nilai offset enter ke register DX
lea dx,kata2                              
;Aktifkan fungsi output string
mov ah,09h
;Interupsi DOS
int 021h   

;Pindahkan isi register BL ke DL
mov dl,bh
;Aktifkan fungsi output karakter
mov ah,02h                      
;Interupsi DOS
int 021h

;Masukan nilai offset kata3 ke register DX
lea dx,kata3                              
;Aktifkan fungsi output string
mov ah,09h
;Interupsi DOS
int 021h

;Isi register DL dengan nilai "1"
mov dl,"1"                       
;Aktifkan fungsi output karakter
mov ah,02h                      
;Interupsi DOS
int 021h

;Isi register DL dengan nilai register BL
mov dl,bl                                
;Aktifkan fungsi output karakter
mov ah,02h                      
;Interupsi DOS
int 021h

ret




