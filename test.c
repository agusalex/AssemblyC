#include <stdio.h>
int main(void)
{
    int a=0,b=0;
    int value;
    extern int test (int, int);
    value = test(a, b);
    return 0;
}