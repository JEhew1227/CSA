.model small
.stack 100
.data
	NL DB 0DH, 0AH, "$"
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
	
	
	test1 db 'Hi $'
	test2 db 'Hello $'
	
	
	;sign up
	promptSign db '                       Enter New User Name: $'
	promptNewPasswrd db '                       Enter New Password: $'
	
	;login
	promptLog db '                       Enter User Name: $'
	promptpasswrd db '                       Enter Password: $' 
	
	
	newUsrname db 31
			   db ?
			   db 31(?)
	
	newPasswrd db 31
			   db ?
			   db 31(?)
	
	
	
.code
main proc
	mov ax, @data
	mov ds, ax

	;new line
	MOV AH, 09H
	LEA DX, NL 
	INT 21H
	
	;display logo
	mov ah, 09h
	lea dx, logo1 
	int 21h
	
	MOV AH, 09H
	LEA DX, NL 
	INT 21H
	
	mov ah, 09h
	lea dx, logo2
	int 21h
	
	MOV AH, 09H
	LEA DX, NL 
	INT 21H
	
	mov ah, 09h
	lea dx, logo3
	int 21h
	
	MOV AH, 09H
	LEA DX, NL 
	INT 21H
	 
	mov ah, 09h
	lea dx, logo4
	int 21h
	
	MOV AH, 09H
	LEA DX, NL 
	INT 21H
	
	mov ah, 09h
	lea dx, logo5
	int 21h
	
	;double new line
	MOV AH, 09H	
	LEA DX, NL 
	INT 21H
	MOV AH, 09H	
	LEA DX, NL 
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
	
	cmp al, 31h
	je signUp	
	cmp al, 32h
	je login
	cmp al, 33h
	je exit
	
	signUp: 
		;new line
		MOV AH, 09H	
		LEA DX, NL 
		INT 21H
		
		;prompt new username
		mov ah, 09h
		lea dx, promptSign
		int 21h
		
		;new username input
		mov ah, 0AH
		mov dx, offset newUsrname
		int 21h
		
		;new line
		MOV AH, 09H	
		LEA DX, NL 
		INT 21H
		
		;prompt new password
		mov ah, 09h
		lea dx, promptNewPasswrd
		int 21h
		
		;new password input
		mov ah, 0AH
		mov dx, offset newPasswrd
		int 21h
		
		
		jmp main
		
		
	login:
		;new line
		MOV AH, 09H	
		LEA DX, NL 
		INT 21H
	
		;prompt new username
		mov ah, 09h
		lea dx, promptLog 
		int 21h
		
		
		
		
		
		
		
		
		jmp done
	
	exit: 
		;newLine
		mov ah, 09h
		lea dx, NL
		int 21h
		
		jmp done
	
	done: 
		mov ah, 4ch	
		int 21h
		

	
main endp
end main
