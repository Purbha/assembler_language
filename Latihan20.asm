
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h
;Buat sebuah program untuk:
;(A) Mencetak "?"
;(B) Membaca 3 buah karakter
;(C) Buat sebuah kotak dengan bagian tengah adalah karakter yang diinput
;(D) Bunyikan "beep" setiap perpindahan baris

;Contoh Hasil
;?234
;***********
;***********
;***********
;***********
;***********
;****234****
;***********
;***********
;***********
;***********
;***********

; add your code here
JMP START   
;Inisialisasi variable
K1 DB '***********$'   
K2 DB '****$'
;Pemberian nilai awal pada variable BUF1, BUF2, BUF3     
BUF1 DB 0
BUF2 DB 0
BUF3 DB 0
;Inisialisasi fungsi enter
SPASI DB 10,13,'$'

START:
;Isi register DL dengan karakter "?"
MOV DL,"?"
;Aktifkan fungsi output karakter
MOV AH,2
;Interupsi DOS
INT 21H

;Aktifkan fungsi input karakter 
MOV AH,1
;Interupsi DOS
INT 21H
;Pindahkan isi register AL ke variable BUF1
MOV BUF1,AL 

;Aktifkan fungsi input karakter 
MOV AH,1      
;Interupsi DOS
INT 21H
;Pindahkan isi register AL ke variable BUF2
MOV BUF2,AL

;Aktifkan fungsi input karakter 
MOV AH,1      
;Interupsi DOS
INT 21H
;Pindahkan isi register AL ke variable BUF3
MOV BUF3,AL

;Pindahkan nilai offset SPASI ke register DX
LEA DX,SPASI
;Aktifkan fungsi output string
MOV AH,9
;Interupsi DOS
INT 21H

;Inisialisasi jumlah perulangan sebanyak 5 kali
MOV CX,5   

ULANG:     

;Pindahkan nilai offset K1 ke register DX
LEA DX,K1     
;Aktifkan fungsi output string
MOV AH,9
;Interupsi DOS
INT 21H      

;Aktifkan fungsi output string
MOV AH,9
;Pindahkan nilai offset SPASI ke register DX
LEA DX,SPASI
;Interupsi DOS
INT 21H 

;Ini register DL dengan nilai 07h (bunyi "beep")
MOV DL,7
;Aktifkan fungsi output karakter
MOV AH,2      
;Interupsi DOS
INT 21H

LOOP ULANG

;Pindahkan nilai offset K2 ke register DX
LEA DX,K2
;Aktifkan fungsi output string
MOV AH,9  
;Interupsi DOS
INT 21H
        
;Aktifkan fungsi output karakter
MOV AH,2
;Pindahkan isi variable BUF1 ke register DL
MOV DL,BUF1
;Interupsi DOS
INT 21H

;Pindahkan isi variable BUF2 ke register DL
MOV DL,BUF2
;Interupsi DOS
INT 21H 

;Pindahkan isi variable BUF3 ke register DL
MOV DL,BUF3
;Interupsi DOS
INT 21H

;Pindahkan nilai offset K2 ke register DX
LEA DX,K2
;Aktifkan fungsi output string
MOV AH,9
;Interupsi DOS
INT 21H

;Pindahkan nilai offset SPASI ke register DX
LEA DX,SPASI
;Aktifkan fungsi output string
MOV AH,9
;Interupsi DOS
INT 21H


;Inisialisasi jumlah perulangan sebanyak 5 kali
MOV CX,5

ULANG2:

;Pindahkan nilai offset K1 ke register DX
LEA DX,K1
;Aktifkan fungsi output string
MOV AH,9
;Interupsi DOS
INT 21H      

;Pindahkan nilai offset SPASI ke register DX
LEA DX,SPASI
;Aktifkan fungsi output string
MOV AH,9
;Interupsi DOS
INT 21H  

;Ini register DL dengan nilai 07h (bunyi "beep")
MOV DL,7
;Aktifkan fungsi output karakter
MOV AH,2
;Interupsi DOS
INT 21H

LOOP ULANG2

ret




