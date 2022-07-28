#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int main(int argc, char **argv) {

    uint32_t ParamSetMask = 0xF0FFFFFF;
    uint32_t ParamNumMask = 0xFFFFFFF0;
    uint32_t GPIOenableMask = 0x20000000;

    int fd;
    uint32_t ParamSet = 0;
    uint32_t ParamNum = 0;

    void *gp;
    char *name = "/dev/mem";
    if((fd = open(name, O_RDWR)) < 0) {
        perror("open");
        return 1;
    }

    gp = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
                PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);
    uint32_t GPIO = *((uint32_t *)(gp));
    uint32_t newGPIO = *((uint32_t *)(gp));
    uint32_t newerGPIO = *((uint32_t *)(gp));

    *((uint32_t *)(gp + 0)) = newGPIO & GPIOenableMask ? newGPIO : newGPIO | GPIOenableMask;
    if (argv[1]) {
    ParamSet = atoi(argv[1])*16777216;
    newGPIO = (GPIO & ParamSetMask) | ParamSet;
    *((uint32_t *)(gp + 0)) = newGPIO;
    //printf("newGPIO:		%X\n\n", newGPIO);

	    for(int i = 0; i < 16; i++){
	        newerGPIO = (newGPIO & ParamNumMask) + i;
	    	*((uint32_t *)(gp + 0)) = newerGPIO;
	    	printf("Param %2d: 0x%.8X\n", i, *((uint32_t *)(gp + 8)));
	    }
    }
    munmap(gp, sysconf(_SC_PAGESIZE));

    return 0;
}
