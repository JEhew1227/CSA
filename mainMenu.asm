.MODEL SMALL
.STACK 100
.DATA
	STR1 DB "*===============================================*$"
	STR2 DB "*           Vegetable and Fruit Menu            *$"
	STR3 DB "*-----------------------------------------------*$"
	STR4 DB "*  NO.     Category                             *$"
        STR5 DB "*-----------------------------------------------*$"
        STR6 DB "*  1.      Vegetable                            *$"
        STR7 DB "*  2.      Fruits                               *$"
        STR8 DB "*-----------------------------------------------*$"
        STR9 DB "*  3.      Back                                 *$"
	STR10 DB"*===============================================*$"
	STR11 DB"$"
	NUM1 DB ?
	STR12 DB" Enter Your Choice (1-3) : $" 
	NL DB 0DH, 0AH, "$"
.CODE
MAIN PROC

MOV AX, @DATA
		MOV DS, AX
		
		;DISPLAY A STRING1
		MOV AH, 09H
		LEA DX, STR1 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING2
		MOV AH, 09H
		LEA DX, STR2 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING3
		MOV AH, 09H
		LEA DX, STR3 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING4
		MOV AH, 09H
		LEA DX, STR4 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING5
		MOV AH, 09H
		LEA DX, STR5 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING6
		MOV AH, 09H
		LEA DX, STR6 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING7
		MOV AH, 09H
		LEA DX, STR7 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING8
		MOV AH, 09H
		LEA DX, STR8 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING9
		MOV AH, 09H
		LEA DX, STR9 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING10
		MOV AH, 09H
		LEA DX, STR10 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING11
		MOV AH, 09H
		LEA DX, STR11 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;INPUT
		MOV AH,09H
		LEA DX,STR12
		INT 21H

		MOV AH,01H
		INT 21H
		SUB AL,30H
		MOV NUM1,AL

		MOV AH,09H
		LEA DX,NL
		INT 21H
		
		MOV AX, 4C00H
		INT 21H
		
MAIN ENDP
END MAIN
