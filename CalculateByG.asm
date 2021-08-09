Variable definition
P - productPrice
S - subtotal
sp - standardPrice

		Subtotal
.DATA

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
		
		Service Tax (6%)
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
mov ax, p
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
