
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

comment !
    Tampilkan sebuah tanda tanya
    Masukan dua buah angka yang penjumlahan keduanya kurang dari 10
    Tampilkan dalam bentuk berikut
    Contoh:
    ?23 JUMLAH ANGKA 2 DAN 3 ADALAH 5
!
; add your code here
JMP AWAL               

;Definisi variable byte
k1 db ' JUMLAH ANGKA $'
k2 DB ' DAN $'
k3 DB ' ADALAH $'

AWAL:

;Isi register DL dengan karakter "?"
mov dl,'?'
;Aktifkan fungsi output karakter
mov ah,2
;Interupsi DOS
int 21h

;Aktifkan fungsi input karakter
mov ah,1
;Interupsi DOS
int 21h
;Pindahkan isi register AL ke BL
mov bl,al

;Aktifkan fungsi input karakter
mov ah,1
;Interupsi DOS
int 21h
;Pindahkan isi register AL ke BH
mov bh,al

;Masukan alamat offset k1 ke DX
lea dx,k1
;Aktifkan fungsi output string
mov ah,9                      
;Interupsi DOS
int 21h

;Pindahkan isi register BL ke DL   
mov dl,bl
;Aktifkan fungsi output karakter
mov ah,2                       
;Interupsi DOS
int 21h

;Masukan alamat offset k2 ke DX
lea dx,k2
;Aktifkan fungsi output string
mov ah,9
;Interupsi DOS
int 21h


;Pindahkan isi register BH ke DL   
mov dl,bh
;Aktifkan fungsi output karakter
mov ah,2
;Interupsi DOS
int 21h


;Masukan alamat offset k3 ke DX
lea dx,k3
;Aktifkan fungsi output string
mov ah,9
;Interupsi DOS
int 21h

;Tambahkan isi register BH ke BL
;Misalkan BH = 32h (50d) -> "2"
;Misalkan BL = 34h (52d) -> "4"   
;"2" + "4" = "6"
;"6" adalah 36h
;32h + 34h adalah 66h
;Agar 66h menjadi 36h maka 66h harus dikurangi dengan 30h 
add bl,bh
;Nilai BL dikurang 30h
;Hasil penjumlahan karakter harus bernilai dibawah 10
;Kode ASCII karakter untuk angka adalah maksimal karakter "9"
sub bl,30h

;Pindahkan isi register BL ke DL   
mov dl,bl
;Aktifkan fungsi output karakter
mov ah,2
;Interupsi DOS
int 21h

ret




