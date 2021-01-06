global  _start                                                                                                        1 section .text
section .text

strlen:
mov rax, 0
.looplabel:
cmp byte [rdi], 0
je .end
inc rdi
inc rax
jmp .looplabel
.end:
ret

_start:
    mov       rax, 0
    mov       rdi, 0
    mov       rsi, n1
    mov       rdx, 50
    syscall

    mov       rdi, n1
    call      strlen
    add       rax, 0

    mov       [len], rax
    mov       rax, 1
    mov       rdi, 1
    mov       rsi, message
    mov       rdx, 13
    syscall

    mov       rax, 1
    mov       rdi, 1
    mov       rsi, name
    mov       rdx, 11
    syscall

    mov       rax, 1
    mov       rdi, 1
    mov       rsi, n1
    mov       rdx, [len]
    syscall

    mov       rax, 1
    mov       rax, 60
    xor       rdi, rdi
    syscall

section .data
    message:
    db        "Hello, World", 10
    name:
    db        "My name is ", 10, 00

section .bss
    n1 resb 50
    len resd 1