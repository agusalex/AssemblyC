segment .text
global sum
sum:
    push B
    push A
    call test 
    enter 0,0
    mov EAX,[EBP+8]
    add EAX,[EBP+12]
    leave
    ret 