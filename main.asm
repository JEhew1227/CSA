.MODEL SMALL
.STACK 100
.DATA

      include loginM~1.asm
	  include menu.asm
	  include quanti~1.asm
	  include payment.asm
	  ;include summary.asm
	  
.CODE
MAIN PROC
      MOV AX,@DATA
	  MOV DS,AX
	  
	  CALL login_menu
	  CALL HOMAINMENU
	  CALL payment
	  
ENDPROGRAM:
      MOV AH,4CH
	  INT 21H
	  
MAIN ENDP
END MAIN

