section .bss
c resb 1
number resd 1
section .text
global CMAIN
CMAIN:
    mov ecx, 0
    mov ebx, 0
loop:
    GET_CHAR c
    mov al, byte[c]
    cmp al,'.'
    je cycle_pred_end
    cmp al, ','
    jne count_words
    mov eax, ebx
    mov ebx, 2
    cdq
    div ebx
    mov ebx, 0
    cmp edx, 0
    je count
    jmp loop
count:
    inc ecx
    jmp loop
count_words:
    inc ebx
    jmp loop
cycle_pred_end:
    mov eax, ebx
    mov ebx, 2
    cdq
    div ebx
    cmp edx, 0
    jne cycle_end
    inc ecx
    jmp cycle_end
cycle_end:
    mov dword[number], ecx
    PRINT_UDEC 4, [number]
    xor eax, eax
    ret