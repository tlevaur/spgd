#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int32_t Float_to_16q(float num, int fractional_bits);
float q_to_float(int32_t num, int fractional_bits);

int main(int argc, char **argv) {
    int fractional_bits = 16;
    FILE * infile = NULL;
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

    *((int32_t *)(gp + 0)) = 0x00000000;

    cfg = mmap(NULL, sysconf(_SC_PAGESIZE), /* map the memory */
                PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x43C00000);
    
    if (argc>2){
    	infile = fopen(argv[2], "r");
    } else {
    	infile = fopen("init.txt", "r");
    }
    
    char trash[100];
    char temp_string[100];
    float val = 0.0;

    for(int i = 0; i<11 ; i++){
    	fgets(trash, 100, infile);
    	fgets(temp_string, 100, infile);
    	fgets(trash, 100, infile);
    	
    	val = atof(temp_string);
    	switch(i) {
    		case 10:
    			*((int32_t *)(cfg + i*4)) = atoi(temp_string);
			printf("%d: %08X\n", i, atoi(temp_string));
    			break;
    		default:
		        *((int32_t *)(cfg + i*4)) =  Float_to_16q(val,16);
		        printf("%d: %f %s\n", i, val, temp_string);
    			break;	    		
    	}
    }

    *((int32_t *)(gp + 0)) = 0xE0000000;

    fclose(infile);
    munmap(gp, sysconf(_SC_PAGESIZE));
    munmap(cfg, sysconf(_SC_PAGESIZE));

    return 0;
}

int32_t Float_to_16q(float num, int fractional_bits){
    int32_t val=0;
    if(num>=0)
    	val = ((int32_t) (num * pow(2, fractional_bits)));
    else
    	val = ((int32_t) (num * pow(2, fractional_bits)));
    return val;
}
    
float q_to_float(int32_t num, int fractional_bits){
    return (((float) num) * pow(2, -fractional_bits));
}



