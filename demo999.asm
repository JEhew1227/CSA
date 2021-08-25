.MODEL SMALL
.STACK 100
.DATA

;MENU FOR SNACKS AND BEVERAGES
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;MAIN MENU INTERFACE
;----------------------------------------------------------------------------------------

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
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  3.      Back                                 |   "
	      DB 10,13, "       *===============================================*   "
		  DB 10,13, "             Please Enter Your Choice (1-3) : $" 
		  
;Error Message
;-----------------------------------------------------------------------------------------
MENUERROR     DB 10,13,"                ERROR ! PLEASE ENTER AGAIN ! $"
ANYKEY        DB 10,13,"                      PLEASE CONTINUE ...$"
NL			  DB 0DH, 0AH, '$'
;-----------------------------------------------------------------------------------------
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
	      DB 10,13, "       |  5.      Onion                                |   "
	      DB 10,13, "       |  6.      Garlic                               |   "
	      DB 10,13, "       |  7.      Corn                                 |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  8.      Back                                 |   "
	      DB 10,13, "       *===============================================*   "
          DB 10,13, "              Please Enter Your Choice (1-8) : $"
		  
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
          DB 10,13, "       |  2.      Pears                                |   "
	      DB 10,13, "       |  3.      Oranges                              |   "
	      DB 10,13, "       |  4.      Mangoes                              |   "
	      DB 10,13, "       |  5.      Watermelons                          |   "
       	  DB 10,13, "       |  6.      Honeydew Melons                      |   "
		  DB 10,13, "       |  7.      Durians                              |   "
          DB 10,13, "       |-----------------------------------------------|   "
          DB 10,13, "       |  8.      Back                                |   "
	      DB 10,13, "       *===============================================*   "
          DB 10,13, "              Please Enter Your Choice (1-10) : $"
		  
;------------------------------------------------------------------------------------------
;SUB VEGETABLE MENU                                                                         
;VEGETABLE 
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------			  

VEGE1     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                                Lettuce                             |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.    Leaf Lettuce      Ancient    666        1PCS       RM4      |   "
          DB 10,13, "      |  2.      Arugula         Italy      666        1PCS       RM5      |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                 Please Enter Your Choice (1-3) : $"
		  
VEGE2     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                          Carrots                                   |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock    Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.     Red Carrots     Pakistan      666     1PCS        RM5      |   "
          DB 10,13, "      |  2.    Mini Carrots     California    666     1PCS        RM10     |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                 Please Enter Your Choice (1-3) : $" 
		   
VEGE3     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                                Cucumber                            |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock    Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.  Japanese Cucumber   Japan       666       1PCS      RM5       |   "
          DB 10,13, "      |  2.  Cucumber            India       666       1PCS      RM3       |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                  Please Enter Your Choice (1-3) : $" 


VEGE4     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                                Potatos                             |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.   Yellow Potatos     Canada     666        1PCS      RM2       |   "
          DB 10,13, "      |  2.   Russet Potato      US         666        1PCS      RM5       |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                  Please Enter Your Choice (1-3)  : $" 


VEGE5     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                                Onions                              |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category          Brands     Stock     Quantity   Prices  |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.   Large Red Onions      Italy      666      10PCS       RM8    |   "
          DB 10,13, "      |  2.    Sweet Onions         Georgia    666      10PCS       RM8    |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                  Please Enter Your Choice (1-3)  : $" 


VEGE6     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                                Garlic                              |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.    White Garlic       China     666       10PCS        RM6     |   "
          DB 10,13, "      |  2.  Asiatic Hardneck     China     666       10PCS        RM5     |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                  Please Enter Your Choice (1-3)  : $" 

VEGE7     DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                                   Corn                             |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category         Brands    Stock      Quantity    Prices  |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.     Cameron Corn     Malaysia    666        1PCS        RM3    |   "
          DB 10,13, "      |  2.     Dent Corn          US        666        1PCS        RM5    |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                  Please Enter Your Choice (1-3)  : $" 
		  
