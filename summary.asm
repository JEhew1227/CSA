.model small
.stack 100H
.data
	MSG1 DB "List the products purchased? (Y or N)$"
	MSG2 DB "*===========================================================================*$"
	MSG3 DB "									Summary			   						  $"
	MSG4 DB "*===========================================================================*$"
	MSG5 DB "Product :																	  $" 
	MSG6 DB "*---------------------------------------------------------------------------*$"
	MSG7 DB "SubTotal + Service Tax =													  $"
	MSG8 DB "*---------------------------------------------------------------------------*$"
	MSG9 DB "Total = 																	 *$"
	MSG10 DB "*==========================================================================*$"
	PROD1 DB ? ; ;Product user have selected 
	Total DB ? ; ;Product user have selected 
	Char1 DB ? ; ;To store decision
.code
main proc
	mov ax, @data
	mov ds, ax
	
	mov AH,09H
    lea DX,MSG1
    int 21H
	
	mov ah,01H
	int 21h
	sub al,30H
	mov Char1, al
	int 21H
	
	if (Char1 = Y){
	
	mov AH,09H
    lea DX,MSG2
    int 21H
	
	mov dl, 13
	mov ah, 02h
	int 21h
	
	mov AH,09H
    lea DX,MSG3
    int 21H
	
	mov dl, 13
	mov ah, 02h
	int 21h

	mov AH,09H
    lea DX,MSG4
    int 21H
	
	mov dl, 13
	mov ah, 02h
	int 21h
	
	mov AH,09H
    lea DX,MSG5
    int 21H
	
	;TotalPrice ;this need to change a lot
	
	totalprice:
	mov ah,9
    lea dx,m6
    int 21h 
            
    xor ax,ax
            
    mov ax,bx
    call outdec
            
    mov ah,9
    lea dx,m13
    int 21h
            
    mov ah,9
    lea dx,m14
    int 21h
            
    mov ah,1
    int 21h
            
    cmp al,31h
    je start
            
    mov ah,9
    lea dx,m7
    int 21h
	}
	
	if (Char1 = N) {
	mov ah, 4CH
	int 21h
	}
	
	mov ah, 4CH
	int 21h
main endp	
end main
