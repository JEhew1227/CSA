.MODEL SMALL
.STACK 100
.DATA
	STR1  DB "*===============================================*$"
	STR2  DB "*           Fruits Menu                         *$"
	STR3  DB "*-----------------------------------------------*$"
	STR4  DB "*  NO.     Fruits                               *$"
        STR5  DB "*-----------------------------------------------*$"
        STR6  DB "*  1.      Apples                               *$"
        STR7  DB "*  2.      Pears                                *$"
	STR8  DB "*  3.      Oranges                              *$"
	STR9  DB "*  4.      Mandarins                            *$"
	STR10 DB "*  5.      Bananas                              *$"
	STR11 DB "*  6.      Mangoes                              *$"
	STR12 DB "*  7.      Watermelons                          *$"
	STR13 DB "*  8.      Honeydew Melons                      *$"
	STR14 DB "*  9.      Durians                              *$"
        STR15 DB "*-----------------------------------------------*$"
        STR16 DB "*  10.      Back                                *$"
	STR17 DB "*===============================================*$"
	STR18 DB "$"
	NUM3 DB ?
	STR19 DB" Enter Your Choice (1-10) : $" 
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
		
		;DISPLAY A STRING12
		MOV AH, 09H
		LEA DX, STR12 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING13
		MOV AH, 09H
		LEA DX, STR13 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING14
		MOV AH, 09H
		LEA DX, STR14 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING15
		MOV AH, 09H
		LEA DX, STR15 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING16
		MOV AH, 09H
		LEA DX, STR16 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING17
		MOV AH, 09H
		LEA DX, STR17 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;DISPLAY A STRING18
		MOV AH, 09H
		LEA DX, STR18 ;MOV DX, OFFSET STR1 
		INT 21H
		
		;DISPLAY A NEW LINE
		MOV AH, 09H
		LEA DX, NL ;MOV DX, OFFSET STR 
		INT 21H
		
		;INPUT
		MOV AH,09H
		LEA DX,STR19
		INT 21H

		MOV AH,01H
		INT 21H
		SUB AL,30H
		MOV NUM3,AL

		MOV AH,09H
		LEA DX,NL
		INT 21H
		
		MOV AX, 4C00H
		INT 21H
		
MAIN ENDP
END MAIN
