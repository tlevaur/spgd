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
	uint32_t MAX_LEN_STR = 100;
	char [100] junk = "baba";
	void *cfg;
	char *name = "/dev/mem";
	char *out_name = "/home/out.txt";

	if((fd = open(name, O_RDWR)) < 0)
	{
	    	perror("open");
	    	return 1;
	}
	cfg = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);

	uint32_t MAX_DAC_VALUE = 0x00003FFF;
	uint32_t DAC_A_VALUE = 0x00000000;
	uint32_t DAC_B_VALUE = 0x00000000;
	uint32_t ADC_A_VALUE = 0x00000000;
	uint32_t ADC_B_VALUE = 0x00000000;
	uint32_t MODE_VALUE = 0x3FFFFFFF;

	uint32_t temp_DAC_VALUE = 0x00000000;
	uint32_t temp_ADC_VALUE = 0x00000000;
	uint32_t i = 0;

	*((uint32_t *)(cfg + 0)) = 0x00000000;

	for(i = 0; i <= MAX_DAC_VALUE; i++)
	{
		DAC_A_VALUE = 0xFFFFFFFF & temp_DAC_VALUE;
		DAC_B_VALUE = 0xFFFFFFFF & (temp_DAC_VALUE << 14);
		*((uint32_t *)(cfg + 0)) = MODE_VALUE & DAC_B_VALUE & DAC_A_VALUE;
		temp_ADC_VALUE = *((uint32_t *)(cfg + 8));
		ADC_A_VALUE = 0x00000FFF & temp_ADC_VALUE;
		ADC_B_VALUE = 0x03FFC000 & temp_ADC_VALUE;
		fprintf(stdout, "i = 0x8.8X, DAC_A = 0x8.8X, ADC_A = 0x8.8X, DAC_B = 0x8.8X, ADC_B = 0x8.8X\n", i, DAC_A_VALUE, ADC_A_VALUE, DAC_B_VALUE, ADC_B_VALUE);
		fgets(junk,MAX_LEN_STR,stdin);
		temp_DAC_VALUE = temp_DAC_VALUE + 1;
	}

	*((uint32_t *)(cfg + 0)) = 0x00000000;
	munmap(cfg, sysconf(_SC_PAGESIZE));
	return 0;
}
