
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
// #include <time.h>

void sum6432(a1,a2,b1,b2) {
    uint32_t c1 = 0;
    uint32_t c2 = 0;
    
    c1 = a1 + b1;

    c2 = a2 + b2;

    if (c1 < a1 || c1 < b1)
        c2 += 1;

    printf("%X%X",c2,c1);
}

int main(void) {
    sum6432(0x2FFFFFFF,0x2FFFFFFF,0x2FFFFFFF,0x2FFFFFFF);
}