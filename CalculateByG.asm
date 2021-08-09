;Variable definition
;wg - weight gram
;S - subtotal
;sp - standardPrice

;Subtotal
    .MODEL SMALL
    .STACK 100H
    .DATA
    
	wg db
	s db
	sp db
	
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 

    mov ax, @Data
    mov dx,ax
    mov ah,02h 
    add ax, wg
    mul ax, sp
    Mov dh, s
    add dh
    int 21h
	
    MOV AX,4C00H
    INT 21H
main endp
end main	

;Service Tax (6%)
    .MODEL SMALL
    .STACK 100
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
    .STACK 100H
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
