.model small
.stack 100H
.data
    n_line DB 0AH,0DH,"$"   ;for new line
    MSG1 DB "Do you have any more order? (Y or N)$"
	CHAR1 DB "N" ;TO STORE DECISION NO
    CHAR2 DB "Y" ;TO STORE DECISION YES
    STR1 DB "*===========================================*$"
	STR2 DB "*                  PAYMENT                  *$"
	STR3 DB "*===========================================*$"
	STR4 DB "* Product choosen :                         *$"
	STR5 DB "*-------------------------------------------*$"
	STR6 DB "* Subtotal =                                *$"
	STR7 DB "*-------------------------------------------*$"
	STR8 DB "* Service tax =                             *$"
	STR9 DB "*-------------------------------------------*$"
	STR10 DB "* Amount to pay =                           *$"
	STR11 DB "*===========================================*$"
    PROD1 DB "*                   Happy                   *$" ;PRODUCT USER HAVE SELECTED
    PROD2 DB "*                   Organic                 *$" ;PRODUCT USER HAVE SELECTED
	;SHOW SUBTOTAL  
	;SHOW SERVICE TAX
	;SHOW AMOUNT TO PAY
	
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
	
	CMP AL, CHAR1 ; COMPARE USER INPUT WITH N
	JE L1         ; IF EQUALS TO N JUMP TO L1 TO DISPLAY PAYMENT MENU
	
	CMP AL, CHAR2 ; COMPARE USER INPUT WITH Y
	JE L2 
	
	L1:           ;DISPLAY PRODUCT, SUBTOTAL AND SERVICE TAX THEN SHOW AMOUNT TO PAY
	    MOV AH,09H
	    LEA DX,STR1
	    INT 21H
		
        LEA DX,n_line
        MOV AH,9
        INT 21H 
		
	    MOV AH,09H
	    LEA DX,STR2
	    INT 21H
	 
	    LEA DX,n_line
        MOV AH,9
        INT 21H 
		
	    MOV AH,09H
        LEA DX,STR3
        INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
	    MOV AH,09H
    	LEA DX,STR4
	    INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
	    MOV AH,09H
	    LEA DX,PROD1
    	INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
    	MOV AH,09H
    	LEA DX,PROD2
    	INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
    	MOV AH,09H
    	LEA DX,STR5
    	INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
    	MOV AH,09H
    	LEA DX,STR6
	    INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
	    MOV AH,09H
	    LEA DX,STR7
	    INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
	    MOV AH,09H
	    LEA DX,STR8
	    INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
	    MOV AH,09H
	    LEA DX,STR9
        INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
	    MOV AH,09H
	    LEA DX,STR10
	    INT 21H
		
		LEA DX,n_line
        MOV AH,9
        INT 21H 
	
    	MOV AH,09H
    	LEA DX,STR11
    	INT 21H
		
    L2:
        JMP MAINMENU	
	
	mov ax,4c00H
	int 21h
main endp	
end main
