.DATA

;MENU FOR SNACKS AND BEVERAGES
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;MAIN MENU INTERFACE
;--------------------------------------------------------------------------------------------------------------------------------------------------

MAINMENU  DB 10,13, "                                                           "
          DB 10,13, "         ___ ___      _      ___  ___                      "
          DB 10,13, "        |  \/  |     (_)     |  \/  |                      "
          DB 10,13, "        | .  . | __ _ _ _ __ | .  . | ___ _ __  _   _      "
          DB 10,13, "        | |\/| |/ _` | | '_ \| |\/| |/ _ \ '_ \| | | |     "
          DB 10,13, "        | |  | | (_| | | | | | |  | |  __/ | | | |_| |     "
          DB 10,13, "        \_|  |_/\__,_|_|_| |_\_|  |_/\___|_| |_|\__,_|     "
          DB 10,13, "                                                           "
	      DB 10,13, "       *===============================================*   "
	      DB 10,13, "       |           Vegetable and Fruit Menu            |   "
	      DB 10,13, "       |-----------------------------------------------|   "
	      DB 10,13, "       |  NO.     Category                             |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  1.      Vegetable                            |   "
          DB 10,13, "       |  2.      Fruits                               |   "
          DB 10,13, "       |  3.      Proceed To Payment                   |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  4.      Back                                 |   "
	      DB 10,13, "       *===============================================*   "
		  DB 10,13, "             Please Enter Your Choice (1-4) : $"

;Error Message
;-------------------------------------------------------------------------------------------------------------------------------------------------------
MENUERROR     DB "                                                  ERROR ! PLEASE ENTER AGAIN ! $"
SUBMENUERROR  DB "                  ERROR ! PLEASE ENTER AGAIN ! $"
ANYKEY        DB 10,13,"                      PLEASE CONTINUE ...$"
NL			  DB 0DH, 0AH, '$'
;----------------------------------------------------------------------------------------------------------------------------------------------------------
;Display Menu Function
;VEGETABLE MANU INTERFACE

VEGEM     DB 10,13, "                                                           "
          DB 10,13, "          __      __        __  __                         "
          DB 10,13, "          \ \    / /       |  \/  |                        "
          DB 10,13, "           \ \  / /__  __ _| \  / | ___ _ __  _   _        "
          DB 10,13, "            \ \/ / _ \/ _` | |\/| |/ _ \ '_ \| | | |       "
          DB 10,13, "             \  /  __/ (_| | |  | |  __/ | | | |_| |       "
          DB 10,13, "              \/ \___|\__, |_|  |_|\___|_| |_|\__,_|       "
          DB 10,13, "                       __/ |                               "
          DB 10,13, "                      |___/                                "
	      DB 10,13, "       *===============================================*   "
	      DB 10,13, "       |           Vegetables Menu                     |   "
	      DB 10,13, "       |-----------------------------------------------|   "
	      DB 10,13, "       |  NO.     Vegetable                            |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  1.      Lettuce                              |   "
          DB 10,13, "       |  2.      Carrot                               |   "
	      DB 10,13, "       |  3.      Cucumber                             |   "
	      DB 10,13, "       |  4.      Potato                               |   "
	      DB 10,13, "       |  5.      Corn                                 |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  6.      Back                                 |   "
	      DB 10,13, "       *===============================================*   "
          DB 10,13, "              Please Enter Your Choice (1-6) : $"

;FRUIT MENU INTERFACE
FRUITM    DB 10,13, "                                                           "
          DB 10,13, "         _____           _ _   __  __                      "
          DB 10,13, "        |  ___| __ _   _(_) |_|  \/  | ___ _ __  _   _     "
          DB 10,13, "        | |_ | '__| | | | | __| |\/| |/ _ \ '_ \| | | |    "
          DB 10,13, "        |  _|| |  | |_| | | |_| |  | |  __/ | | | |_| |    "
          DB 10,13, "        |_|  |_|   \__,_|_|\__|_|  |_|\___|_| |_|\__,_|    "
          DB 10,13, "                                                              "
	      DB 10,13, "       *===============================================*   "
	      DB 10,13, "       |           Fruits Menu                         |   "
	      DB 10,13, "       |-----------------------------------------------|   "
	      DB 10,13, "       |  NO.     Fruits                               |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  1.      Apples                               |   "
	      DB 10,13, "       |  2.      Oranges                              |   "
	      DB 10,13, "       |  3.      Mangoes                              |   "
	      DB 10,13, "       |  4.      Watermelons                          |   "
		  DB 10,13, "       |  5.      Honeydew Melons                      |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  6.      Back                                 |   "
	      DB 10,13, "       *===============================================*   "
          DB 10,13, "              Please Enter Your Choice (1-6) : $"
		  
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;SUB VEGETABLE MENU
;VEGETABLE
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

