#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int main(int argc, char **argv)
{
	srand(420666);
	int temp1 = rand() % 0x0000FFFF;
	int temp2 = rand() % 0x0000FFFF;
	int temp3 = rand() % 0x0000FFFF;
	int temp4 = rand() % 0x0000FFFF;

	int sum = temp1+temp2+temp3+temp4;

	uint32_t sign = 0x00000000;

	fprintf(stdout, "sum=%i, temp1=%i, temp2=%i, temp3=%i, temp4=%i\n", sum, temp1, temp2, temp3, temp4);

	
	return 0;
}


