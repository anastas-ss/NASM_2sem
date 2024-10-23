%include "io.inc"

section .text
global CMAIN
CMAIN:
    MOV ebx, 0 ;задали счётчик
    cycle:
      xor eax, eax
      GET_CHAR eax ;ввели символ
      cmp eax, '.' ;сравнение c с точкой
      je cycle_end  ;если c равно точке переходи по метке
      cmp eax, '0' 
      jge shag2
      jmp cycle
    shag2:
       cmp eax, '9'
       jle chet
       jmp cycle
    chet:
       test eax, 1  ;проверка на чётность
       jnz even1
       jmp cycle
    even1:
       add ebx, 1 ;увеличиваем счётность
       jmp cycle
    cycle_end:
      PRINT_DEC 4, ebx
     
    xor ebx, ebx
    ret