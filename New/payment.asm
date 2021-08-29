.data
    n_line DB 0AH,0DH,"$"   ;for new line
    MSG1 DB "          Do you have any more order? (y or n)$"
	MSG2 DB "Paying amount:RM$"
	MSG3 DB "Change:RM$"
	CHAR1 DB "n" ;TO STORE DECISION NO
    CHAR2 DB "y" ;TO STORE DECISION YES
	CHAR3 DB ? ;AMOUNT TO PAY
	CHAR4 DB ? ;AMOUNT USER INPUT
    STR1 DB "*=================================================*$"
	STR2 DB "*                  PAYMENT                        *$"
	STR3 DB "*=================================================*$"
	STR4 DB "* Product choosen       Quantity        Price     *$"
	STR5 DB "*-------------------------------------------------*$"
	STR6 DB "* Subtotal =                                      *$"
	STR7 DB "*-------------------------------------------------*$"
	STR8 DB "* Service tax(SST 6%) =                           *$"
	STR9 DB "*-------------------------------------------------*$"
	STR10 DB "* Amount to pay =                                *$"
	STR11 DB "*================================================*$"
	STR12 DB "Insufficent payment! Please enter the correct amount!$"
	STR13 DB "Payment completed$"
	STR14 DB "Preparing receipt....$"
	;DISPLAY SUBTOTAL  
	;CALCULATE SERVICE TAX
	  ;num1 db 0.06
	  ;mov ah, 02H
      ;mov ax, subtotal
      ;mul ax, 
      ;Mov dl, num1
      ;Mul dl
      ;int 21h
	;SHOW AMOUNT TO PAY
	  ;mov ah, 02H
      ;mov dl,subtotal
      ;add dl
      ;mov dl,servicetax
      ;int 21h
.code
payment proc
	
	LEA DX,n_line
	MOV AH,09H
	INT 21H
		
	MOV AH,09H
    LEA DX,MSG1
    INT 21H
	
	MOV AH,01H
    INT 21H
	
	CMP AL, CHAR1 ; COMPARE USER INPUT WITH N
	JE L1         ; IF EQUALS TO N JUMP TO L1 TO DISPLAY PAYMENT MENU
	
	CMP AL, CHAR2 ; COMPARE USER INPUT WITH Y
	JE L2         ; IF EQUALS TO Y JUMP BACK TO MAINMENU TO SELECT PRODUCT
	
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
	
	    ;Call array index for product choosen
		
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
		
		MOV AH,09H
		LEA DX,MSG2
		INT 21H
		 
        ;MOV CHAR4,CX
		
		
		MOV AH,09H
		LEA DX,MSG3
		INT 21H
		
		;MOV CHAR3,BX
		SUB BX,CX
		LEA DX,STR12
		ADD BX,30H
		INT 21H 
		
		CMP BX,0  
		JGE L3          ; if change > 0 , continue to receipt
		JMP L4          ; if change < 0 , ask user to enter again
		
		
		
	L2:
        JMP HOMAINMENU
		
	L3: 
	    MOV AH,09H
    	LEA DX,STR13
    	INT 21H
		
		MOV AH,09H
    	LEA DX,STR14
    	INT 21H
		
		;JMP SUMMARY
		
    L4:
	    MOV AH,09H
    	LEA DX,STR12
    	INT 21H
		
		JMP L1
	
payment endp	