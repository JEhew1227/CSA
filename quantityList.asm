  .data
    new_line db 13,10, "$"
	
	;quantity_buffer          db 20,?,20+2 dup("$")
	quantity_count db ?       ;count untill 0dh
	
	list db 700 dup ("$")
	list_offset dw 0
	
	leaf_lettuce db "            Leaf lettuce           4.00          $$$"
	leaf_lettuce_len equ ($-leaf_lettuce)
	
	arugula_lettuce db "            Arugula lettuce        5.00          $$$"
	arugula_lettuce_len equ ($-arugula_lettuce)
	
	red_carrot db "            Red carrot             5.00          $$$"
	red_carrot_len equ ($-red_carrot)
	
	mini_carrot db "            Mini carrot           10.00          $$$"
	mini_carrot_len equ ($-mini_carrot)
	
	japanese_cucumber db "            Japanese cucumber      5.00          $$$"
	japanese_cucumber_len equ ($-japanese_cucumber)
	
	cucumber db "            Cucumber               3.00          $$$"
	cucumber_len equ ($-cucumber)
	
	yellow_potatos db "            Yellow potatos         2.00          $$$"
	yellow_potatos_len equ ($-yellow_potatos)
	
	russet_potato db "            Russet potato          5.00          $$$"
	russet_potato_len equ ($-russet_potato)
	
	cameron_corn db "            Cameron corn           3.00          $$$"
	cameron_corn_len equ ($-cameron_corn)
	
	dent_corn db "            Dent corn              5.00          $$$"
	dent_corn_len equ ($-dent_corn)
	
	fuji_apple db "           Fuji apple             10.00          $$$"
	fuji_apple_len equ ($-fuji_apple)
	
	pink_lady_apple db "           Pink lady apple        10.00          $$$"
	pink_lady_apple_len equ ($-pink_lady_apple)
	
	seville_orange db "           Seville orange         10.00          $$$"
	seville_orange_len equ ($-seville_orange)
	
	blood_orange db "           Blood orange           10.00          $$$"
	blood_orange_len equ ($-blood_orange)
	
	alphonso_mango db "           Alphonso mango         12.00          $$$"
    alphonso_mango_len equ ($-alphonso_mango)
	
	francis_mango db "           Francis mango          10.00          $$$"
	francis_mango_len equ ($-francis_mango)
	
	red_watermelon db "           Red watermelon          3.00          $$$"
	red_watermelon_len equ ($-red_watermelon)
	
	yellow_watermelon db "           Yellow watermelon       5.00          $$$"
	yellow_watermelon_len equ ($-yellow_watermelon)
	
	galis_melon db "           Galis melon             5.00          $$$"
    galis_melon_len equ ($-galis_melon)
	
	golden_hm db "           Golden hm               6.00          $$$"
    golden_hm_len equ ($-golden_hm)
	
.code

AddItemToList proc
  
   lea di, list
   add di, list_offset
   
AddCharacter:
   mov dl,[si]
   mov [di],dl
   inc list_offset
   inc si
   inc di
   loop AddCharacter
   
   sub di,3
   sub list_offset,3
   mov cx,0
   mov cl,quantity_count
   mov bx,0
   
AddQuantity:
   mov dl,QUANTITY_BUFFER[bx+2]
   mov [di],dl
   inc di
   inc bx
   inc list_offset
   loop AddQuantity
   
AddNewLine:
   mov al, 0dh
   mov [di], al
   inc di
   
   mov al, 0ah
   mov[di], al
   inc di
   
   add list_offset,2
   ret
AddItemToList endp

QConvertToNum proc
   mov ax,0
   mov [di],ax
Convert:
   mov dl,[si]
   cmp dl,0dh
   je EndConversion
   
   mov dx,0
   mov ax,[di]
   mul TEN
   add dx,[si]
   mov dh,0
   sub dx,30h
   add ax,dx
   mov [di],ax
   inc si
   jmp Convert
   
EndConversion:
   ret
QConvertToNum endp

CountQuantity proc
   mov quantity_count,0
   
Count:
   mov al,0dh
   cmp [si],al
   je EndCount
   inc quantity_count
   inc si
   jmp CountQuantity
  
EndCount:
   ret
   
CountQuantity endp