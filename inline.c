#include <stdio.h>
#define xchg(x,y)\
    __asm__("xchg %1, %0":"+m"(x),"+r"(y))


int main (){
    int x=23;
    int y = 24;
    xchg(x,y);
    printf("x = %d",x);
    printf("y = %d",y);
    return 0;

}