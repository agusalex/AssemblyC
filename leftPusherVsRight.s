push 5
push [EBP-8]
push [EBP-4]
call test
add ESP,12
mov [EBP-12],EAX