VEGE1     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                           Lettuce                                  |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.    Leaf Lettuce      Ancient    66         1PCS       RM4      |   "
          DB 10,13, "      |  2.      Arugula         Italy      66         1PCS       RM5      |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "              Please Enter Your Choice (1-3)    : $"

VEGE2     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                           Carrots                                  |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock    Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.     Red Carrots     Pakistan      66      1PCS        RM5      |   "
          DB 10,13, "      |  2.    Mini Carrots     California    66      1PCS        RM10     |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "              Please Enter Your Choice (1-3)    : $"

VEGE3     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                            Cucumber                                |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock    Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.  Japanese Cucumber   Japan       66        1PCS      RM5       |   "
          DB 10,13, "      |  2.  Cucumber            India       66        1PCS      RM3       |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "               Please Enter Your Choice (1-3)    : $"


VEGE4     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                            Potatos                                 |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.   Yellow Potatos     Canada     66         1PCS      RM2       |   "
          DB 10,13, "      |  2.   Russet Potato      US         66         1PCS      RM5       |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "               Please Enter Your Choice (1-3)     : $"


VEGE5     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                              Corn                                  |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category         Brands    Stock      Quantity    Prices  |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.     Cameron Corn     Malaysia     66        1PCS        RM3    |   "
          DB 10,13, "      |  2.     Dent Corn          US         66        1PCS        RM5    |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "               Please Enter Your Choice (1-3)     : $"

FRUIT1    DB 10,13, "      *====================================================================*   "
          DB 10,13, "      |                              Apples                                |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category      Brands      Stock    Quantity     Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.      Fuji         Japan         66        8PCS        RM10     |   "
          DB 10,13, "      |  2.      Pink lady    Australia     66       10PCS        RM10     |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "               Please Enter Your Choice (1-3)   : $"


FRUIT2    DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                              Oranges                               |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.      Seville        Spain        66       10PCS      RM10      |   "
          DB 10,13, "      |  2.      Blood          Italy        66        6PCS      RM10      |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "

          DB 10,13, "               Please Enter Your Choice (1-3)   : $"


FRUIT3    DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                             Mangoes                                |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock      Quantity   Prices  |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.  Alphonso Mango    Portuguese     66         3PCS      RM12    |   "
          DB 10,13, "      |  2.   Francis Mango     Francis       66         3PCS      RM10    |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "               Please Enter Your Choice (1-3)   : $"


FRUIT4    DB 10,13, "      *=====================================================================*   "
	      DB 10,13, "      |                            WaterMelons                              |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock      Quantity   Prices   |   "
          DB 10,13, "      |---------------------------------------------------------------------|   "
          DB 10,13, "      |  1.   Red WaterMelons     Malaysia     66        1PCS        RM3    |   "
          DB 10,13, "      |  2.  Yellow WaterMelons   Malaysia     66        1PCS        RM5    |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                       |   "
	      DB 10,13, "      *=====================================================================*   "

          DB 10,13, "               Please Enter Your Choice (1-3)   : $"


FRUIT5    DB 10,13, "      *=====================================================================*   "
	      DB 10,13, "      |                            Honeydew Melons                          |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category         Brands       Stock    Quantity    Prices  |   "
          DB 10,13, "      |---------------------------------------------------------------------|   "
          DB 10,13, "      |  1.    Galis Melons       Israel        66        1PCS        RM5   |   "
          DB 10,13, "      |  2.    Golden HM         Australia      66        1PCS        RM6   |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                       |   "
	      DB 10,13, "      *=====================================================================*   "

          DB 10,13, "                Please Enter Your Choice (1-3)   : $"


;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;Price ,quantity and total amount
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;VEGETABLE
LEAFLETTUCEPRICE          DW 4
ARUGULAPRICE              DW 5
REDCARROTPRICE            DW 5
MINICARROTPRICE           DW 10
JAPANESECUCUMBERPRICE     DW 5
NCUCUMBERPRICE            DW 3
YELLOWPOTATOPRICE         DW 2
RUSSETPOTATOPRICE         DW 5
CAMERONCORNPRICE          DW 3
DENTCORNPRICE             DW 5

