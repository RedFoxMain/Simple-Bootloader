[bits 16]

global print_string

; Print string on screen
print_string:
	mov ah, 0x0E
print_string_while_not_null:
	mov al, [si]
	cmp al, 0
	je print_string_exit
	int 0x10
	inc si
	jmp print_string_while_not_null
print_string_exit:
	ret
