.data
	next_Line DB 0DH, 0AH, "$"
	line db 0dh,0ah,"                       --------------------------"
		 db 0dh,0ah,"                        Welcome to Happy Organic "
		 db 0dh,0ah,"                       --------------------------"
		 db 0dh,0ah,"                               1.Sign up         "
		 db 0dh,0ah,"                               2.Login           "
		 db 0dh,0ah,"                               3.Exit            "
		 db 0dh,0ah,"                       --------------------------$"
		 
	logo 	db 0dh,0ah, "  _  _   _   ___ _____   _____  ___  ___   _   _  _ ___ ___ "
			db 0dh,0ah, " | || | /_\ | _ \ _ \ \ / / _ \| _ \/ __| /_\ | \| |_ _/ __|"
			db 0dh,0ah, " | __ |/ _ \|  _/  _/\ V / (_) |   / (_ |/ _ \| .` || | (__ "
			db 0dh,0ah, " |_||_/_/ \_\_| |_|   |_| \___/|_|_\\___/_/ \_\_|\_|___\___|"
			db "$"
	
	prompt db 			'                          Enter Your Choice: $'
	choice db ?
	
	;sign up
	promptSign db 		'                        Enter New User Name: $'
	promptNewPasswrd db '                         Enter New Password: $'
	
	;login
	promptLog db 		'                           Enter User Name: $'
	promptpasswrd db 	'                            Enter Password: $' 

	;acc variable
	newUsrname db 31,?, 31 dup ("$")
	newPasswrd db 31,?, 31 dup ("$")
	
	signSuccess db "                       Successfully Registered $"
	logSuccess db "                        Successfully logged in $"
	
	;testacc1
	loginUserName db 31, ?, 31 dup ("$")
	valid_username db 0
	loginPassword db 31, ?, 31 dup ("$")
	valid_password db 0
	
	;login successful
	
	;incorrect username
	incorrectCredentials db "                       User not found $"
	
.code 
login proc

		;clear screen
	mov ax, 0003h
    int 10h
	
	
	;new line
	MOV AH, 09H
	LEA DX, next_Line 
	INT 21H
	
	;display logo
	mov ah, 09h
	lea dx, logo
	int 21h
	
	;double new line
	MOV AH, 09H	
	LEA DX, next_Line 
	INT 21H
	MOV AH, 09H	
	LEA DX, next_Line 
	INT 21H

	mov ah, 09h
	lea dx, line;
	int 21h
	
	MOV AH, 09H	
	LEA DX, next_Line 
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
	
	CALL_OPTION1:
		call signUp
	CALL_OPTION2:
		call login_Acc
	CALL_OPTION3:
		ret
	jmp login
	
login endp

signUp proc
		;new line
		MOV AH, 09H	
		LEA DX, next_Line 
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
		LEA DX, next_Line 
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
		LEA DX, next_Line 
		INT 21H
		ret
signUp endp

login_Acc proc
		
		;new line
		MOV AH, 09H	
		LEA DX, next_Line 
		INT 21H
	
		;prompt new username
		mov ah, 09h
		lea dx, promptLog 
		int 21h
		
		mov ah, 0AH
		lea dx, loginUserName
		int 21h
		
		MOV AH, 09H	
		LEA DX, next_Line 
		INT 21H
		
		mov ah, 09h
		lea dx, promptpasswrd 
		int 21h
		
		mov ah, 0AH
		lea dx, loginPassword
		int 21h
		
		MOV AH, 09H	
		LEA DX, next_Line 
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
		mov ah, 09h
		lea dx, incorrectCredentials
		int 21h
		ret
		
	success:
		mov ah, 09h
		lea dx, logSuccess
		int 21h
		
		call HOMAINMENU


	ret
login_Acc endp