.data
	NL_1 DB 0DH, 0AH, "$"
	line	 db 0dh,0ah,"                       --------------------------"
			 db 0dh,0ah,"                        Welcome to Happy Organic "
			 db 0dh,0ah,"                       --------------------------"
			 db 0dh,0ah,"                               1.Sign up         "
			 db 0dh,0ah,"                               2.Login           "
			 db 0dh,0ah,"                               3.Exit            "
			 db 0dh,0ah,"                       --------------------------$"
		 
	logo 	db 0dh,0ah, "       _  _   _   ___ _____   _____  ___  ___   _   _  _ ___ ___      "
			db 0dh,0ah, "      | || | /_\ | _ \ _ \ \ / / _ \| _ \/ __| /_\ | \| |_ _/ __|     "
			db 0dh,0ah, "      | __ |/ _ \|  _/  _/\ V / (_) |   / (_ |/ _ \| .` || | (__      "
			db 0dh,0ah, "      |_||_/_/ \_\_| |_|   |_| \___/|_|_\\___/_/ \_\_|\_|___\___|     "
			db "$"
	
	prompt db 			'                          Enter Your Choice: $'
	choice db ?
	;invalid choice
	unavailable_choice db "                  Choice unavailable. Please Enter Again. ","$"
	
	;sign up
	promptSign db 		'                        Enter New User Name: $'
	promptNewPasswrd db '                        Enter New Password : $'
	
	;login
	promptLog db 		'                           Enter User Name: $'
	promptpasswrd db 	'                            Enter Password: $' 
	
	;acc variable
	newUsrname db 31,?, 31 dup ("$")
	newPasswrd db 31,?, 31 dup ("$")
	
	signSuccess db "                            Successfully Registered $"
	logSuccess db "                Successfully logged in. Press Enter To Continue$"
	
	;acc1
	loginUserName db 31, ?, 31 dup ("$")
	valid_username db 0
	loginPassword db 31, ?, 31 dup ("$")
	valid_password db 0
	
	;login successful
	
	;boolean 
	VALID_SIGNUP_USER db 0
	
	;incorrect username
	incorrectCredentials db "                            User not found $"
	
	;signError
	signError db "                  Please Enter Something into the Field$"
	
	
	
.code 

COLOR macro CODE, STR
		mov ah, 09h
		mov cx, 1000h
		mov al, 20h
		mov bl, CODE
		int 10h

		lea dx, STR
		mov ah, 09h
		int 21h

		mov ah, 09h
		mov bl, 07h
		int 10h
endm

LOGIN_MENU proc
	;clear screen
	mov ax, 0003h
    	int 10h
	
	
	;new line
	MOV AH, 09H
	LEA DX, NL_1 
	INT 21H
	
	;display logo
	COLOR 03H, logo
	
	;double new line
	MOV AH, 09H	
	LEA DX, NL_1 
	INT 21H
	MOV AH, 09H	
	LEA DX, NL_1 
	INT 21H

	;mov ah, 09h
	;lea dx, line
	;int 21h
	COLOR 09H, line
	
	MOV AH, 09H	
	LEA DX, NL_1 
	INT 21H
	
	;prompt choice
	mov ah, 09h
	lea dx, prompt 
	int 21h
	
	;Choice Entered and saved
	mov ah, 01h	   
	int 21h 
	
	cmp al, "1"
	je CALL_OPTION1	
	cmp al, "2"
	je CALL_OPTION2
	cmp al, "3"
	je CALL_OPTION3
	call ENDPROGRAM
	
	jmp choice_error
	
	choice_error:
		mov ah, 09h
		lea dx, NL_1
		int 21h
	
		;mov ah, 09h
		;lea dx, unavailable_choice
		;int 21h
		COLOR 04H, unavailable_choice
			
		mov ah,08h
		int 21h
	
		jmp LOGIN
		
	CALL_OPTION1:
		call signUp
	CALL_OPTION2:
		call login
	CALL_OPTION3:
		call ENDPROGRAM
	ret
LOGIN_MENU endp
	
signUp proc
		;new line
		MOV AH, 09H	
		LEA DX, NL_1 
		INT 21H
		
		;prompt new username
		mov ah, 09h
		lea dx, promptSign
		int 21h
		
		;new username input
		mov ah, 0AH
		lea dx, newUsrname
		int 21h
		
		;new line
		MOV AH, 09H	
		LEA DX, NL_1 
		INT 21H
		
		;prompt new password
		mov ah, 09h
		lea dx, promptNewPasswrd
		int 21h
		
		;new password input
		mov ah, 0AH
		lea dx, newPasswrd
		int 21h
		
		MOV AH, 09H	
		LEA DX, NL_1 
		INT 21H
		
		VALIDATE_SIGNUP:	;validate UserName input
			mov bx, 1
			cmp VALID_SIGNUP_USER, 1
			je VALIDATE_SIGNPASS
			
			VALIDATE_SIGNUSER:
				inc bx
				mov dl, newUsrname[bx]
				inc bx
				cmp dl, 0dh
				jne VALIDATE_NEXT1
				jmp SIGN_ERROR
				
			VALIDATE_SIGNPASS:
				inc bx
				mov dl, newPasswrd[bx]
				cmp dl, 0dh
				jne SUCCESS1
			VALIDATE_NEXT1:
				mov VALID_SIGNUP_USER, 1
				jmp VALIDATE_SIGNPASS
		
		SUCCESS1:
			;mov ah, 09h
			;lea dx, signSuccess
			;int 21h
			COLOR 02H, logSuccess
			
			
			mov ah, 0AH
			int 21h
			
			call  LOGIN_MENU
		
		SIGN_ERROR:
			;mov ah, 09h
			;lea dx, signError
			;int 21h
			COLOR 04H, signError
			
			
			call signUp
			
			ret
			
		
		ret
signUp endp

login proc
		
		;new line
		MOV AH, 09H	
		LEA DX, NL_1 
		INT 21H
	
		;prompt new username
		mov ah, 09h
		lea dx, promptLog 
		int 21h
		
		mov ah, 0AH
		lea dx, loginUserName
		int 21h
		
		MOV AH, 09H	
		LEA DX, NL_1 
		INT 21H
		
		mov ah, 09h
		lea dx, promptpasswrd 
		int 21h
		
		mov ah, 0AH
		lea dx, loginPassword
		int 21h
		
		MOV AH, 09H	
		LEA DX, NL_1 
		INT 21H
	
	validate_login:
		mov bx, 1
		cmp valid_username, 1
		je validate_password
		
		validate_username:
			inc bx
			mov dl, newUsrname[bx]
			cmp dl, 0dh
			je validate_next
			cmp dl, loginUserName[bx]
			je validate_username
			jmp login_error
		validate_password:
			inc bx
			mov dl, newPasswrd[bx]
			cmp dl, 0dh
			je success
			cmp dl, loginPassword[bx]
			je validate_password
			jmp login_error
		validate_next:
			mov valid_username, 1
			jmp validate_login

	
	login_error:
		;mov ah, 09h
		;lea dx, incorrectCredentials
		;int 21h
		COLOR 04H, incorrectCredentials
		
		call LOGIN
		ret
		
	success:
		;mov ah, 09h
		;lea dx, logSuccess
		;int 21h
		COLOR 02H, logSuccess
		
		mov ah, 0AH
		int 21h
		
		
		CALL HOMAINMENU
		
	ret
login endp
