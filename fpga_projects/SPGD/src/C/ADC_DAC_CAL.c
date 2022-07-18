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

// float IN_1_CalGain = 1.104962658841688;
// float IN_1_CalOffset = 213.6218090226016;
// float IN_2_CalGain = 1.115496889388175;
// float IN_2_CalOffset = 234.5466336456709;
int IN_1_CalGain = 0x00011D8F;
int IN_1_CalOffset = 0xFFF5FBD5;
int IN_2_CalGain = 0x00011D8F;
int IN_2_CalOffset = 0xFFF5FBD5;

init_calib(IN_1_CalGain, IN_1_CalOffset);

return 0;
}

int init_calib(int Cal_Gain, int Cal_Offset) {
    int fd;
    void *cfg;
    char *name = "/dev/mem";
    if((fd = open(name, O_RDWR)) < 0) {
        perror("open");
        return 1;
    }

    cfg = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
                PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);

    *((uint32_t *)(cfg + 2)) = Cal_Gain;
    *((uint32_t *)(cfg + 3)) = Cal_Offset;
    munmap(cfg, sysconf(_SC_PAGESIZE));

	return 0;	
}
