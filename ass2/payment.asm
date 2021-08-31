.data
    n_line DB 0AH,0DH,"$"   ;for new line
    MSG1 DB "Do you have any more order? (y or n)$"
    MSG2 DB "Paying amount:RM$"
    MSG3 DB "Change:RM$"
    CHAR1 DB "n" ;TO STORE DECISION NO
    CHAR2 DB "y" ;TO STORE DECISION YES
    CHAR3 DB ? ;AMOUNT TO PAY
    CHAR4 DB ? ;AMOUNT USER INPUT
PAYMENU     DB 10,13, "*=================================================*$"
            DB 10,13, "*                  PAYMENT                        *$"
            DB 10,13, "*=================================================*$"
            DB 10,13, "* Product choosen       Quantity        Price     *$"
LINE        DB 10,13, "*-------------------------------------------------*$"
LINE2       DB 10,13, "*=================================================*$"
SUBTOTAL    DB "* Subtotal =                                      *$"
SERVICE_TAX DB "* Service tax(SST 6%) =                           *$"
AMOUNT      DB "* Amount to pay =                                 *$"

    STR1 DB "Insufficent payment! Please enter the correct amount!$"
    STR2 DB "Payment completed$"
    STR3 DB "Preparing receipt....$"
    ;CALCULATE SERVICE TAX
     
    ;SHOW AMOUNT TO PAY
      
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
        call PAYMENU
		
		;get product choosen , quantity, price from menu
		
		MOV AH,09H
        LEA DX,SUBTOTAL
        INT 21H
		
		;subtotal
		
		MOV AH,09H
        LEA DX,SERVICE_TAX
        INT 21H
		
        ;mov ah, 02H
        ;mov ax, subtotal
        ;mul ax, 
        ;mov dl, 0.06
        ;mul dl
        ;int 21h
		
		MOV AH,09H
        LEA DX,AMOUNT
        INT 21H
		
		;mov ah, 02H
        ;mov dl,subtotal
        ;add dl
        ;mov dl,servicetax
        ;int 21h
	    
		MOV AH,09H
        LEA DX,LINE2
        INT 21H
		
        MOV AH,09H
        LEA DX,MSG2
        INT 21H
         
        MOV CHAR4,CX
        
        MOV AH,09H
        LEA DX,MSG3
        INT 21H
        
        MOV CHAR3,BX
		
        SUB BX,CX
        ADD BX,30H
        INT 21H 
        
        CMP BX,0  
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
    
payment endp
