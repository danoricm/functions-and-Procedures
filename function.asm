; function.asm
section .data
    result db 'Result: %d', 10, 0
    prompt db 'Enter an integer: ', 0
    input db 0

section .bss
    num resb 4

section .text
    extern atoi, printf, scanf
    global _start

MyFunction:
    push ebp
    mov ebp, esp
    sub esp, 4
    mov eax, [ebp+8]
    add eax, 10
    cmp eax, 15
    jle .else
    sub eax, 5
    jmp .endif
.else:
    add eax, 5
.endif:
    mov ecx, 3
.loop:
    add eax, ecx
    loop .loop
    mov esp, ebp
    pop ebp
    ret

_start:
    push prompt
    call printf
    add esp, 4
    push num
    push input
    call scanf
    add esp, 8
    push input
    call atoi
    add esp, 4
    push eax
    call MyFunction
    add esp, 4
    push eax
    push result
    call printf
    add esp, 8
    mov eax, 1
    xor ebx, ebx
    int 0x80