;Fruit
FUJIPRICE                 DW 10
PINKLADYPRICE             DW 10
SERVILLEPRICE             DW 10
BLOODPRICE                DW 10
ALPHONSOMPRICE            DW 12
FRANCISMPRICE             DW 10
REDWMPRICE                DW 3
YELLOWWMPRICE             DW 5
GALIAPRICE                DW 5
GOLDENHMPRICE             DW 6

;cal
QUANTITY_BUFFER           DB 20,?,20+2 dup("$")
QUANTITY                  DW ?
TOTAL                     DW 0
ENTERQTY                  DB "                      Enter Quantity            : $"
CONFIRM                   DB "                      Confirm ? (Yes-1)(No-2)   : $"
YESNO                     DB ?
SPACE                     DB "                    $"
DISPLAY_TOTAL             DB "  TOTAL                     : RM $"
TEN                       DB 10
QUOTIENT                  DB ?
REMAINDER                 DB ?
DISPLAY_PM                DB "                    GO BACK TO PREVIOUS MENU !$"
;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.CODE
COLOR macro CODE, STR
		mov ah, 09h
		mov cx, 1000h
		mov al, 20h
		mov bh, 0
		mov bl, CODE
		int 10h

		lea dx, STR
		mov ah, 09h
		int 21h

		mov bh, 0
		mov ah, 09h
		mov bl, 07h
		int 10h
endm
	  
CONVERTNUM proc 
    mov ax, 0
    mov dl, 10
	mov [di], ax

	STARTC:
		mov dh, [si]
		cmp dh, 0dh
		je ENDC
		sub dh, '0'

		mov al, [di]
		mul dl

		add al, dh
		mov [di], al
		inc si
		jmp STARTC

	ENDC:
		ret
CONVERTNUM endp

CONVERTSTR proc 
    mov ax, [si]
    mov bx, 10
    mov cx, 0

	POPSTACK:
		mov dx, 0
		div bx

		push dx
		inc cx

		cmp ax, 0
		je DISSTACK
		jmp POPSTACK

	DISSTACK:
		pop dx
		add dl, '0'
		mov ah, 02h
		int 21h
		loop DISSTACK
		ret

CONVERTSTR endp


HOMAINMENU PROC

	;CLEAR SCREEN
     MOV AX, 0003H
     INT 10H

	 COLOR 03H, MAINMENU
	 MAINMENUM:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE  MENUERRORM
	 CMP AL,5
	 JGE  MENUERRORM
	 CMP AL,1
	 JE  SELECTM1
	 CMP AL,2
     JE  SELECTM2
	 ;CMP AL,3
	 ;JE  SELECTM3
	 CMP AL,4
	 CALL LOGIN_MENU


	 ;SELECTION VEGETABLE AND FRUIT MENU
     SELECTM1:
	 CALL VEGM

	 SELECTM2:
	 CALL FM

     ;SELECTM3:
     ;CALL PAYMENT

	 MENUERRORM:
	 COLOR 0CH, MENUERROR
	 
	 JMP HOMAINMENU

HOMAINMENU ENDP

;ALL VEEGTABLE MENU AND SUB MENU
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;VEGETABLE MENU
VEGM	PROC

	 ;CLEAR SCREEN
     MOV AX, 0003H
     INT 10H

	 COLOR 02H, VEGEM

	 VEGEMMENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE MENUERROR1
	 CMP AL,7
	 JGE MENUERROR1
	 CMP AL,1
	 JE  SELECTV1
	 CMP AL,2
     JE  SELECTV2
	 CMP AL,3
	 JE  SELECTV3
	 CMP AL,4
	 JE  SELECTV4
	 CMP AL,5
	 JE  SELECTV5
	 CMP AL,6
	 JE  SELECTV6


     SELECTV1:
	 CALL VEGE1M

	 SELECTV2:
	 CALL VEGE2M

     SELECTV3:
	 CALL VEGE3M

     SELECTV4:
	 CALL VEGE4M

	 SELECTV5:
	 CALL VEGE5M

	 SELECTV6:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP HOMAINMENU

	 MENUERROR1:
	 COLOR 0CH, MENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM
     RET

