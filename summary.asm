.model small
.stack 100H
.data
	MSG1 DB "									Summary			   						 $"
	MSG2 DB "*===========================================================================*$"
	MSG3 DB "Product :$"
	MSG4 DB "*===========================================================================*$"
	MSG5 DB "Total =$"
	           ;STORE DIFFERENT CALACULATION
	
.code
main proc
	mov ax, @data
	mov ds, ax
	
	MOV AH,09H
    LEA DX,MSG1
    INT 21H
	
	MOV dl, 10
	MOV ah, 02h
	INT 21h
	
	MOV AH,09H
    LEA DX,MSG2
    INT 21H
	
	MOV dl, 13
	MOV ah, 02h
	INT 21h
	
	MOV AH,09H
    LEA DX,MSG3
    INT 21H
	
	MOV dl, 13
	MOV ah, 02h
	INT 21h

	MOV AH,09H
    LEA DX,MSG4
    INT 21H
	
	MOV dl, 13
	MOV ah, 02h
	INT 21h
	
	MOV AH,09H
    LEA DX,MSG5
    INT 21H
	
	mov ah, 4CH
	int 21h
main endp	
end main