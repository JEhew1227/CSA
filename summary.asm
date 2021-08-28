.model small
.stack 100
.data
	MSG1 DB "|===========================================================|$"
	MSG2 DB "|	                     Summary  			    |$"
	MSG3 DB "|-----------------------------------------------------------|$"
	MSG4 DB "|	              Products You Purchased  	            |$"
	MSG5 DB "|===========================================================|$"
	MSG6 DB "|Product :			                            |$" 
	MSG7 DB "|Quantity:                                                  |$"
	MSG8 DB "|-----------------------------------------------------------|$"
	MSG9 DB "|SubTotal :			                            |$"
	MSG10 DB "|-----------------------------------------------------------|$"
	MSG11 DB "|Total : 						    |$"
	MSG12 DB "|===========================================================|$"
	MSG13 DB "	Thank you for the purchase! See you again!	         $"
    n_line DB 0AH,0DH,"$"

.code
main proc
	mov ax, @data
	mov ds, ax

    ;CLEAR SCREEN
    mov ax, 0003H
    int 10H
	
    Summary:
        mov AH,09H
        lea DX,MSG1
        int 21H
        
        LEA DX,n_line
        MOV AH,9
        INT 21H 
        
        mov AH,09H
        lea DX,MSG2
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 
        
        mov AH,09H
        lea DX,MSG3
        int 21H
        
        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG4
        int 21H
        
        LEA DX,n_line
        MOV AH,9
        INT 21H 
        
        mov AH,09H
        lea DX,MSG5
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG6
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG7
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG8
        int 21H

        LEA DX,n_line
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG9
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
main endp	
end main
