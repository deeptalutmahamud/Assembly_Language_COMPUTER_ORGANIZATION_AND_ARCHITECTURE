
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   



; add your code here    

.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'HELLO WORLD$'

.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX



PRINT_LOOP:
  
LEA DX, MSG.
MOV AH, 9
INT 21h


JNZ PRINT_LOOP 

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
ret;




