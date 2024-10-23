%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov edx, 0  ;���� �����
    mov ecx, 0  ;���� ���-�� ������
cycle:
    GET_DEC 4, ebx
    mov esi, ebx
    mov eax, 0  ;���-�� ������ �������
    cmp ebx, 0  ;������� ������
    je exit
sch:  ;������������ ����� � ebx
    cmp ebx, 0
    je pass
    shr ebx, 1
    jnc next
    inc eax
next:
    jmp sch
pass:  ;����� �� ���������
    cmp ecx, eax
    jae no
    mov ecx, eax
    mov edx, esi
no:
    jmp cycle
exit:
    PRINT_DEC 4, edx
    
    ret