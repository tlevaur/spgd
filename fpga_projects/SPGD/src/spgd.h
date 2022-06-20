#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define IA 16807
#define IM 2147483647
#define AM (1.0/IM)
#define IQ 127773
#define IR 2836
#define NTAB 32
#define NDIV (1+(IM-1)/NTAB)
#define EPS 1.2e-7
#define RNMX (1.0-EPS)

#define NUM_READS 5

#define CPU_FREQ 666660000
#define CPU_PERIOD 
#define GT_FREQ CPU_FREQ/2
#define SHIFT_CONSTANT 4294967296
#define GT_PERIOD 3e-9

struct SPGD_t
{
	void * gp;
	void * gt;
	char * measurement_filename;
	FILE * measurement_file_ptr;
	//struct timespec * start_wait;
	struct timespec * SPGD_period;
	struct timespec * J_wait;
	struct timespec * U_wait;
	struct timespec * ADC_wait;
	uint32_t num_samps;
	long pert_a_init;
	long pert_b_init;
	double VAR_DELTA_U;
	double DAC_MAX_NEG_VAL;
	double DAC_VOLTAGE_STEP;
	double PERT_A;
	double PERT_B;
	uint32_t U_A_P_ndx;
	uint32_t U_B_P_ndx;
	uint32_t U_A_M_ndx;
	uint32_t U_B_M_ndx;
	int J_P;
	int J_M;
	double delta_J;
	double gain;
	double U_A_Voltage;
	uint32_t U_A_DAC_code;
	double U_B_Voltage;
	uint32_t U_B_DAC_code;
	double * DAC_float_array;
	uint32_t * DAC_code_array;
	int * samps_array;	
};

struct SPGD_t * create_SPGD_t(uint32_t, double, uint32_t, char *, uint32_t);
void delete_SPGD_t(struct SPGD_t *);
void write_samp_array(struct SPGD_t *);

int get_ADC_reading(struct SPGD_t *);

uint32_t get_DAC_ndx_from_float(double, double, double *);
uint32_t raw_to_ADC_uint(uint32_t);
double uint_to_ADC_double(uint32_t a);
struct SPGD_t * make_DAC_uint_arr(struct SPGD_t *);
struct SPGD_t * make_DAC_float_arr(struct SPGD_t *, double, double);
float ran1(long *);
float gasdev(long *);
struct SPGD_t * generate_perturbations(struct SPGD_t *);
struct SPGD_t * update_SPGD(struct SPGD_t *);
long long int read_GT(void *);
double my_usleep(void *, double);
void print_DAC_code_array(struct SPGD_t *, FILE *);
void print_DAC_float_array(struct SPGD_t *, FILE *);
void print_stats(struct SPGD_t *, FILE *);