FRUIT1    DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category      Brands      Stock    Quantity     Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.      Fuji         Japan         666       8PCS        RM10     |   "
          DB 10,13, "      |  2.      Pink lady    Australia     666      10PCS        RM10     |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                  Please Enter Your Choice (1-3): $" 



FRUIT2    DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                                Pear                                |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.    Green Anjou      Belgium     666        1PCS      RM3       |   "
          DB 10,13, "      |  2.      Bartlett       England     666        1PCS      RM5       |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "

          DB 10,13, "                  Please Enter Your Choice (1-3): $" 


FRUIT3    DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                              Oranges                               |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands     Stock     Quantity   Prices    |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.      Seville        Spain       666       10PCS      RM10      |   "
          DB 10,13, "      |  2.      Blood          Italy       666        6PCS      RM10      |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "

          DB 10,13, "                  Please Enter Your Choice (1-3): $" 


FRUIT4    DB 10,13, "      *====================================================================*   "
	      DB 10,13, "      |                             Mangoes                                |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock      Quantity   Prices  |   "
          DB 10,13, "      |--------------------------------------------------------------------|   "
          DB 10,13, "      |  1.  Alphonso Mango    Portuguese     666        3PCS      RM12    |   "
          DB 10,13, "      |  2.   Francis Mango     Francis       666        3PCS      RM10    |   "
	      DB 10,13, "      |--------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                      |   "
	      DB 10,13, "      *====================================================================*   "
          DB 10,13, "                  Please Enter Your Choice (1-3): $" 
 

FRUIT5    DB 10,13, "      *=====================================================================*   "
	      DB 10,13, "      |                            WaterMelons                              |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category        Brands      Stock      Quantity   Prices   |   "
          DB 10,13, "      |---------------------------------------------------------------------|   "
          DB 10,13, "      |  1.   Red WaterMelons     Malaysia     666       1PCS        RM3    |   "
          DB 10,13, "      |  2.  Yellow WaterMelons   Malaysia     666       1PCS        RM5    |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                       |   "
	      DB 10,13, "      *=====================================================================*   "

          DB 10,13, "                  Please Enter Your Choice (1-3): $" 


FRUIT6    DB 10,13, "      *=====================================================================*   "
	      DB 10,13, "      |                            Honeydew Melons                          |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category         Brands       Stock    Quantity    Prices  |   "
          DB 10,13, "      |---------------------------------------------------------------------|   "
          DB 10,13, "      |  1.    Galis Melons       Israel        666       1PCS        RM5   |   "
          DB 10,13, "      |  2.    Golden HM         Australia      666       1PCS        RM6   |   "
	      DB 10,13, "      |---------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                       |   "
	      DB 10,13, "      *=====================================================================*   "

          DB 10,13, "                   Please Enter Your Choice (1-3): $" 


FRUIT7    DB 10,13, "      *======================================================================*   "
	      DB 10,13, "      |                            Durians                                   |   "
	      DB 10,13, "      |----------------------------------------------------------------------|   "
	      DB 10,13, "      |  NO.     Category       Brands       Stock    Quantity     Prices    |   "
          DB 10,13, "      |----------------------------------------------------------------------|   "
          DB 10,13, "      |  1.      D24           Malaysia       666       1PCS        RM30     |   "
		  DB 10,13, "      |  2.    Musang King     Malaysia       666       1PCS        RM40     |   "
	      DB 10,13, "      |----------------------------------------------------------------------|   "
	      DB 10,13, "      |  3.      Back                                                        |   "
	      DB 10,13, "      *======================================================================*   "
          DB 10,13, "                    Please Enter Your Choice (1-4): $" 
		  
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;Price ,quantity and total amount		  
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;VEGETABLE
LEAFL         DB 4
ARUGULA       DB 5
REDC          DB 5
MINIC         DB 10
JAPANESEC     DB 5
NCUC          DB 3
YELLOWP       DB 2
RUSSETP       DB 5
LARGEREDO     DB 8
SWEETO        DB 8
WHITEG        DB 6
ASIA          DB 5
CAMERON       DB 3
DENTC         DB 5

