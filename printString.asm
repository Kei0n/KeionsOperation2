[BITS 16]
[ORG 0x7C00]

; Let's try to print out a full print


mov si, variableName

printString:
        mov ah, 0x0E
        mov al, [si]
        int 0x10
        inc si
        cmp byte [si], 0
        jne printString

exit:
        jmp $

variableName:
    db "But the fool on the hill", 0




times 510-($-$$) db 0
dw 0xAA55