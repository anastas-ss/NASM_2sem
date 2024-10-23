%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax, 0
    mov ecx, 0
cycle:
    GET_CHAR ebx
    cmp ebx, '.'
    je exit
    cmp ebx, ',' 
    je stop
    cmp ebx, ' '
    je stop
    inc eax
    jmp cycle
stop:
    shr eax, 1
    jc pass
    inc ecx
pass:
    mov eax, 0
    jmp cycle
exit:
    shr eax, 1
    jc no
    inc ecx
no:
    PRINT_DEC 4, ecx
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx 
    ret
        
    