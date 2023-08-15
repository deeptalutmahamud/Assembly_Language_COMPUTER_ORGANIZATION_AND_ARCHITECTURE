.MODEL SMALL
.STACK 100H

.DATA
    MSG DB "Value of BX is: $"

.CODE
MAIN PROC
    MOV AX, -5      ; assuming the value of AX is -5
    CMP AX, 0       ; compare AX with 0
    JGE ELSE_BLOCK  ; if AX is greater than or equal to 0, skip the IF block
    MOV BX, -1      ; set BX to -1
    JMP END_IF      ; skip the ELSE block
ELSE_BLOCK:
    ; code to execute if AX is greater than or equal to 0
END_IF:
    ; code to execute after the IF block
    MOV AH, 9       ; print message on the screen
    LEA DX, MSG     ; load the address of the message into DX
    INT 21H
    MOV AH, 2       ; print value of BX
    MOV DL, BL      ; move the value of BL to DL for printing
    INT 21H
    MOV AH, 4CH     ; return control to DOS
    INT 21H
MAIN ENDP
END MAIN
