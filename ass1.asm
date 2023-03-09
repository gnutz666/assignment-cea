include "emu8086.inc"


org 100h

    print "*** PRIME FACTORZATION ***"
    printn
    
    printn
    print "Please input n = "
    call scan_num
    mov ax, cx
    printn
    
    printn
    call print_num
    print " = " 
    mov i, 2

check:
    cmp i, ax
    jl chia


chia: 
    div i
    cmp dx, 1 
    jmp cong  
    
    push ax
    mov ax, i
    call print_num
    pop ax 
    print " * "
    jmp check
    
cong:
    add i, 1
    jmp check
ret  

i dw 0


DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


