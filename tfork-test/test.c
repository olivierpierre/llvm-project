#include <stdio.h>

int val =12;
int __seg_gs *ptr = &val;

int main(int argc, char *argv[]) {

    if(argc)
        *ptr = 42;

    printf("hello, world!\n");
    printf("*ptr = %d\n", *ptr);
    return 0;
}
