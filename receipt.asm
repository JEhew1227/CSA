.data
ReceiptLogo 	DB 10,13, "      ___ ___ ___ ___ ___ ___ _____    "
				DB 10,13, "     | _ \ __/ __| __|_ _| _ \_   _|    "
				DB 10,13, "     |   / _| (__| _| | ||  _/ | |     "
				DB 10,13, "     |_|_\___\___|___|___|_|   |_|     $"

ReceiptT DB 10,13, "|===========================================================|"
	     DB 10,13,  "|	                      Receipt  			    |"
	     DB 10,13, "|-----------------------------------------------------------|"
	     DB 10,13, "|	                Products You Purchased  	    |"
	     DB 10,13, "|===========================================================|$"

 ;----------------------------------------------------------------------------------------        
	MSG6 DB "|Product               Price                Quantity	    |$" 
	MSG8 DB "|-----------------------------------------------------------|$"
	MSG9 DB "|Total(without SST) =RM$"
    MSG10 DB "|Service Tax(SST 5%) =RM$"
	MSG11 DB "|-----------------------------------------------------------|$"
	MSG12 DB "|Total =RM$"
	MSG13 DB "|===========================================================|$"
	MSG14 DB "	Thank you for the purchase! See you again!	         $"
    N_L DB 0AH,0DH,"$"

.code
receipt proc
    ;start
        ;CLEAR SCREEN
        mov ax, 0003H
        int 10H

        CHANGE_COLOR 05H, ReceiptLogo
	
        mov AH,09H
        lea DX,receiptT
        int 21H

        LEA DX,N_L
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG6
        int 21H

        LEA DX,N_L
        MOV AH,9
        INT 21H 

        mov ah,09H
        lea dx,list
        int 21H

        ;QUANTITY

        mov AH,09H
        lea DX,MSG8
        int 21H

        LEA DX,N_L
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG9
        int 21H

        
        LEA SI,TOTAL
        CALL ConvertToStr

        LEA DX,N_L
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG10
        int 21H

        LEA SI,servicetax_total
        CALL ConvertToStr

        LEA DX,N_L
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG11
        int 21H

        LEA DX,N_L
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG12
        int 21H

        lea si, AMOUNT_PAY
		call ConvertToStr

        LEA DX,N_L
        MOV AH,9
        INT 21H 
        
        mov AH,09H
        lea DX,MSG13
        int 21H

        LEA DX,N_L
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG14
        int 21H

        LEA DX,N_L
        MOV AH,9
        INT 21H 
	    
		LEA DX,ANYKEY
		MOV AH, 09h
		INT 21H
		
		MOV AH,07H
		INT 21H
		ret
		
receipt endp	