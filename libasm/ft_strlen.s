section .text               ; text는 코드 부분 data 상수 저장
        global _ft_strlen   ; 함수 이름 정의

_ft_strlen:
        mov     rax, 0      ; rax = 0 -> i = 0
        jmp     loop        ; loop함수로 점프

loop:
        cmp     BYTE [rdi + rax], 0 ; 1바이트의 주소가 가르키는 값과 0 비교 -> if (str[i] == 0)
        je      return
        inc     rax
        jmp     loop

return:
        ret