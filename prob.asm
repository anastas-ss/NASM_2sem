%include "io.inc"

section .text
global CMAIN
CMAIN:

     mov eax, 'a'
     mov ebx, 'z'
     cmp eax, ebx
     jl .end
.end:
     PRINT_CHAR eax
     xor eax, eax
     ret