;Fruit
FUJI          DB 10
PINKL         DB 10
GREENA        DB 3
BARTLETT      DB 5
SERVILLE      DB 10
BLOOD         DB 10
ALPHONSOM     DB 12
FRANCISM      DB 10
REDWM         DB 3
YELLOWWM      DB 5
GALIA         DB 5
GOLDENHM      DB 6
D24           DB 30
MUSANGKING    DB 40

;cal
QUANTITY      DB ?
TOTAL         DB ?
ENTERQTY      DB "                      Enter Quantity            : $"
CONFIRM       DB "                      Confirm ? (Yes-1)(No-2)   : $"
YESNO         DB ?
SPACE         DB "                    $"
DISPLAY1      DB " PRODUCT(S) SUCCESSFULLY ADDED. TOTAL : $"
TEN           DB 10
QUOTIENT      DB ?
REMAINDER     DB ?
DISPLAY2      DB "                      GO BACK TO PREVIOUS MENU $"
;-------------------------------------------------------------------------------------

.CODE
MAIN PROC
	 MOV AX, @DATA
	 MOV DS, AX
	 
	 CALL HOMAINMENU
	 
	 MOV AX, 4C00H
	 INT 21H
MAIN ENDP

HOMAINMENU PROC

	;CLEAR SCREEN
     MOV AX, 0003H
     INT 10H
	 
	 MOV AH, 09H
	 LEA DX, MAINMENU
	 INT 21H
	 
	 MAINMENUM:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERRORM
	 CMP AL,4
	 JG  MENUERRORM		
	 CMP AL,1
	 JE  SELECTM1
	 CMP AL,2
     JE  SELECTM2
	 CMP AL,3
	 JE  SELECTM3
	 

	 ;SELECTION VEGETABLE AND FRUIT MENU
     SELECTM1:
	 CALL VEGM
	 
	 SELECTM2:
	 CALL FM

     SELECTM3:
     CALL MAINMENUM	
    
	 MENUERRORM:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 JMP MAIN
     RET
 
HOMAINMENU ENDP

;ALL VEEGTABLE MENU AND SUB MENU
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;VEGETABLE MENU
VEGM	PROC

	 ;CLEAR SCREEN
     MOV AX, 0003H
     INT 10H
	 
	 MOV AH, 09H
	 LEA DX, VEGEM
	 INT 21H
	 
	 VEGEMMENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR1
	 CMP AL,9
	 JG  MENUERROR1 	 
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
	 CMP AL,7
	 JE  SELECTV7
	 CMP AL,8
	 JE  SELECTV8

	
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
	 CALL VEGE6M
	 
	 SELECTV7:
	 CALL VEGE7M
	 
	 SELECTV8:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP HOMAINMENU

	 MENUERROR1:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 LEA DX, VEGE1
	 INT 21H
	 
	 VEGE1MENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR1A
	 CMP AL,4
	 JG  MENUERROR1A 		
	 CMP AL,1
	 JE  SELECTV1A
	 CMP AL,2
     JE  SELECTV2A
	 CMP AL,3
	 JE  SELECTV3A

	 MENUERROR1A:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM

    
VEGE1M ENDP

VEGE2M PROC

	 
	 MOV AH, 09H
	 LEA DX, VEGE2
	 INT 21H
	 
	 VEGE2MENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR1B
	 CMP AL,4
	 JG  MENUERROR1B 		
	 CMP AL,1
	 JE  SELECTV1B
	 CMP AL,2
     JE  SELECTV2B
	 CMP AL,3
	 JE  SELECTV3B

	 MENUERROR1B:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM


VEGE2M ENDP

VEGE3M PROC

	 
	 MOV AH, 09H
	 LEA DX, VEGE3
	 INT 21H
	 
	 VEGE3MENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR1C
	 CMP AL,4
	 JG  MENUERROR1C 		
	 CMP AL,1
	 JE  SELECTV1C
	 CMP AL,2
     JE  SELECTV2C
	 CMP AL,3
	 JE  SELECTV3C

	 MENUERROR1C:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 JL  MENUERROR1D
	 CMP AL,4
	 JG  MENUERROR1D 		
	 CMP AL,1
	 JE  SELECTV1D
	 CMP AL,2
     JE  SELECTV2D
	 CMP AL,3
	 JE  SELECTV3D

	 MENUERROR1D:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 JL  MENUERROR1E
	 CMP AL,4
	 JG  MENUERROR1E 		
	 CMP AL,1
	 JE  SELECTV1E
	 CMP AL,2
     JE  SELECTV2E
	 CMP AL,3
	 JE  SELECTV3E

	 MENUERROR1E:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM


