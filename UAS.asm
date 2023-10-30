
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
;Buat sebuah program untuk:
;(A) Mencetak "?"
;(B) Membaca 1 buah angka antara 1-9
;(C) Buat buat tampilan sebagai berikut

;Contoh Hasil
;?5
;11111
;11111
;11111
;11111
;11111

; add your code here
JMP START   
;Inisialisasi variable
BUF1 DB 0
K1 DB '11111$'   
;Inisialisasi fungsi enter
SPASI DB 10,13,'$'

START:
;Isi register DL dengan karakter "?"
MOV DL,3Fh
;Aktifkan fungsi output karakter
MOV AH,2
;Interupsi DOS
INT 21H

;Aktifkan fungsi input karakter 
MOV AH,1
;Interupsi DOS
INT 21H
;Isi register AL dikurang 30h agar nilai perulangan sesuai           
SUB AL,030H
;Pindahkan isi register AL ke variable BUF1
MOV BUF1,AL 

;Pindahkan nilai offset SPASI ke register DX
LEA DX,SPASI
;Aktifkan fungsi output string
MOV AH,9
;Interupsi DOS
INT 21H

;Inisialisasi jumlah perulangan
;Reset nilai 16 bit CX
MOV CX,0              
;Isi register CL dengan nilai register BUF1
MOV CL,BUF1

ULANG: 
   
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

LOOP ULANG

ret




