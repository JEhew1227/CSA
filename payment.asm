.data
    n_line DB 0AH,0DH,"$"   ;for new line
    CONFIRM_ORDER DB "          Do you have any more order? (y or n)$"
    USER_INPUT_PAY DB "          Paying amount:RM$"
    CHANGE DB "          Change:RM$"
    NO DB "n" ;TO STORE DECISION NO
    YES DB "y" ;TO STORE DECISION YES
    AMOUNT_PAY DW ? ;AMOUNT TO PAY
    AMOUNT_USER_PAY DW ? ;AMOUNT USER INPUT
	AMOUNT_USER_PAY_BUFFER DB 10,?,12 dup("$")
	servicetax DW 5
    HUNDRED DW 100	
    servicetax_total DW ?
	
PaymentLogo 	DB 10,13, "                    ___  ___   ____  __ ___ _  _ _____     "
				DB 10,13, "                   | _ \/_\ \ / /  \/  | __| \| |_   _|    "
				DB 10,13, "                   |  _/ _ \ V /| |\/| | _|| .` | | |      "
				DB 10,13, "                   |_|/_/ \_\_| |_|  |_|___|_|\_| |_|     $"
				
PAYMENU     DB 10,13, "          *=================================================*"
            DB 10,13, "          *                     PAYMENT                     *"
            DB 10,13, "          *=================================================*"
            DB 10,13, "          * Product choosen       Price         Quantity    *"
			DB 10,13, "          *=================================================*$"
LINE2       DB 10,13, "          *=================================================*$"
TOTAL_NO_SST    DB "          Total(without SST) =RM$"
SERVICE_TAX DB "          Service tax(SST 5%) =RM$"
GRAND_TOTAL      DB "          Total =RM$"

    STR1 DB "          Insufficent payment! Please enter the correct amount!$"
    STR2 DB "          Payment completed$"
    STR3 DB "          Preparing receipt....$"
      
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
		
		COLOR 06H,PaymentLogo
		
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
		
		LEA SI, TOTAL
	    CALL ConvertToStr
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
		MOV AH,09H
        LEA DX,SERVICE_TAX
        INT 21H
		
        mov ax, TOTAL
        mul servicetax
		div HUNDRED
		mov servicetax_total, ax
		lea si, servicetax_total
		call ConvertToStr
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
		MOV AH,09H
        LEA DX,GRAND_TOTAL
        INT 21H
		
        mov ax,TOTAL
		add ax,servicetax_total
		mov AMOUNT_PAY, ax
		lea si, AMOUNT_PAY
		call ConvertToStr
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
	    
		MOV AH,09H
        LEA DX,LINE2
        INT 21H
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H
	
		MOV AH,09H
        LEA DX,USER_INPUT_PAY
        INT 21H
		
		LEA DX, AMOUNT_USER_PAY_BUFFER
		MOV AH ,0AH
        INT 21H
        LEA SI, AMOUNT_USER_PAY_BUFFER + 2
		LEA DI, AMOUNT_USER_PAY
		CALL ConvertToNum
		
		MOV AH,09H
		LEA DX,n_line
		INT 21H

		MOV AH,09H
		MOV DX,AMOUNT_USER_PAY
		sub DX,AMOUNT_PAY
	
        CMP DX,0  
        JGE L3          ; if change > 0 , continue to receipt
        JMP L4          ; if change < 0 , ask user to enter again
        
        
    L2:
        JMP HOMAINMENU
        
    L3: 
	
	    MOV AH,09H
		LEA DX,n_line
		INT 21H
		
        MOV AH,09H
        LEA DX,STR2
        INT 21H
        
		MOV AH,09H
		LEA DX,n_line
		INT 21H
		
        MOV AH,09H
        LEA DX,STR3
        INT 21H
        
        call receipt
		JMP HOMAINMENU
        
    L4:
	    MOV AH,09H
		LEA DX,n_line
		INT 21H
		
        MOV AH,09H
        LEA DX,STR1
        INT 21H
        
        JMP L1
        
payment endp
