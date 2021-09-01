.MODEL SMALL
.STACK 100
.DATA

      include login.asm
	  include menu.asm
	  ;include payment.asm
	  ;include summary.asm
	  
.CODE
MAIN PROC
      MOV AX,@DATA
	  MOV DS,AX
	  
	  CALL login_menu
	  CALL HOMAINMENU
	 
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
ENDPROGRAM:
      MOV AH,4CH
	  INT 21H
	  
MAIN ENDP
END MAIN
