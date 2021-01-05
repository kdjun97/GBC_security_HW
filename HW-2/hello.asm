global  _start ; start가 전역에 있다는 뜻. global : 특정 심볼을 global로 정의함.
; 어셈블리어는 모든 코드가 기본적으로 private이다. 
section .text ; 전역 변수가 들어감. section 을 정의함.
; text섹션은 일반적으로 읽기 전용 코드가 들어감.`
_start:
    mov       rax, 1
    mov       rdi, 1
    mov       rsi, message
    mov       rdx, 13
    syscall
    mov       rax, 60
    xor       rdi, rdi
    syscall
    section   .data
    message:
    db        "Hello, World", 10
