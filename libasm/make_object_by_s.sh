nasm -f macho64 $1
gcc -c test_main.c
gcc *.o
./a.out