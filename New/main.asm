.MODEL SMALL
.STACK 100
.DATA

      include login.asm
	  include menu.asm
	  include payment.asm
	  ;include summary.asm
	  
.CODE
MAIN PROC
      MOV AX,@DATA
	  MOV DS,AX
	  
	  CALL login
	  CALL HOMAINMENU
	  CALL payment
	  
ENDPROGRAM:
      MOV AH,4CH
	  INT 21H
	  
MAIN ENDP
END MAIN

