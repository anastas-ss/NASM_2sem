%include "io.inc"

section .text
global CMAIN
CMAIN:
    MOV ebx, 0 ;������ �������
    cycle:
      xor eax, eax
      GET_CHAR eax ;����� ������
      cmp eax, '.' ;��������� c � ������
      je cycle_end  ;���� c ����� ����� �������� �� �����
      cmp eax, '0' 
      jge shag2
      jmp cycle
    shag2:
       cmp eax, '9'
       jle chet
       jmp cycle
    chet:
       test eax, 1  ;�������� �� ��������
       jnz even1
       jmp cycle
    even1:
       add ebx, 1 ;����������� ���������
       jmp cycle
    cycle_end:
      PRINT_DEC 4, ebx
     
    xor ebx, ebx
    ret