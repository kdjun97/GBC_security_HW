global  _start
section .text
_start:
    mov       rax, 1
    mov       rdi, 1
    mov       rsi, message
    mov       rdx, 13
    syscall
    
    mov       rax, 1
    mov       rdi, 1
    mov       rsi, name
    mov       rdx, 23
    syscall

    mov       rax, 60
    xor       rdi, rdi
    syscall
    
section   .data
    message:
    db        "Hello, World", 10, 00
    name:
    db        "My name is DongJun Kim", 10, 00