VEGM	ENDP

VEGE1M PROC

	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, VEGE1
	 INT 21H

	 VEGE1MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE  MENUERROR1A
	 CMP AL,4
	 JGE  MENUERROR1A
	 CMP AL,1
	 JE  SELECTV1A
	 CMP AL,2
     JE  SELECTV2A
	 CMP AL,3
	 JE  SELECTV3A

	 MENUERROR1A:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H
	 
	 COLOR 0CH, SUBMENUERROR
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE1M
     RET

     SELECTV1A:
	 CALL SELECTV1A1

	 SELECTV2A:
	 CALL SELECTV2A1

     SELECTV3A:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM 

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM


VEGE1M ENDP

VEGE2M PROC

	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, VEGE2
	 INT 21H

	 VEGE2MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE  MENUERROR1B
	 CMP AL,4
	 JGE  MENUERROR1B
	 CMP AL,1
	 JE  SELECTV1B
	 CMP AL,2
     JE  SELECTV2B
	 CMP AL,3
	 JE  SELECTV3B

	 MENUERROR1B:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE2M
     RET

     SELECTV1B:
	 CALL SELECTV1B1

	 SELECTV2B:
	 CALL SELECTV2B1

     SELECTV3B:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM 

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM


VEGE2M ENDP

VEGE3M PROC

	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, VEGE3
	 INT 21H

	 VEGE3MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE  MENUERROR1C
	 CMP AL,4
	 JGE  MENUERROR1C
	 CMP AL,1
	 JE  SELECTV1C
	 CMP AL,2
     JE  SELECTV2C
	 CMP AL,3
	 JE  SELECTV3C

	 MENUERROR1C:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE3M
     RET

     SELECTV1C:
	 CALL SELECTV1C1

	 SELECTV2C:
	 CALL SELECTV2C1

     SELECTV3C:
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM


VEGE3M ENDP

VEGE4M PROC


	 MOV AH, 09H
	 LEA DX, VEGE4
	 INT 21H

	 VEGE4MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE  MENUERROR1D
	 CMP AL,4
	 JGE  MENUERROR1D
	 CMP AL,1
	 JE  SELECTV1D
	 CMP AL,2
     JE  SELECTV2D
	 CMP AL,3
	 JE  SELECTV3D

	 MENUERROR1D:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE4M
     RET

     SELECTV1D:
	 CALL SELECTV1D1

	 SELECTV2D:
	 CALL SELECTV2D1

     SELECTV3D:
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM


VEGE4M ENDP

VEGE5M PROC


	 MOV AH, 09H
	 LEA DX, VEGE5
	 INT 21H

	 VEGE5MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE  MENUERROR1E
	 CMP AL,4
	 JGE  MENUERROR1E
	 CMP AL,1
	 JE  SELECTV1E
	 CMP AL,2
     JE  SELECTV2E
	 CMP AL,3
	 JE  SELECTV3E

	 MENUERROR1E:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE5M
     RET

     SELECTV1E:
	 CALL SELECTV1E1

	 SELECTV2E:
	 CALL SELECTV2E1

     SELECTV3E:
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM


VEGE5M ENDP

SELECTV1A1 PROC
     MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1A
	 CMP AL,2
     JE  CONFIRMNO1A

	 CONFIRMYES1A:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, LEAFLETTUCEPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
	 ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE1M

	 CONFIRMNO1A:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM
SELECTV1A1 ENDP

SELECTV2A1 PROC
     MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1B
	 CMP AL,2
     JE  CONFIRMNO1B

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1B:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, ARUGULAPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE1M

	 CONFIRMNO1B:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM
SELECTV2A1 ENDP

SELECTV1B1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1C
	 CMP AL,2
     JE  CONFIRMNO1C

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1C:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, REDCARROTPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE2M

	 CONFIRMNO1C:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM

SELECTV1B1 ENDP

SELECTV2B1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	COLOR 09H,ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1D
	 CMP AL,2
     JE  CONFIRMNO1D

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1D:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, MINICARROTPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE2M

	 CONFIRMNO1D:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM

SELECTV2B1 ENDP

SELECTV1C1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1E
	 CMP AL,2
     JE  CONFIRMNO1E

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1E:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, JAPANESECUCUMBERPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE3M

	 CONFIRMNO1E:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM

SELECTV1C1 ENDP

