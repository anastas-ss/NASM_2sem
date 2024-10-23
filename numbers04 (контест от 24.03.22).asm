%include "io.inc"

section .text
global CMAIN
CMAIN:
     mov eax, 3
     mov ebx, 2
     mov ecx, 1
cycle:
     cmp eax, 100000
     ja cycle_end
     add eax, ebx  ;в eax - сумма двух предыдущих
     mov edx, ebx  ;в edx запоминаем старое занчение в ebx
     add ebx, ecx  ;в ebx - вторая (меньшая) сумма двух предыдущих
     xor ecx, ecx  ;в ecx клаём старое значение ebx
     mov ecx, edx
     xor edx, edx
     jmp cycle
cycle_end:
     PRINT_UDEC 4, eax
     xor eax, eax
     xor ebx, ebx
     xor ecx, ecx
     ret
     
    
