
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
;Register AX (masuk ke register AL) diberi nilai 95d atau 5Fh
;Register AL terisi nilai 5Fh
mov ax,95         

;Nilai register AX ditambah 0fff4h
;0fff4h adalah 65524d
;65524d + 95d = 65619d
;Nilai maksimum register AX (16bit) adalah FFFFh atau 65535d
;65619d - 65535d = 84d
;Nilai status flag CF - Carry Flag bernilai 1
;Nilai 84d berkurang 1 menjadi 83d atau 53h pada register AL
add ax,0fff4h 

ret