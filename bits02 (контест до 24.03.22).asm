%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov edx, 0  ;само число
    mov ecx, 0  ;макс кол-во единиц
cycle:
    GET_DEC 4, ebx
    mov esi, ebx
    mov eax, 0  ;кол-во единиц текущее
    cmp ebx, 0  ;условие вывода
    je exit
sch:  ;прокручиваем число в ebx
    cmp ebx, 0
    je pass
    shr ebx, 1
    jnc next
    inc eax
next:
    jmp sch
pass:  ;выход из прокрутки
    cmp ecx, eax
    jae no
    mov ecx, eax
    mov edx, esi
no:
    jmp cycle
exit:
    PRINT_DEC 4, edx
    
    ret