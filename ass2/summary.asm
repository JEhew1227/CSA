.model small
.stack 100
.data
summaryT DB 10,13, "|===========================================================|"
	     DB 10,13,  "|	                      Summary  			    |"
	     DB 10,13, "|-----------------------------------------------------------|"
	     DB 10,13, "|	                Products You Purchased  	    |"
	     DB 10,13, "|===========================================================|$"

 ;----------------------------------------------------------------------------------------        
	MSG6 DB "|Product               Quantity                Price	    |$" 
	MSG8 DB "|-----------------------------------------------------------|$"
	MSG9 DB "|SubTotal : $"
	MSG10 DB "|-----------------------------------------------------------|$"
	MSG11 DB "|Total : $"
	MSG12 DB "|===========================================================|$"
	MSG13 DB "	Thank you for the purchase! See you again!	         $"
    n_line DB 0AH,0DH,"$"
    pName db '  Corn      $'
    quantity db '              4      $'
    price db '              RM 3 $'
    subtotal db 'RM 12 $'
    total db 'RM 15$'

.code
Main proc
	mov ax, @data
	mov ds, ax

    ;start
        ;CLEAR SCREEN
        mov ax, 0003H
        int 10H
	
        mov AH,09H
        lea DX,summaryT
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

    ;DisplayProd
        mov AH,09H
        lea DX,MSG6
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov ah,09H
        lea dx,pName
        int 21H

        mov ah,09H
        lea dx,quantity
        int 21H

        mov ah,09H
        lea dx,price
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

    ;SubTotalnTotal
        mov AH,09H
        lea DX,MSG8
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG9
        int 21H

        mov ah,09H
        lea dx,subtotal
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG10
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG11
        int 21H

        mov ah,09H
        lea dx,total
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 
        
        mov AH,09H
        lea DX,MSG12
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG13
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 
	
	mov ah, 4CH
	int 21h
Main endp	
end main
