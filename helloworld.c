#include <string.h>
extern void asmPrint
(char * msg, int lenght);

void asm_Print(char * msg){
  asmPrint(msg,strlen(msg));
}
int main()
{
  char * msg = "Hi\n";
  asm_Print(msg);
  return 0;
}