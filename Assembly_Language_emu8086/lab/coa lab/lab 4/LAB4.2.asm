
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   



; add your code here    

.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0AH,0DH,'Hello World$'
MSE DB 0AH,0DH,'Bye World$'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV CX,5
    
    PRINT_LOOP:
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    dec cx
    
    JG PRINT_LOOP
    
    LEA DX,MSE
    MOV AH,9
    INT 21H 
    
    
   
    
    Exit:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN




ret


