%include "io.inc"

section .text
global first ;
first:
    ;����� ���������� ��������� � ���, ��� ��� �������� ����� ������ �� ���������
    push ebp
    mov ebp, esp
    xor eax, eax ;�������� 
    mov edx, dword[ebp + 8] ;S
    
.cycle:
 
    cmp byte[edx], 0 ;�������� �� ����� ������
    je .end ;�����
    cmp byte[edx], 'a'
    jl .go  ;��� ������, ��� �� �������� �����
    cmp byte[edx], 'z'
    jle .change  ;������ �� ���������
.go:
    inc edx
    jmp .cycle
.change:
    sub byte[edx], 32
    inc edx
    jmp .cycle
.end:
    
    leave
    xor eax, eax
    ret