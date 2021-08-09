.model small
.stack 100H
.data
	MSG1 DB "Do you have any more order? (Y or N)$"
	MSG2 DB "Product choosen :$"
	MSG3 DB "Quantity$"
	MSG4 DB "Subtotal ="
	MSG5 DB "Service tax ="
	MSG6 DB "Amount to pay ="
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
	LEA DX,MSG2
	INT 21H
	}
	if(CHAR1 = Y){ ;IF USER HAVE MORE ORDER , BACK TO MENU , BUT I ALSO DK HOW
	MOV AH,09H
	LEA DX,MSG3
	INT 21H
	}
	mov ah, 4CH
	int 21h
main endp	
end main
