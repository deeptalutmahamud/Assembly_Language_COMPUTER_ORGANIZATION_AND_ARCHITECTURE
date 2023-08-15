.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    MOV AL, -1      ; assuming the value of AL is -1
    CMP AL, 0       ; compare AL with 0
    JGE ELSE_BLOCK  ; if AL is greater than or equal to 0, skip the IF block
    MOV AH, 0FFh    ; set AH to FFh
    JMP END_IF      ; skip the ELSE block
ELSE_BLOCK:
    MOV AH, 0       ; set AH to 0
END_IF:
    ; code to execute after the IF block
    MOV AH, 4CH     ; return control to DOS
    INT 21H
MAIN ENDP
END MAIN
