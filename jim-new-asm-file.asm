.model small
.stack 100
.data
    msg db "i've been helping my friends with their CSA assignment$"

.code
main proc
    mov ax, @data
    mov ds, ax

    call NewProcHere

main endp

NewProcHere proc
    lea dx, msg
    mov ah, 09h
    int 21h
    ret
NewProcHere endp

end main

