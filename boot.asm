[bits 16]
[org 0x7C00]

%define ENDL 0x0A, 0x0D

boot:
	mov si, start_msg
	call print_string
	jmp $

%include "boot_utils/print.asm"

start_msg db "Started in 16-bit mode!", ENDL, "Booted done!", ENDL, "Hello from OS!", 0x0
times 510-($-$$) db 0
dw 0xAA55
                                                                                                                          
