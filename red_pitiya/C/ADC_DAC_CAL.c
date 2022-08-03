#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int init_calib(int, int);

int main(int argc, char **argv) {

int IN_1_CalGain = 0x00011A7B;
int IN_1_CalOffset = 0xFFFFFD3D;
int IN_2_CalGain = 0x00011D8F;
int IN_2_CalOffset = 0xFFFFFBD1;
int OUT_1_CalGain = 0x0000EF06;
int OUT_1_CalOffset = 0x0000046C;
int OUT_2_CalGain = 0x0000EE0D;
int OUT_2_CalOffset = 0x000012EC;
int SIGMA = 0x00000004;
int GAMMA = 0x00040000;

int fd;
    void *cfg;
    void *gp;
    char *name = "/dev/mem";
    if((fd = open(name, O_RDWR)) < 0) {
        perror("open");
        return 1;
    }

    gp = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
                PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);

	*((uint32_t *)(gp + 0)) = 0x00000000;

    cfg = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
                PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x43C00000);

    *((uint32_t *)(cfg + 0)) = IN_1_CalGain;
    *((uint32_t *)(cfg + 4)) = IN_1_CalOffset;
    *((uint32_t *)(cfg + 8)) = IN_2_CalGain;
    *((uint32_t *)(cfg + 12)) = IN_2_CalOffset;
    *((uint32_t *)(cfg + 16)) = OUT_1_CalGain;
    *((uint32_t *)(cfg + 20)) = OUT_1_CalOffset;
    *((uint32_t *)(cfg + 24)) = OUT_2_CalGain;
    *((uint32_t *)(cfg + 28)) = OUT_2_CalOffset;
    *((uint32_t *)(cfg + 32)) = SIGMA;
    *((uint32_t *)(cfg + 36)) = GAMMA;

    *((uint32_t *)(gp + 0)) = 0xE0000000;

    munmap(gp, sysconf(_SC_PAGESIZE));
    munmap(cfg, sysconf(_SC_PAGESIZE));

    return 0;
}

