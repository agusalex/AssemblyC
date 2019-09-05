nasm -f elf32 helloworld.s -o helloworld.o;
gcc -m32  -o main helloworld.o helloworld.c;
./main;
