
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  
; Irsyad Purbha Irwansyah
; irsyadpurbha@gmail.com

org 100h

; add your code here

;Jika dalam penulisan angka tidak dicantumkan radix-nya maka nilai dianggap desimal
;Register AX diberi nilai 100d
;100d adalah 64h
;Jika tidak ditentukan masuk ke register high (AH) atau register low (AL)
    ;maka otomatis masuk ke register low (AL)
    ;jika nilainya dibawah atau sama dengan FFh (255d)
      
mov ah,100 

ret




