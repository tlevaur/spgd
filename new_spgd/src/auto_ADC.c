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
float * floats_array = (float *) malloc(sizeof(float) * num_samps_desired);

if((fd = open(name, O_RDWR)) < 0) {
    perror("open");
    return 1;
}

FILE * OUT_FILE = fopen(out_name, "w");
cfg = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
            PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);


for(i = 0; i < num_samps_desired; i++)
{
	floats_array[i] = *((float *)(cfg + 8));
}
/*
for(i = 0; i < num_samps_desired; i++)
{
	ints_array[i] = calib(my_signer(samps_array[i]), IN_2_CalGain, IN_2_CalOffset);
}

for(i = 0; i < num_samps_desired; i++)
{
	//floats_array[i] = ((float) (ints_array[i]) * (1.0 / IN_1_CalGain)) + IN_1_CalOffset;
	floats_array[i] = -20.0 + ((float) (ints_array[i]) * (40.0 / 4095));
}
*/
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
