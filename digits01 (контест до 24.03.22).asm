%include "io.inc"
section .bss
a resd 1

section .text
global CMAIN
CMAIN:
    GET_UDEC 4, a
    mov eax, [a]
    mov ecx, 10
    mov ebx, 0
 cycle:
     cmp eax, 0
     je exit
     cdq
     div ecx
     cmp edx, ebx
     ja max
     jmp cycle
 max:
     mov ebx, edx
     jmp cycle
 exit:
     PRINT_UDEC 4, ebx
     xor eax, eax
     ret