SELECTV2C1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1F
	 CMP AL,2
     JE  CONFIRMNO1F

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1F:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, NCUCUMBERPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE3M

	 CONFIRMNO1F:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM

SELECTV2C1 ENDP

SELECTV1D1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1G
	 CMP AL,2
     JE  CONFIRMNO1G

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1G:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, YELLOWPOTATOPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE4M

	 CONFIRMNO1G:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM
SELECTV1D1 ENDP

SELECTV2D1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1H
	 CMP AL,2
     JE  CONFIRMNO1H

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1H:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, RUSSETPOTATOPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE4M

	 CONFIRMNO1H:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM
SELECTV2D1 ENDP

SELECTV1E1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1I
	 CMP AL,2
     JE  CONFIRMNO1I

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1I:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, CAMERONCORNPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE5M

	 CONFIRMNO1I:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGM
SELECTV1E1 ENDP

SELECTV2E1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES1J
	 CMP AL,2
     JE  CONFIRMNO1J

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES1J:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, DENTCORNPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP VEGE5M

	 CONFIRMNO1J:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H

	 JMP VEGM
SELECTV2E1 ENDP

;ALL FRUIT MENU AND SUB MENU
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;FRUIT MENU
FM	PROC

	 ;CLEAR SCREEN
     MOV AX, 0003H
     INT 10H

	 COLOR 0EH, FRUITM

	 FRUITMMENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JLE  MENUERROR2
	 CMP AL,7
	 JGE  MENUERROR2
	 CMP AL,1
	 JE  SELECTF1
	 CMP AL,2
     JE  SELECTF2
	 CMP AL,3
	 JE  SELECTF3
	 CMP AL,4
	 JE  SELECTF4
	 CMP AL,5
	 JE  SELECTF5
	 CMP AL,6
	 JE  SELECTF6


     SELECTF1:
	 CALL FRUIT1M

	 SELECTF2:
	 CALL FRUIT2M

     SELECTF3:
	 CALL FRUIT3M

     SELECTF4:
	 CALL FRUIT4M

	 SELECTF5:
	 CALL FRUIT5M

	 SELECTF6:

	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP HOMAINMENU

	 MENUERROR2:
	 COLOR 0CH, MENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM
     RET

FM	ENDP

FRUIT1M PROC

	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, FRUIT1
	 INT 21H

	 FRUIT1MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2A
	 CMP AL,4
	 JG  MENUERROR2A
	 CMP AL,1
	 JE  SELECTF1A
	 CMP AL,2
     JE  SELECTF2A
	 CMP AL,3
	 JE  SELECTF3A

	 MENUERROR2A:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT1M
     RET

     SELECTF1A:
	 CALL SELECTF1A1

	 SELECTF2A:
	 CALL SELECTF2A1

     SELECTF3A:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM


FRUIT1M ENDP

FRUIT2M PROC


	 MOV AH, 09H
	 LEA DX, FRUIT2
	 INT 21H

	 FRUIT2MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2B
	 CMP AL,4
	 JG  MENUERROR2B
	 CMP AL,1
	 JE  SELECTF1B
	 CMP AL,2
     JE  SELECTF2B
	 CMP AL,3
	 JE  SELECTF3B

	 MENUERROR2B:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT2M
     RET

     SELECTF1B:
	 CALL SELECTF1B1

	 SELECTF2B:
	 CALL SELECTF2B1

     SELECTF3B:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM


FRUIT2M ENDP

FRUIT3M PROC


	 MOV AH, 09H
	 LEA DX, FRUIT3
	 INT 21H

	 FRUIT3MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2C
	 CMP AL,4
	 JG  MENUERROR2C
	 CMP AL,1
	 JE  SELECTF1C
	 CMP AL,2
     JE  SELECTF2C
	 CMP AL,3
	 JE  SELECTF3C

	 MENUERROR2C:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT3M
     RET

     SELECTF1C:
	 CALL SELECTF1C1

	 SELECTF2C:
	 CALL SELECTF2C1

     SELECTF3C:
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM


FRUIT3M ENDP

FRUIT4M PROC


	 MOV AH, 09H
	 LEA DX, FRUIT4
	 INT 21H

	 FRUIT4MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2D
	 CMP AL,4
	 JG  MENUERROR2D
	 CMP AL,1
	 JE  SELECTF1D
	 CMP AL,2
     JE  SELECTF2D
	 CMP AL,3
	 JE  SELECTF3D

	 MENUERROR2D:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT4M
     RET

     SELECTF1D:
	 CALL SELECTF1D1

	 SELECTF2D:
	 CALL SELECTF2D1

     SELECTF3D:
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM


