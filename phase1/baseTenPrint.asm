[BITS 16]
[ORG 0x7C00]


mov ax, 300
mov bx, 0
mov cx, 10

call procedure

exit:
    jmp $

procedure:
    keepDividing:
        xor dx, dx
        div cx
        inc bx
        push dx
        cmp ax, 0
        jne keepDividing

    printLoop:
        pop dx
        dec bx
        add dx, 48
        mov ah, 0x0E
        mov al, dl
        int 0x10
        cmp bx, 0
        jne printLoop
        ret








times 510-($-$$) db 0
dw 0xAA55