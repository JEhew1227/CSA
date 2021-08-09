.model small
.stack 100H
.data
    MSG1 DB "Do you have any more order? (Y or N)$"
    STR1 DB "*===========================================*$"
	STR2 DB "*                  PAYMENT                  *$"
	STR3 DB "*===========================================*$"
	STR4 DB "*Product choosen :                          *$"
	STR5 DB "*-------------------------------------------*$"
	STR6 DB "*Subtotal =                                 *$"
	STR7 DB "*-------------------------------------------*$"
	STR8 DB "*Service tax =                              *$"
	STR9 DB "*-------------------------------------------*$"
	STR10 DB "*Amount to pay =                           *$"
	STR11 DB "*==========================================*$"
    PROD1 DB ? ;PRODUCT USER HAVE SELECTED
    PROD2 DB ? ;PRODUCT USER HAVE SELECTED
	CHAR1 DB ? ;TO STORE THE DECISION
	           ;STORE DIFFERENT CALACULATION
	
.code
main proc
	mov ax, @data
	mov ds, ax
	
	MOV AH,09H
    LEA DX,MSG1
    INT 21H
	
	MOV AH,01H
    INT 21H
    SUB AL,30H  
    MOV CHAR1 ,AL
    INT 21H
	
	if(CHAR1 = N){ ;IF USER HAVE NO MORE ORDER, SHOW PRODUCT AND QUANTITY 
	               ;DISPLAY SUBTOTAL AND SERVICE TAX THEN SHOW AMOUNT TO PAY, BUT IDK HOW
	MOV AH,09H
	LEA DX,STR1
	INT 21H
	
	MOV AH,09H
	LEA DX,STR2
	INT 21H
	
	MOV AH,09H
	LEA DX,STR3
	INT 21H
	
	MOV AH,09H
	LEA DX,STR4
	INT 21H
	MOV AH,09H
	LEA DX,STR5
	INT 21H
	
	MOV AH,09H
	LEA DX,STR6
	INT 21H
	
	MOV AH,09H
	LEA DX,STR7
	INT 21H
	
	MOV AH,09H
	LEA DX,STR8
	INT 21H
	
	MOV AH,09H
	LEA DX,STR9
	INT 21H
	
	MOV AH,09H
	LEA DX,STR10
	INT 21H
	
	MOV AH,09H
	LEA DX,STR11
	INT 21H
		
	}
	if(CHAR1 = Y)
	{             ;IF USER HAVE MORE ORDER , BACK TO MENU , BUT I ALSO DK HOW

	}
	mov ah, 4CH
	int 21h
main endp	
end main
