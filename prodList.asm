.data
    new_line db 13,10, "$"
	
	list db 250 dup ("$")
	list_offset db 0
	
	leaf_lettuce db "leaf lettuce$"
	leaf_lettuce_len equ ($-leaf_lettuce)
	
	arugula_lettuce db "arugula lettuce$"
	arugula_lettuce_len equ ($-arugula_lettuce)
	
	red_carrot db "red carrot$"
	red_carrot_len equ ($-red_carrot)
	
	mini_carrot db "mini carrot$"
	mini_carrot_len equ ($-mini_carrot)
	
	japanese_cucumber db "japanese cucumber$"
	japanese_cucumber_len equ ($-japanese_cucumber)
	
	cucumber db "cucumber$"
	cucumber_len equ ($-cucumber)
	
	yellow_potatos db "yellow potatos$"
	yellow_potatos_len equ ($-yellow_potatos)
	
	russet_potato db "russet potato$"
	russet_potato_len equ ($-russet_potato)
	
	cameron_corn db "cameron corn$"
	cameron_corn_len equ ($-cameron_corn)
	
	dent_corn db "dent corn$"
	dent_corn_len equ ($-dent_corn)
	
	fuji_apple db "fuji apple$"
	fuji_apple_len equ ($-fuji_apple)
	
	pink_lady_apple db "pink lady apple$"
	pink_lady_apple_len equ ($-pink_lady_apple)
	
	seville_orange db "seville orange$"
	seville_orange_len equ ($-seville_orange)
	
	blood_orange db "blood orange$"
	blood_orange_len equ ($-blood_orange)
	
	alphonso_mango db "alphonso mango$"
    alphonso_mango_len equ ($-alphonso_mango)
	
	francis_mango db "francis mango$"
	francis_mango_len equ ($-francis_mango)
	
	red_watermelon db "red watermelon$"
	red_watermelon_len equ ($-red_watermelon)
	
	yellow_watermelon db "yellow watermelon$"
	yellow_watermelon_len equ ($-yellow_watermelon)
	
	galis_melon db "galis melon$"
    galis_melon_len equ ($-galis_melon)
	
	golden_hm db "golden hm$"
    golden_hm_len equ ($-golden_hm)
	
.code
prodList proc
    mov ax, @data
	mov ds, ax

    mov AH,09H
    lea DX,list
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, leaf_lettuce_len
	lea si, leaf_lettuce
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
    mov bx, 0
	mov bl, list_offset
	mov cx, arugula_lettuce_len
	lea si, arugula_lettuce
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, red_carrot_len
	lea si, red_carrot
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, mini_carrot_len
	lea si, mini_carrot
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, japanese_cucumber_len
	lea si, japanese_cucumber
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, cucumber_len
	lea si, cucumber
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, yellow_potatos_len
	lea si, yellow_potatos
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, russet_potato_len
	lea si, russet_potato
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, cameron_corn_len
	lea si, cameron_corn
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, dent_corn_len
	lea si, dent_corn
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, fuji_apple_len
	lea si, fuji_apple
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, pink_lady_apple_len
	lea si, pink_lady_apple
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, seville_orange_len
	lea si, seville_orange
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, blood_orange_len
	lea si, blood_orange
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, alphonso_mango_len
	lea si, alphonso_mango
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, francis_mango_len
	lea si, francis_mango
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, red_watermelon_len
	lea si, red_watermelon
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, yellow_watermelon_len
	lea si, yellow_watermelon
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, galis_melon_len
	lea si, galis_melon
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	mov bx, 0
	mov bl, list_offset
	mov cx, golden_hm_len
	lea si, golden_hm
	
	mov AH,09H
    lea DX,list
    int 21H
	
	mov AH,09H
    lea DX,new_line
    int 21H
	
	jmp EndProgram
	
AddItemToList proc ;si = the item u add, bl = list offset, cx = length of item you add
    lea di, list
	add di, bx
	mov dl, [si]
	mov [di], dl
	inc bx
	inc si
	inc di
	loop AddItemToList
	mov [list + bx + 1], 0dh
	mov [list + bx + 2], 0dh
	add bx, 2
	ret

AddItemToList endp
	
prodList endp
	
	
	
	