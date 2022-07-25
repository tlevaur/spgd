#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <time.h>

uint32_t get_DAC_ndx_from_float(double desired_float, double V_step, double * DAC_float_array);
double * make_DAC_float_arr(double, double);
uint32_t * make_DAC_uint_arr();

int main(int argc, char **argv)
{

	uint32_t MAX_STR_LEN = 100;
	char txt_in[MAX_STR_LEN];
	float max_time_seconds = 40;
	float sample_period = 0.004;
	double MAX_NEG_VAL = -10.0;
	double VOLTAGE_STEP = 10.0 / 8191.0;
	int fd;
	uint32_t i = 0;
	void *cfg;
	char *name = "/dev/mem";
	
	double float_in = 0.0;

	if((fd = open(name, O_RDWR)) < 0) {
		perror("open");
		return 1;
	}

	cfg = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);

	double SPGD_rate = 5000;
	double SPGD_duty_cycle = 0.5;
	double SPGD_period = 1 / SPGD_rate; // 0.0002 s
	long ns_J_wait_int = ceil(100000 * SPGD_period * SPGD_duty_cycle / 2); 
	struct timespec * ns_J_wait_time = NULL;
	ns_J_wait_time = (struct timespec *) malloc(sizeof(struct timespec));
	ns_J_wait_time->tv_nsec = ns_J_wait_int;

	//*((uint32_t *)(cfg + 0)) = 0x30000000; // = 805306368 base 10

	uint32_t act_float_ndx = 0;
	uint32_t DAC_A_VALUE = 0;
	uint32_t DAC_B_VALUE = 0;
	uint32_t MODE_VALUE = 0x2FFFFFFF;
	double act_float = 0.0;

	*((uint32_t *)(cfg + 0)) = 0x20000000;

	uint32_t temp_ADC_VALUE = 0;

	while(1)
	{
		temp_ADC_VALUE = *((uint32_t *)(cfg + 8));
		fprintf(stdout, "RAW ADC OUT = 0x%8.8X\n", temp_ADC_VALUE);
		nanosleep(ns_J_wait_time, NULL);
	}

	munmap(cfg, sysconf(_SC_PAGESIZE));
	return 0;
}

uint32_t * make_DAC_uint_arr()
{
	uint32_t MAX_DAC = 16384;
	uint32_t i = 0;
	uint32_t j = 0;
	uint32_t * out_array = (uint32_t *) malloc(MAX_DAC * sizeof(uint32_t));
	for(i = 0; i < 8192; i++)
	{
		out_array[i] = 0x00001FFF - i;
	}
	for(j = 0; j < 8192; j++)
	{
		out_array[i+j] = 0x00003FFF - j;
	}
	return out_array;
}

double * make_DAC_float_arr(double MAX_NEG_VAL, double VOLTAGE_STEP)
{
	uint32_t MAX_DAC = 16384;
	uint32_t i = 0;
	double * out_array = (double *) malloc(MAX_DAC * sizeof(double));
	for(i = 0; i < MAX_DAC; i++)
	{
		out_array[i] = MAX_NEG_VAL + i * VOLTAGE_STEP;
	}
	return out_array;
}

uint32_t get_DAC_ndx_from_float(double desired_float, double V_step, double * DAC_float_array)
{
	int initial_match_ndx = floor(desired_float / V_step) + 8192;
	double match = DAC_float_array[initial_match_ndx];
	double lmatch = DAC_float_array[initial_match_ndx-1];
	double rmatch = DAC_float_array[initial_match_ndx+1];

	double diff = abs(desired_float - match);
	double ldiff = abs(desired_float - lmatch);
	double rdiff = abs(desired_float - rmatch);

	if(ldiff < diff && ldiff < rdiff)
	{
		return initial_match_ndx - 1;
	}
	else if(rdiff < diff && rdiff < ldiff)
	{
		return initial_match_ndx + 1;
	}
	else
	{
		return initial_match_ndx;
	}
}
