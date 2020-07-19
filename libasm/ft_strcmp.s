section .text
        global _ft_strcmp

_ft_strcmp:                              ;rdi = s1 rsi = s2
        mov     rcx, 0                  ;i = 0
        jmp     loop

loop:
        cmp     BYTE [rdi + rcx], 0     ; !s1[i] 
        je      return
        cmp     BYTE [rsi + rcx], 0     ; !s2[i] 
        je      return
        mov     dl, BYTE [rdi + rcx]     
        cmp     dl, BYTE [rsi + rcx]    ; if (s[1] == s[2])
        jne     return                  ; jump not equal
        inc     rcx                     ; i++
        jmp     loop

return: 
        mov     dl, BYTE [rdi + rcx]    
        sub     dl, BYTE [rsi + rcx]    ;s1[i] - s2[i]
        movsx   rax, dl                 ;mov 명렬어는 길이가 같은 것 끼리만 이동 
        ret                             ;movsx 사용해서 길이 상관없이 가능하게 해줌
