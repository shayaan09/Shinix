[org 0x7c00]

mov ah, 0x00
int 0x16

mov ah, 0x0E
int 0x10



jmp $ 
times 510-($-$$) db 0 ;Since the bootloader always requires 512 bytes, we pad it up. $-$$ basically just means how many bytaes my code has used up sp far, and how many 0s are we using to pad up 

dw 0xAA55 ;This is called 'boot signature' and is ALWAYS peresent the BIOS will not pick up that something is a bootloader if this is not there. it's like an identifier.