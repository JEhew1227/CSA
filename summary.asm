.model small
.stack 100H
.data
	MSG1 DB "									Receipt					 			      $"
	MSG2 DB "*===========================================================================*$"
	MSG3 DB "				  					Summary						              $"
	MSG4 DB "*===========================================================================*$"
	MSG5 DB "	Product :							      								  $" 
	MSG6 DB "*---------------------------------------------------------------------------*$"
	MSG7 DB "	SubTotal + Service Tax :					     						  $"
	MSG8 DB "*---------------------------------------------------------------------------*$"
	MSG9 DB "	Total : 							     								 *$"
	MSG10 DB "*==========================================================================*$"
	MSG11 DB "				Thank you for the purchase! See you again!	     			  $"

.code
main proc
	mov ax, @data
	mov ds, ax
	
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
	
	mov ah, 4CH
	int 21h
main endp	
end main
