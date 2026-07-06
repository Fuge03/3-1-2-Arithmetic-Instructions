section .text
global _start

_start:
    mov eax, 0
    sub eax, [var1]
    mov ebx, [var2]
    imul ebx
    add eax, [var3]
    mov [result], eax

    mov eax, 1
    int 0x80

section .data
    var1 dd 5
    var2 dd 4
    var3 dd 30

section .bss
    result resd 1