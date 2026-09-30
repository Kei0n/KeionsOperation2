[BITS 16]
[ORG 0x7C00]


mov ah, 0x0E
mov al, 65
mov cl, 0
mov dl, al

alphaLloop:
        mov al, dl
        cmp cl, 1
        jne printIt
        add al, 32

printIt:
        mov ah, 0x0E
        int 0x10


        xor cl, 1
        inc dl
        cmp dl, 'Z' + 1
        jne alphaLloop

exit:
        jmp $




times 510-($-$$) db 0
dw 0xAA55