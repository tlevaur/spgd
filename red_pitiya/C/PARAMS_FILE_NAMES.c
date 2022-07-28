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
    int opt;
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

    *((uint32_t *)(gp + 0)) = GPIO & GPIOenableMask ? GPIO : GPIO | GPIOenableMask;
    
    while((opt = getopt(argc, argv, ":if:lrx")) != -1) 
    { 
        switch(opt) 
        { 
            case 'f': 
                printf("filename: %s\n", optarg);
                if (optarg == "TOP_SYS.v") {
		    ParamSet = 0*16777216;
		} else if (optarg == "SPGD_SYS.v"){
		    ParamSet = 1*16777216;
		} else {
		    ParamSet = 0;
		}
                break; 
            case ':': 
                printf("option needs a value\n");
                ParamSet = 0*16777216;
                break; 
            case '?': 
                printf("unknown option: %c\n", optopt);
		ParamSet = 0*16777216;
                break; 
        } 
    } 
    if (argv[2]) {
	//printf("GPIO & ParamSetMask:	%X\n\n", GPIO & ParamSetMask);
	//printf("ParamSetMasked |:		%X\n\n", (GPIO & ParamSetMask) | ParamSet);
	newGPIO = (GPIO & ParamSetMask) | ParamSet;
	*((uint32_t *)(gp + 0)) = newGPIO;

	if (argv[3]) {
	    ParamNum = atoi(argv[2]);
	    //printf("GPIO & ParamNumMask:	%X\n\n", GPIO & ParamNumMask);
	    //printf("ParamNumMasked |:	%X\n\n", (GPIO & ParamNumMask) | ParamNum);
	    newGPIO = (newGPIO & ParamNumMask) | ParamNum;
    	    *((uint32_t *)(gp + 0)) = newGPIO;
	}
    }

    printf("0x42000000:	%X\n\n", newGPIO);
    munmap(gp, sysconf(_SC_PAGESIZE));

    return 0;
}