VEGE5M ENDP

VEGE6M PROC

	 
	 MOV AH, 09H
	 LEA DX, VEGE6
	 INT 21H
	 
	 VEGE6MENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR1F
	 CMP AL,4
	 JG  MENUERROR1F 		
	 CMP AL,1
	 JE  SELECTV1F
	 CMP AL,2
     JE  SELECTV2F
	 CMP AL,3
	 JE  SELECTV3F

	 MENUERROR1F:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGE6M
     RET
	 
     SELECTV1F:
	 CALL SELECTV1F1
	 
	 SELECTV2F:
	 CALL SELECTV2F1
	 
     SELECTV3F: 
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM


VEGE6M ENDP

VEGE7M PROC

	 
	 MOV AH, 09H
	 LEA DX, VEGE7
	 INT 21H
	 
	 VEGE7MENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR1G
	 CMP AL,4
	 JG  MENUERROR1G		
	 CMP AL,1
	 JE  SELECTV1G
	 CMP AL,2
     JE  SELECTV2G
	 CMP AL,3
	 JE  SELECTV3G

	 MENUERROR1G:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGE7M
     RET
	 
     SELECTV1G:
	 CALL SELECTV1G1
	 
	 SELECTV2G:
	 CALL SELECTV2G1
	 
     SELECTV3G: 
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM


VEGE7M ENDP

SELECTV1A1 PROC
     MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, LEAFL
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, ARUGULA
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, REDC
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, MINIC
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, JAPANESEC
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, NCUC
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, YELLOWP
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, RUSSETP
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, LARGEREDO
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, SWEETO
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM
SELECTV2E1 ENDP

SELECTV1F1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES1K
	 CMP AL,2
     JE  CONFIRMNO1K
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES1K:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, WHITEG
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGE6M

	 CONFIRMNO1K:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM
SELECTV1F1 ENDP

SELECTV2F1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES1L
	 CMP AL,2
     JE  CONFIRMNO1L
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES1L:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, ASIA
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGE6M

	 CONFIRMNO1L:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM
SELECTV2F1 ENDP

SELECTV1G1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES1M
	 CMP AL,2
     JE  CONFIRMNO1M
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES1M:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, CAMERON
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGE7M

	 CONFIRMNO1M:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM
SELECTV1G1 ENDP

SELECTV2G1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES1N
	 CMP AL,2
     JE  CONFIRMNO1N
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES1N:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, DENTC
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGE7M

	 CONFIRMNO1N:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP VEGM
SELECTV2G1 ENDP

;ALL FRUIT MENU AND SUB MENU
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;FRUIT MENU
FM	PROC

	 ;CLEAR SCREEN
     MOV AX, 0003H
     INT 10H
	 
	 MOV AH, 09H
	 LEA DX, FRUITM
	 INT 21H
	 
	 FRUITMMENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2
	 CMP AL,9
	 JG  MENUERROR2 	 
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
	 CMP AL,7
	 JE  SELECTF7
	 CMP AL,8
	 JE  SELECTF8

	
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
	 CALL FRUIT6M
	 
	 SELECTF7:
	 CALL FRUIT7M
	 
	 SELECTF8:
	 
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP HOMAINMENU

	 MENUERROR2:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 LEA DX, MENUERROR
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM


FRUIT5M ENDP

