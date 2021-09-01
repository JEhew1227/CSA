.MODEL SMALL
.STACK 100
.DATA
    
	msg db "I think i gg liao$"
	
.CODE

; Color Codes (format: XY, X = background, Y = foreground)
	; 0 = Black
	; 1 = Blue
	; 2 = Green
	; 3 = Aqua
	; 4 = Red
	; 5 = Purple
	; 6 = Yellow
	; 7 = White
	; 8 = Gray
	; 9 = Light Blue
	CHANGE_COLOR macro colorCode, msg
		mov ah, 09h
		mov cx, 1000h
		mov al, 20h
		mov bl, colorCode
		int 10h

		lea dx, msg
		mov ah, 09h
		int 21h

		mov ah, 09h
		mov bl, 07h
		int 10h
	endm

MAIN PROC

        MOV AX, @DATA
		MOV DS, AX
		
		CHANGE_COLOR 04H,msg
		
		MOV AH, 4CH
		INT 21H
		
MAIN ENDP
END MAIN
