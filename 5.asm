.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV AH, 1
    INT 21H 
    SUB AL, 48
    MOV BL, AL
    
    MOV DL, 0DH
    MOV AH, 2 
    INT 21H 
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 1
    INT 21H 
    SUB AL, 48
    MOV CL, AL
    
    MOV DL, 0DH
    MOV AH, 2 
    INT 21H 
    MOV DL, 0AH
    INT 21H
    
    MOV AL, BL 
    MOV AH, 0
    DIV CL
    
    ADD AL, 48
    MOV DL, AL
    MOV AH, 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN