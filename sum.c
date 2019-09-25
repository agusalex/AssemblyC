#include <stdio.h>
int main(void)
{
    int x = 25, y = 70;
    int value;
    extern int sum (int, int);
    value = sum(x, y);
    return 0;
}