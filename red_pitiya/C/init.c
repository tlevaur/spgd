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
    float val = 1.0;
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

   /* 
    int32_t IN_1_CalGain = 0x00011A7B;
    int32_t IN_1_CalOffset = 0xFFFFFD3D;
    int32_t IN_2_CalGain = 0x00011D8F;
    int32_t IN_2_CalOffset = 0xFFFFFBD1;
    int32_t OUT_1_CalGain = 0x0000EF06;
    int32_t OUT_1_CalOffset = 0x0000046C;
    int32_t OUT_2_CalGain = 0x0000EE0D;
    int32_t OUT_2_CalOffset = 0x000012EC;*/
   
    
    /*float ALPHA_F = 0.36;
    float SIGMA_F = 2.38/M_PI*0.3;
    int32_t SIGMA = Float_to_16q(SIGMA_F,fractional_bits); //0x000003A2E;//0x0000745C*10; //03A2E/2;
    int32_t GAMMA = Float_to_16q(ALPHA_F/SIGMA_F,fractional_bits); //0x00008000;//0xFFFE0000;
    int32_t J_TIME = 3788; */

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



