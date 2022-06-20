#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int32_t my_signer(uint32_t);
int32_t calib(int32_t, float, float);

int main(int argc, char **argv)
{
float max_time_seconds = 40;
float sample_period = 0.004;
int fd;
uint32_t i = 0;
float wait_time;
uint32_t count;
void *cfg;
char *name = "/dev/mem";
char *out_name = "/home/new_spgd/a.txt";

uint32_t num_samps_desired = 16384;

uint32_t * samps_array = (uint32_t *) malloc(sizeof(uint32_t) * num_samps_desired);

int32_t * ints_array = (int32_t *) malloc(sizeof(uint32_t) * num_samps_desired);

float * floats_array = (float *) malloc(sizeof(float) * num_samps_desired);

float IN_1_CalGain = 1.104962658841688;
float IN_1_CalOffset = 213.6218090226016;
float IN_2_CalGain = 1.115496889388175;
float IN_2_CalOffset = 234.5466336456709;

if((fd = open(name, O_RDWR)) < 0) {
    perror("open");
    return 1;
}

FILE * OUT_FILE = fopen(out_name, "w");
cfg = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
            PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);


for(i = 0; i < num_samps_desired; i++)
{
	samps_array[i] = *((uint32_t *)(cfg + 0)) & 0x20002000;
	// samps_array[i] = *((uint32_t *)(cfg + 8)) & 0x00000FFF;
}

for(i = 0; i < num_samps_desired; i++)
{
	ints_array[i] = calib(my_signer(samps_array[i]), IN_2_CalGain, IN_2_CalOffset);
}

for(i = 0; i < num_samps_desired; i++)
{
	//floats_array[i] = ((float) (ints_array[i]) * (1.0 / IN_1_CalGain)) + IN_1_CalOffset;
	floats_array[i] = -20.0 + ((float) (ints_array[i]) * (40.0 / 4095));
}

for(i = 0; i < num_samps_desired; i++)
{
	//fprintf(OUT_FILE, "0x%8.8X\n", samps_array[i]);
	fprintf(OUT_FILE, "%+10.8f\n", floats_array[i]);
	//fprintf(OUT_FILE, "%i\n", ints_array[i]);
}

fclose(OUT_FILE);
munmap(cfg, sysconf(_SC_PAGESIZE));
return 0;
}

int32_t my_signer(uint32_t a)
{
	int32_t temp = 0x00000000;
	if((a & 0x00000800) == 0x00000800)
	{
		temp = a | 0xFFFFF000;
	}
	else
	{
		temp = a;
	}
	temp = temp + 2048;
	return temp;
}

int32_t calib(int32_t y, float Cal_Gain, float Cal_Offset)
{
	int32_t x = round(y*Cal_Gain - Cal_Offset);

	return x;	
}