FRUIT6M PROC

	 
	 MOV AH, 09H
	 LEA DX, FRUIT6
	 INT 21H
	 
	 FRUIT6MENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2F
	 CMP AL,4
	 JG  MENUERROR2F 		
	 CMP AL,1
	 JE  SELECTF1F
	 CMP AL,2
     JE  SELECTF2F
	 CMP AL,3
	 JE  SELECTF3F

	 MENUERROR2F:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FRUIT6M
     RET
	 
     SELECTF1F:
	 CALL SELECTF1F1
	 
	 SELECTF2F:
	 CALL SELECTF2F1
	 
     SELECTF3F: 
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM


FRUIT6M ENDP

FRUIT7M PROC

	 
	 MOV AH, 09H
	 LEA DX, FRUIT7
	 INT 21H
	 
	 FRUIT7MENU:
	 
	 MOV AH, 01H	
	 INT 21H
	 SUB AL,30H

	 CMP AL,0
	 JL  MENUERROR2G
	 CMP AL,4
	 JG  MENUERROR2G		
	 CMP AL,1
	 JE  SELECTF1G
	 CMP AL,2
     JE  SELECTF2G
	 CMP AL,3
	 JE  SELECTF3G

	 MENUERROR2G:
	 MOV AH, 09H
	 LEA DX, MENUERROR
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FRUIT7M
     RET
	 
     SELECTF1G:
	 CALL SELECTF1G1
	 
	 SELECTF2G:
	 CALL SELECTF2G1
	 
     SELECTF3G: 
     MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM


FRUIT7M ENDP

SELECTF1A1 PROC
     MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, FUJI
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, PINKL
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, GREENA
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, BARTLETT
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, SERVILLE
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, BLOOD
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, ALPHONSOM
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, FRANCISM
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, REDWM
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
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
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
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
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, YELLOWWM
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
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
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM
SELECTF2E1 ENDP

SELECTF1F1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES2K
	 CMP AL,2
     JE  CONFIRMNO2K
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES2K:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, GALIA
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FRUIT6M

	 CONFIRMNO2K:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM
SELECTF1F1 ENDP

SELECTF2F1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES2L
	 CMP AL,2
     JE  CONFIRMNO2L
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES2L:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, GOLDENHM
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FRUIT6M

	 CONFIRMNO2L:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM
SELECTF2F1 ENDP

SELECTF1G1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES2M
	 CMP AL,2
     JE  CONFIRMNO2M
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES2M:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, D24
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FRUIT7M

	 CONFIRMNO2M:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM
SELECTF1G1 ENDP

SELECTF2G1 PROC
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ENTERQTY
	 INT 21H
	 
	 MOV AH, 01H
	 INT 21H
	 MOV QUANTITY,AL
	 
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH, 09H
	 LEA DX, CONFIRM
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 SUB AL,30H
	 
	 CMP AL,1
	 JE  CONFIRMYES2N
	 CMP AL,2
     JE  CONFIRMNO2N
	 
	 MOV AH, 01H
	 INT 21H
	 
	 CONFIRMYES2N:
	 MOV AH,09H
     LEA DX,NL
     INT 21H
	 
	 MOV AH,09H
     LEA DX,SPACE
     INT 21H
	 
	 MOV DX,0
	 MOV AH,02H
	 MOV DL, QUANTITY
	 INT 21H
	 
	 MOV AH,09H
	 LEA DX, DISPLAY1
	 INT 21H
	 
	 MOV AL, MUSANGKING
	 MOV BL, QUANTITY
	 SUB BL,30H
	 MUL BL
	 MOV TOTAL,AL
	 
	 MOV BL,10
	 DIV BL
	 MOV QUOTIENT, AL
	 MOV REMAINDER,AH
	 
	 MOV AH,02H
	 MOV DL,QUOTIENT
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH,02H
	 MOV DL,REMAINDER
	 ADD DL,30H
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FRUIT7M

	 CONFIRMNO2N:
	 MOV AH, 09H
	 LEA DX, NL
	 INT 21H	
	 
	 MOV AH, 09H
	 LEA DX, DISPLAY2
	 INT 21H
	 
	 MOV AH, 09H
	 LEA DX, ANYKEY
	 INT 21H
	 
	 MOV AH,01H
	 INT 21H
	 
	 JMP FM
SELECTF2G1 ENDP
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;END OF PROGRAM
END MAIN

