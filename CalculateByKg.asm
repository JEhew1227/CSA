Variable definition
P - productPrice
S - subtotal
sp - standardPrice

.DATA

.CODE
MAIN PROC 
MOV AX,@DATA
MOV DS,AX 

mov ax, @Data
mov dx,ax
mov ah, 02H
mov ax, wk
mul ax, sp
mov dh, s
add dh
int 21h



Service Tax (6%)
.DATA

num1 db 0.06

.CODE
MAIN PROC 
MOV AX,@DATA
MOV DS,AX 

mov ah, 02H
mov ax, p
mov dl, num1
mul dl
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
