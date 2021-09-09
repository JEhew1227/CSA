.data
    n_line DB 0AH,0DH,"$"   ;for new line
    CONFIRM_ORDER DB "          Do you have any more order? (y or n)$"
    USER_INPUT_PAY DB "          Paying amount:RM$"
    CHANGE DB "          Change:RM$"
    NO DB "n" ;TO STORE DECISION NO
    YES DB "y" ;TO STORE DECISION YES
    AMOUNT_PAY DB ? ;AMOUNT TO PAY
    AMOUNT_USER_PAY DB ? ;AMOUNT USER INPUT
	servicetax DB 6
    HUNDRED DW 100	
	;PAY_TOTAL DB 20
	
PAYMENU     DB 10,13, "          *=================================================*"
            DB 10,13, "          *                     PAYMENT                     *"
            DB 10,13, "          *=================================================*"
            DB 10,13, "          * Product choosen       Price         Quantity    *"
			DB 10,13, "          *=================================================*$"
LINE1       DB 10,13, "          *-------------------------------------------------*$"
LINE2       DB 10,13, "          *=================================================*$"
TOTAL_NO_SST    DB "          Total(without SST) =RM$"
SERVICE_TAX DB "          Service tax(SST 6%) =RM$"
GRAND_TOTAL      DB "          Total =RM$"

    STR1 DB "Insufficent payment! Please enter the correct amount!$"
    STR2 DB "Payment completed$"
    STR3 DB "Preparing receipt....$"
      
.code
payment proc
    
    LEA DX,n_line
    MOV AH,09H
    INT 21H
	
	LEA DX,n_line
    MOV AH,09H
    INT 21H
        
    MOV AH,09H
    LEA DX,CONFIRM_ORDER
    INT 21H
    
    MOV AH,01H
    INT 21H
    
    CMP AL, NO ; COMPARE USER INPUT WITH N
    JE L1         ; IF EQUALS TO N JUMP TO L1 TO DISPLAY PAYMENT MENU
    
    CMP AL, YES ; COMPARE USER INPUT WITH Y
    JE USERSAYYES         ; IF EQUALS TO Y JUMP BACK TO MAINMENU TO SELECT PRODUCT
	JMP USUALFLOW
	
USERSAYYES:
    JMP L2

USUALFLOW:
     MOV AH, 01H
     INT 21H
    
    L1:           ;DISPLAY PRODUCT, SUBTOTAL AND SERVICE TAX THEN SHOW AMOUNT TO PAY
	    
		MOV AH,09H
		LEA DX,n_line
		INT 21H
	
        MOV AH,09H
		LEA DX,PAYMENU
		INT 21H
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
		LEA DX,list
		MOV AH,09H
		INT 21H
		
		;QUANTITY
		
		MOV AH,09H
		LEA DX,LINE2
		INT 21H
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
		MOV AH,09H
        LEA DX,TOTAL_NO_SST
        INT 21H
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
		MOV AH,09H
        LEA DX,SERVICE_TAX
        INT 21H
		
        ;mov ah, 02H
        ;mov ax, PAY_TOTAL
        ;mov dl, servicetax
        ;mul dl
		;div HUNDRED
        ;int 21h
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
		MOV AH,09H
        LEA DX,GRAND_TOTAL
        INT 21H
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
		;mov ah, 02H
        ;add dx,TOTAL
        ;mov dl,servicetax
        ;int 21h
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
	    
		MOV AH,09H
        LEA DX,LINE2
        INT 21H
        
		;MOV AH,09H
		;LEA DX,AMOUNT_PAY
		;INT 21H
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
	
		MOV AH,09H
        LEA DX,USER_INPUT_PAY
        INT 21H
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
        ;MOV AH,01H
        ;INT 21H
        ;MOV AMOUNT_USER_PAY,AL
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
        payment endp
		call ENDPROGRAM
		;MOV AH,09H
		;MOV DL,AMOUNT_USER_PAY
		;sub DL,AMOUNT_PAY
		
		INT 21H
        
        CMP DL,0  
        JGE L3          ; if change > 0 , continue to receipt
        JMP L4          ; if change < 0 , ask user to enter again
        
        
    L2:
        JMP HOMAINMENU
        
    L3: 
        MOV AH,09H
        LEA DX,STR2
        INT 21H
        
        MOV AH,09H
        LEA DX,STR3
        INT 21H
        
		
        ;JMP SUMMARY
        
    L4:
        MOV AH,09H
        LEA DX,STR1
        INT 21H
        
        JMP L1
        
;payment endp
