section .text
        global _ft_read

_ft_read:
        mov     rax, 0x2000003
        syscall
        jc      error           ; jump if carry flag 0
        ret

error:  
        mov     rax, -1
        ret