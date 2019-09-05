#include <stdio.h>
#define xchg(x,y)\
    __asm__("xchg %1, %0":"+m"(x),"+r"(y))  
    //The XCHG (exchange data) instruction exchanges the contents of two operands.
int main (){
    int x=23;
    int y = 24;
    xchg(x,y);
    printf("x = %d \n",x);
    printf("y = %d \n",y);
    return 0;

}