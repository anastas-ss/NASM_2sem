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
     add eax, ebx  ;� eax - ����� ���� ����������
     mov edx, ebx  ;� edx ���������� ������ �������� � ebx
     add ebx, ecx  ;� ebx - ������ (�������) ����� ���� ����������
     xor ecx, ecx  ;� ecx ���� ������ �������� ebx
     mov ecx, edx
     xor edx, edx
     jmp cycle
cycle_end:
     PRINT_UDEC 4, eax
     xor eax, eax
     xor ebx, ebx
     xor ecx, ecx
     ret
     
    
