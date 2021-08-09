 Variable definition
P - productPrice
S - subtotal
q - quantity

 
 Subtotal
     .DATA
     Subtotal db ?
     .CODE
     MAIN PROC 
     MOV AX,@DATA
     MOV DS,AX 

     mov ax, @Data
     mov dx,ax
     mov ah, 02H
     mov ax, p
     mul ax, q
     mov dl, s
     add dl
     int 21h

     Service Tax (6%)
    .DATA

    num1 db 0.06
    servicetax db 

    .CODE
    MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 

    mov ah, 02H
    mov ax, p
    mul ax, q
    Mov dl, num1
    Mul dl
    int 21h



    Total 
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
