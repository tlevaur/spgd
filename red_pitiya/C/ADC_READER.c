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
void *gp;
char *name = "/dev/mem";
char *out_name = "/home/new_spgd/a.txt";

uint32_t num_samps_desired = 1024;

uint32_t * samps_array = (uint32_t *) malloc(sizeof(uint32_t) * num_samps_desired);

if((fd = open(name, O_RDWR)) < 0) {
    perror("open");
    return 1;
}

FILE * OUT_FILE = fopen(out_name, "w");
gp = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
            PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);

cfg = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
            PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);

*((uint32_t *)(cfg + 12)) = 0x00011D8F;
*((uint32_t *)(cfg + 16)) = 0xFFFFFBD1;
*((uint32_t *)(gp + 0)) = 0x80000000;

for(i = 0; i < num_samps_desired; i++)
{
	samps_array[i] = *((uint32_t *)(gp + 8));
}

for(i = 0; i < num_samps_desired; i++)
{
	fprintf(OUT_FILE, "0x%8.8X\n", samps_array[i]);
}


fclose(OUT_FILE);
munmap(cfg, sysconf(_SC_PAGESIZE));
munmap(gp, sysconf(_SC_PAGESIZE));
return 0;
}
