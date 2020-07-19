section .text
        global _ft_strdup
        extern _ft_strlen
        extern _ft_strcpy
        extern _malloc

_ft_strdup:                         ; rdi = str
        call    _ft_strlen          ; rax에 문자열의 길이가 저장됨.
        inc     rax                 ; 마지막 포인터 널 포함하기 위해 1증가
        push    rdi                 ; str를 메모리 스택에 넣음
        mov     rdi, rax            ; rdi에 문자열 크기 넣음
        call    _malloc             ; malloc(rdi) -> (len)
        pop     rdi                 
        mov     rsi, rdi
        mov     rdi, rax
        call    _ft_strcpy
        ret
