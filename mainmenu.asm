.model small
.stack 100
.data
	line1 db '                       --------------------------$'
	line2 db '                        Welcome to Happy Organic $'
	line3 db '                       --------------------------$'
	line4 db '                               1.Sign up         $'
	line5 db '                               2.Login           $'
	line6 db '                               3.Exit            $'
	line7 db '                       --------------------------$'
	
	logo1 db ' _     ____  ____  ____ ___  _ ____  ____  _____ ____  _      _  ____ $'
	logo2 db '/ \ /|/  _ \/  __\/  __\\  \///  _ \/  __\/  __//  _ \/ \  /|/ \/   _\$'
	logo3 db '| |_||| / \||  \/||  \/| \  / | / \||  \/|| |  _| / \|| |\ ||| ||  /  $'
	logo4 db '| | ||| |-|||  __/|  __/ / /  | \_/||    /| |_//| |-||| | \||| ||  \_ $'
	logo5 db '\_/ \|\_/ \|\_/   \_/   /_/   \____/\_/\_\\____\\_/ \|\_/  \|\_/\____/$'
	
	prompt db '                          Enter Your Choice: $'
	choice db ?
	NL DB 0DH, 0AH, "$"
.code
main proc
	mov ax, @data
	mov ds, ax

	mov ah, 09h
	lea dx, logo1 
	int 21h
	
	MOV AH, 09H
	LEA DX, NL ;new Line
	INT 21H
	
	mov ah, 09h
	lea dx, logo2
	int 21h
	
	MOV AH, 09H
	LEA DX, NL ;new Line
	INT 21H
	
	mov ah, 09h
	lea dx, logo3
	int 21h
	
	MOV AH, 09H
	LEA DX, NL ;new Line
	INT 21H
	 
	mov ah, 09h
	lea dx, logo4
	int 21h
	
	MOV AH, 09H
	LEA DX, NL ;new Line
	INT 21H
	
	mov ah, 09h
	lea dx, logo5
	int 21h
	
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H
	;Double New line 
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H

	mov ah, 09h
	lea dx, line1;
	int 21h
	
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H
	
	mov ah, 09h
	lea dx, line2;
	int 21h
	
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H
	
	mov ah, 09h
	lea dx, line3
	int 21h
	
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H
	
	mov ah, 09h
	lea dx, line4 
	int 21h
	
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H
	
	mov ah, 09h
	lea dx, line5
	int 21h
	
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H
	
	mov ah, 09h
	lea dx, line6
	int 21h

	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H

	mov ah, 09h
	lea dx, line7
	int 21h
	
	MOV AH, 09H	
	LEA DX, NL ;new line
	INT 21H
	
	;prompt choice
	mov ah, 09h
	lea dx, prompt 
	int 21h
	
	;Choice Entered and saved
	mov ah, 01h	   
	int 21h 
	mov choice, al
	
	;new line
	MOV AH, 09H	
	LEA DX, NL 
	INT 21H

	


	mov ah, 4ch	
	int 21h
main endp
end main