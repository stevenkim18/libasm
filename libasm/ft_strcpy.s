section .text
        global _ft_strcpy

_ft_strcpy:                             ; dest = rdi, src = rsi
        mov     rcx, 0                  ; i = 0          
        jmp     loop

loop:
        cmp     BYTE [rsi + rcx], 0     ; while(src[i] != 0)
        je      return                  ; jump is equal(src[i] == 0)
        mov     dl, BYTE [rsi + rcx]    ;
        mov     BYTE [rdi + rcx], dl    ; dest[i] = src[i]
        inc     rcx                     ; i++
        jmp     loop                    

return:
        mov     rax, rdi
        ret