FRUIT4M ENDP

FRUIT5M PROC


	 MOV AH, 09H
	 LEA DX, FRUIT5
	 INT 21H

	 FRUIT5MENU:

	 MOV AH, 01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2E
	 CMP AL,4
	 JG  MENUERROR2E
	 CMP AL,1
	 JE  SELECTF1E
	 CMP AL,2
     JE  SELECTF2E
	 CMP AL,3
	 JE  SELECTF3E

	 MENUERROR2E:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 0CH, SUBMENUERROR

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT5M
     RET

     SELECTF1E:
	 CALL SELECTF1E1

	 SELECTF2E:
	 CALL SELECTF2E1

     SELECTF3E:
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM


FRUIT5M ENDP

SELECTF1A1 PROC
     MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2A
	 CMP AL,2
     JE  CONFIRMNO2A

	 CONFIRMYES2A:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM
 
	 MOV AX, FUJIPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H


	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT1M

	 CONFIRMNO2A:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM
SELECTF1A1 ENDP

SELECTF2A1 PROC
     MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2B
	 CMP AL,2
     JE  CONFIRMNO2B

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2B:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, PINKLADYPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT1M

	 CONFIRMNO2B:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H

	 JMP FM
SELECTF2A1 ENDP

SELECTF1B1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2C
	 CMP AL,2
     JE  CONFIRMNO2C

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2C:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, SERVILLEPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT2M

	 CONFIRMNO2C:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM

SELECTF1B1 ENDP

SELECTF2B1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2D
	 CMP AL,2
     JE  CONFIRMNO2D

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2D:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, BLOODPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT2M

	 CONFIRMNO2D:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM

SELECTF2B1 ENDP

SELECTF1C1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2E
	 CMP AL,2
     JE  CONFIRMNO2E

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2E:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, ALPHONSOMPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
  
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT3M

	 CONFIRMNO2E:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM

SELECTF1C1 ENDP

SELECTF2C1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2F
	 CMP AL,2
     JE  CONFIRMNO2F

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2F:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, FRANCISMPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT3M

	 CONFIRMNO2F:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM

SELECTF2C1 ENDP

SELECTF1D1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2G
	 CMP AL,2
     JE  CONFIRMNO2G

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2G:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, REDWMPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT4M

	 CONFIRMNO2G:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM
SELECTF1D1 ENDP

SELECTF2D1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2H
	 CMP AL,2
     JE  CONFIRMNO2H

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2H:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, YELLOWWMPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT4M

	 CONFIRMNO2H:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM
SELECTF2D1 ENDP

SELECTF1E1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2I
	 CMP AL,2
     JE  CONFIRMNO2I

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2I:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM

	 MOV AX, GALIAPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT5M

	 CONFIRMNO2I:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM
SELECTF1E1 ENDP

SELECTF2E1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, ENTERQTY

	 LEA DX, QUANTITY_BUFFER
	 MOV AH, 0AH
	 INT 21H

	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 COLOR 09H, CONFIRM

	 MOV AH,01H
	 INT 21H
	 SUB AL,30H

	 CMP AL,1
	 JE  CONFIRMYES2J
	 CMP AL,2
     JE  CONFIRMNO2J

	 MOV AH, 01H
	 INT 21H

	 CONFIRMYES2J:
	 MOV AH,09H
     LEA DX,NL
     INT 21H

	 MOV AH,09H
     LEA DX,SPACE
     INT 21H

	 LEA SI, QUANTITY_BUFFER +2
	 LEA DI, QUANTITY
	 CALL CONVERTNUM
	 
	 MOV AX, GOLDENHMPRICE
	 MUL QUANTITY
	 MOV DX, TOTAL
     ADD DX, AX
	 MOV TOTAL,DX

	 COLOR 09H, DISPLAY_TOTAL

	 LEA SI, TOTAL
	 CALL CONVERTSTR

	 MOV AH,09H
     LEA DX,NL
     INT 21H
 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FRUIT5M

	 CONFIRMNO2J:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H

	 COLOR 06H, DISPLAY_PM

	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H

	 MOV AH,01H
	 INT 21H

	 JMP FM
SELECTF2E1 ENDP
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
