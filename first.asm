%include "io.inc"

section .text
global first ;
first:
    ;пишем гениальную программу о том, как все строчные буквы меняем на заглавные
    push ebp
    mov ebp, esp
    xor eax, eax ;обнуляем 
    mov edx, dword[ebp + 8] ;S
    
.cycle:
 
    cmp byte[edx], 0 ;проверка на конец строки
    je .end ;выход
    cmp byte[edx], 'a'
    jl .go  ;идём дальше, это не строчная буква
    cmp byte[edx], 'z'
    jle .change  ;меняем на заглавную
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