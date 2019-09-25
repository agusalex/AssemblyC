#include <string.h>
#include <stdio.h>
extern int asmPrint
(char * msg, int lenght);

int asm_Print(char * msg){
  return asmPrint(msg,strlen(msg));
}
int main()
{
  char * msg = "Hola Mundo!\n";
  int value = asm_Print(msg);
  return 0;
}