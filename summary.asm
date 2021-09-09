.model small
.stack 100
.data
SummaryLogo 	DB 10,13, "      ___ _   _ __  __ __  __   _   _____   __    "
				DB 10,13, "     / __| | | |  \/  |  \/  | /_\ | _ \ \ / /    "
				DB 10,13, "     \__ \ |_| | |\/| | |\/| |/ _ \|   /\ V /     "
				DB 10,13, "     |___/\___/|_|  |_|_|  |_/_/ \_\_|_\ |_|     $"

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
    NL DB 0AH,0DH,"$"
    ;prodName dw offset
    ;QUANTITY  db ?
    ;SUBTOTAL db ?
    ;DISPLAY_TOTAL db ?
    

.code
COLOR macro CODE, STR
		mov ah, 09h
		mov cx, 1000h
		mov al, 20h
		mov bl, CODE
		int 10h

		lea dx, STR
		mov ah, 09h
		int 21h

		mov ah, 09h
		mov bl, 07h
		int 10h
endm

main proc
	mov ax, @data
	mov ds, ax

    ;start
        ;CLEAR SCREEN
        mov ax, 0003H
        int 10H

        COLOR 05H, SummaryLogo
	
        mov AH,09H
        lea DX,summaryT
        int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG6
        int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 

    ;DisplayProd
    dloop_start:
        ;mov ah,09H
        ;lea dx,prodName
        ;int 21H

        ;mov ah,09H
        ;lea dx,QUANTITY
        ;int 21H

        ;mov ah,09H
        ;lea dx,price
        ;int 21H

        ;LEA DX,NL
        ;MOV AH,9
        ;INT 21H 

        ;loop dloop_start
        ;jmp show_subtotal

    ;SubTotalnTotal
    show_subtotal:
        mov AH,09H
        lea DX,MSG8
        int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG9
        int 21H

        ;mov ah,09H
        ;lea dx,SUBTOTAL
        ;int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG10
        int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG11
        int 21H

        ;mov ah,09H
        ;lea dx,DISPLAY_TOTAL
        ;int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 
        
        mov AH,09H
        lea DX,MSG12
        int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 

        mov AH,09H
        lea DX,MSG13
        int 21H

        LEA DX,NL
        MOV AH,9
        INT 21H 
	
	mov ah, 4CH
	int 21h
main endp	
end main
