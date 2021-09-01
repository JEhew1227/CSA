.MODEL SMALL
.STACK 100
.DATA

	msg db "I think i gg liao$"

.CODE


MAIN PROC

        MOV AX, @DATA
		MOV DS, AX

		CHANGE_COLOR 04H,msg

		MOV AH, 4CH
		INT 21H

MAIN ENDP
END MAIN
