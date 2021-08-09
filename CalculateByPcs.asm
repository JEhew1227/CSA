;Variable definition
;P - productPrice
;S - subtotal
;q - quantity

 
 ;Subtotal
     .MODEL SMALL
	 .STACK 100H
     .DATA
     Subtotal db ?
	 
.CODE
MAIN PROC 
     MOV AX,@DATA
     MOV DS,AX 

     mov ah, 02H
     mov ax, p
     mul ax, q
     mov dl, s
     add dl
     int 21h

    MOV AX,4C00H
    INT 21H
main endp
end main

;Service Tax (6%)
    .MODEL SMALL
	.STACK 100H
    .DATA

num1 db 0.06
subtotal db 

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 

    mov ah, 02H
    mov ax, subtotal
    mul ax, 
    Mov dl, num1
    Mul dl
    int 21h

    MOV AX,4C00H
    INT 21H
main endp
end main


;Total 
	.MODEL SMALL
    .STACK 100
    .DATA

    subtotal db
    servicetax db 

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 

    mov ah, 02H
    mov dl,subtotal
    add dl
    mov dl,servicetax
    int 21h

    MOV AX,4C00H
    INT 21H
main endp
end main