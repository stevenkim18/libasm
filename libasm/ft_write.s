section .text
        global _ft_write

_ft_write:
        mov     rax, 0x2000004
        syscall
        jc      error           ; jump if carry flag 0
        ret

error:  
        mov     rax, -1
        ret
