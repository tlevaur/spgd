#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
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

float ran1(long *);
float gasdev(long *);
uint32_t get_DAC_ndx_from_float(double, double, double *);
double * make_DAC_float_arr(double, double);

uint32_t * make_DAC_uint_arr();
int uint_to_DAC_CODE(uint32_t);
uint32_t PERB_PLUS_CHECK(int, int);
uint32_t PERB_MINUS_CHECK(int, int);
uint32_t DAC_CODE_to_uint(uint32_t);
uint32_t raw_to_ADC_uint(uint32_t);
double uint_to_ADC_double(uint32_t);
uint32_t raw_to_PERB_uint(uint32_t);
double uint_to_DAC_double(uint32_t);
uint32_t get_rand(uint32_t);

int main(int argc, char **argv)
{
	void *cfg;
	int fd;
	char *name = "/dev/mem";
	if((fd = open(name, O_RDWR)) < 0)
	{
	    	perror("open");
	    	return 1;
	}
	cfg = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);
	*((uint32_t *)(cfg + 0)) = 0x00000000;

	long pert_A_init = -123456;
	long pert_B_init = -420666;
	double MAX_NEG_VAL = -10.0;
	double VOLTAGE_STEP = 10.0 / 8191.0;	
	double V_pi = 2.38;
	double VAR_DELTA_U = 0.09;
	double phi_rms_amp = 0.3;
	double pert_V_constant = phi_rms_amp * V_pi / M_PI;
	double gain = 4.0;

	double SPGD_rate = 5000;
	double SPGD_duty_cycle = 0.5;
	double SPGD_period = 1 / SPGD_rate; // 0.0002 s
	long ns_U_wait_int = ceil(100000 * SPGD_period * SPGD_duty_cycle); // 0.0001 s = 100000 ns
	long ns_J_wait_int = ceil(100000 * SPGD_period * SPGD_duty_cycle / 2); 

	struct timespec * ns_J_wait_time = NULL;
	ns_J_wait_time = (struct timespec *) malloc(sizeof(struct timespec));
	ns_J_wait_time->tv_nsec = ns_J_wait_int;

	struct timespec * ns_U_wait_time = NULL;
	ns_U_wait_time = (struct timespec *) malloc(sizeof(struct timespec));
	ns_U_wait_time->tv_nsec = ns_U_wait_int;

	uint32_t U_A_VALUE = 0x00000000;
	uint32_t U_B_VALUE = 0x00000000;
	uint32_t DAC_A_VALUE = 0x00000000;
	uint32_t DAC_B_VALUE = 0x00000000;
	uint32_t ADC_A_VALUE = 0x00000000;

	uint32_t new_A_value = 0;
	uint32_t new_B_value = 0;
	uint32_t MODE_VALUE = 0x2FFFFFFF;

	uint32_t J_P = 0x00000000;
	uint32_t J_M = 0x00000000;
	uint32_t raw_delta_J = 0x00000000;

	uint32_t temp_ADC_VALUE = 0x00000000;

	uint32_t perturbation_a = 0x00000000;
	uint32_t perturbation_b = 0x00000000;

	uint32_t U_A_P = 0x00000000;
	uint32_t U_A_M = 0x00000000;
	uint32_t U_B_P = 0x00000000;
	uint32_t U_B_M = 0x00000000;

	
	double delta_J = 0.0; 
	double U_A_Voltage = 0.0;
	double U_B_Voltage = 0.0;

	double exp_pert_a = 0.0;
	double exp_pert_b = 0.0;
	
	uint32_t act_pert_a_ndx = 0;
	uint32_t act_pert_b_ndx = 0;

	double act_pert_a = 0.0;
	double act_pert_b = 0.0;

	double exp_U_A_P_float = 0.0;
	double exp_U_B_P_float = 0.0;
	double exp_U_A_M_float = 0.0;
	double exp_U_B_M_float = 0.0;

	uint32_t act_U_A_P = 0;
	uint32_t act_U_B_P = 0;
	uint32_t act_U_A_M = 0;
	uint32_t act_U_B_M = 0;

	double exp_U_A_new = 0.0;
	double exp_U_B_new = 0.0;

	uint32_t act_U_A_new_ndx = 0;
	uint32_t act_U_B_new_ndx = 0;

	double act_U_A_new = 0.0;
	double act_U_B_new = 0.0;
	


	double * DAC_float_array = make_DAC_float_arr(MAX_NEG_VAL, VOLTAGE_STEP);
	uint32_t * DAC_code_array = make_DAC_uint_arr();

	while(1)
	{
		exp_pert_a = gasdev(&pert_A_init) * pert_V_constant;
		exp_pert_b = gasdev(&pert_B_init) * pert_V_constant;

		act_pert_a_ndx = get_DAC_ndx_from_float(exp_pert_a, VOLTAGE_STEP, DAC_float_array);
		act_pert_b_ndx = get_DAC_ndx_from_float(exp_pert_b, VOLTAGE_STEP, DAC_float_array);

		act_pert_a = DAC_float_array[act_pert_a_ndx];
		act_pert_b = DAC_float_array[act_pert_b_ndx];

		exp_U_A_P_float = U_A_Voltage + act_pert_a;
		exp_U_B_P_float = U_B_Voltage + act_pert_b;
		exp_U_A_M_float = U_A_Voltage - act_pert_a;
		exp_U_B_M_float = U_B_Voltage - act_pert_b;

		act_U_A_P = get_DAC_ndx_from_float(exp_U_A_P_float, VOLTAGE_STEP, DAC_float_array);
		act_U_B_P = get_DAC_ndx_from_float(exp_U_A_P_float, VOLTAGE_STEP, DAC_float_array);
		act_U_A_M = get_DAC_ndx_from_float(exp_U_A_P_float, VOLTAGE_STEP, DAC_float_array);
		act_U_B_M = get_DAC_ndx_from_float(exp_U_A_P_float, VOLTAGE_STEP, DAC_float_array);

		DAC_A_VALUE = DAC_code_array[act_U_A_P];
		DAC_B_VALUE = DAC_code_array[act_U_B_P];

		// Phase A
		fprintf(stdout, "PLUS: U_A = %+10.8f, PERB_A = %+10.8f, DAC_A = 0x%8.8X, DAC_B = 0x%8.8X\n", U_A_Voltage, act_pert_a, DAC_A_VALUE, DAC_B_VALUE);
		*((uint32_t *)(cfg + 0)) = MODE_VALUE & ((DAC_A_VALUE | 0xF0003FFF) & (DAC_B_VALUE | 0xFFFFC000));
		nanosleep(ns_J_wait_time, NULL);
		temp_ADC_VALUE = *((uint32_t *)(cfg + 8));
		ADC_A_VALUE = 0x00000FFF & temp_ADC_VALUE;
		J_P = raw_to_ADC_uint(ADC_A_VALUE);

		// Phase B
		DAC_A_VALUE = DAC_code_array[act_U_A_M];
		DAC_B_VALUE = DAC_code_array[act_U_B_M];
		fprintf(stdout, "MINUS: U_A = %+10.8f, PERB_A = %+10.8f, DAC_A = 0x%8.8X, DAC_B = 0x%8.8X\n", U_A_Voltage, act_pert_b, DAC_A_VALUE, DAC_B_VALUE);
		*((uint32_t *)(cfg + 0)) = MODE_VALUE & ((DAC_A_VALUE | 0xF0003FFF) & (DAC_B_VALUE | 0xFFFFC000));
		nanosleep(ns_J_wait_time, NULL);
		temp_ADC_VALUE = *((uint32_t *)(cfg + 8));
		ADC_A_VALUE = 0x00000FFF & temp_ADC_VALUE;
		J_M = raw_to_ADC_uint(ADC_A_VALUE);

		// U Wait
		raw_delta_J = J_P - J_M;
		delta_J = uint_to_ADC_double(raw_delta_J);

		new_A_value = delta_J * act_pert_a * gain;
		new_B_value = delta_J * act_pert_b * gain;

		exp_U_A_new = U_A_Voltage + new_A_value;
		exp_U_B_new = U_B_Voltage + new_B_value;

		act_U_A_new_ndx = get_DAC_ndx_from_float(exp_U_A_new, VOLTAGE_STEP, DAC_float_array);
		act_U_B_new_ndx = get_DAC_ndx_from_float(exp_U_B_new, VOLTAGE_STEP, DAC_float_array);

		act_U_A_new = DAC_float_array[act_U_A_new_ndx];
		act_U_B_new = DAC_float_array[act_U_B_new_ndx];

		U_A_Voltage = act_U_A_new;
		U_B_Voltage = act_U_B_new;

		DAC_A_VALUE = DAC_code_array[act_U_A_new_ndx];
		DAC_B_VALUE = DAC_code_array[act_U_B_new_ndx];
		*((uint32_t *)(cfg + 0)) = MODE_VALUE & ((DAC_A_VALUE | 0xF0003FFF) & (DAC_B_VALUE | 0xFFFFC000));
		fprintf(stdout, "U_A = %+10.8f, Delta_J = %+10.8f, Delta_U = %+10.8f, New = 0x%8.8X\n", U_A_Voltage, delta_J, act_pert_a, new_A_value);
		//fprintf(stdout, "Raw=0x%8.8X, Try1=0x%8.8X, Try2=0x%8.8X, Try3=0x%8.8X\n", raw_delta_J, temp_delta_1, temp_delta_2, temp_delta_3);
		//fprintf(stdout, "Try1=%10.8f, Try2=%10.8f, Try3=%10.8f, Try4=%10.8f\n\n", temp_delta_1_f, temp_delta_2_f, temp_delta_3_f, temp_delta_4_f);
		nanosleep(ns_U_wait_time, NULL);
	}

	*((uint32_t *)(cfg + 0)) = 0x00000000;
	munmap(cfg, sysconf(_SC_PAGESIZE));
	//fclose(OUT_FILE);
	free(ns_J_wait_time);
	free(ns_U_wait_time);
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

int uint_to_DAC_CODE(uint32_t a)
{
	int temp_int = 0;
	uint32_t temp_uint = 0x00000000;
	if((a & 0x00002000) == 0x00002000)
	{
		temp_uint = ((~a) + 1) & 0x00003FFF;
		temp_int = 0x00001FFF + temp_uint;
	}
	else
	{
		temp_int = 0x00001FFF - a;
	}
	return temp_int;
}

uint32_t DAC_CODE_to_uint(uint32_t a)
{
	uint32_t temp = 0x00000000;
	if(a <= 8191 && a >= 0)
	{
		temp = 0x00001FFF - a;
	}
	else
	{
		temp = 0x00003FFF - a;
	}
	return temp;
}

uint32_t PERB_PLUS_CHECK(int a, int b)
{
	uint32_t temp_int = 0x00000000;
	if(a + b >= 16363)
	{
		temp_int = 0x00002000;
	}
	else if (a + b <= 8191)
	{
		temp_int = 0x00000000;
	}
	else
	{
		temp_int = a + b;
	}
}

uint32_t PERB_MINUS_CHECK(int a, int b)
{
	uint32_t temp_int = 0x00000000;
	if(a - b >= 16363)
	{
		temp_int = 0x00002000;
	}
	else if (a - b <= 8191)
	{
		temp_int = 0x00000000;
	}
	else
	{
		temp_int = a - b;
	}
}

double uint_to_ADC_double(uint32_t a)
{
	double double_temp = 0.0;
	uint32_t mag = 0x00000000;
	if((a & 0x80000000) == 0x80000000)
	{
		mag = ~a;
		mag = mag + 1;
		double_temp = (double) mag;
		double_temp = double_temp / 2047.0;
		double_temp = (-1) * double_temp;
	}
	else
	{
		mag = a;
		double_temp = (double) mag / 2047.0;
	}
	return double_temp;
}

uint32_t raw_to_ADC_uint(uint32_t a)
{
	uint32_t temp = 0x00000000;
	if((a & 0x00000800) == 0x0000800)
	{
		temp = 0xFFFFF000 | a;
	}
	else
	{
		temp = 0x000007FF & a;
	}
	return temp;
}

double uint_to_DAC_double(uint32_t a)
{
	double double_temp = 0.0;
	uint32_t mag = 0x00000000;
	if((a & 0x80000000) == 0x80000000)
	{
		mag = ~a;
		mag = mag + 1;
		double_temp = (double) mag;
		double_temp = double_temp / 8191.0;
		double_temp = (-1) * double_temp;
	}
	else
	{
		mag = a;
		double_temp = (double) mag / 8191.0;
	}
	return double_temp;
}

uint32_t raw_to_PERB_uint(uint32_t a)
{
	uint32_t temp = 0x00000000;
	if((a & 0x00000080) == 0x00000080)
	{
		temp = 0xFFFFFF00 | a;
	}
	else
	{
		temp = 0x0000007F & a;
	}
	return temp;
}

int uint_to_U_signed(uint32_t a)
{
	int temp = 0x00000000;
	if((a & 0x00000000) == 0x00000080)
	{
		temp = 0xFFFFFF00 | a;
	}
	else
	{
		temp = 0x0000007F & a;
	}
	return temp;
}

uint32_t get_rand(uint32_t N_CLT)
{
	uint32_t temp_int = 0x00000000;
	uint32_t i = 0;
	for(i = 0; i < N_CLT; i++)
	{
		temp_int = temp_int + (rand() % 0x0000FFFF);
	}

	temp_int = floor(temp_int / N_CLT);
	temp_int = temp_int % 0x000000FF;
	return temp_int;
}

// Returns a normally distributed deviate with zero mean and unit variance, using ran1(idum)
// as the source of uniform deviates.
float gasdev(long *idum)
{
	float ran1(long *idum);

	static int iset=0;
	static float gset;
	float fac,rsq,v1,v2;
	if (*idum < 0) iset=0; // Reinitialize.
	// We don’t have an extra deviate handy, so
	if (iset == 0) 
	{ 
		do
		{
			v1=2.0*ran1(idum)-1.0; // pick two uniform numbers in the square extending from -1 to +1 in each direction
			v2=2.0*ran1(idum)-1.0;

			rsq=v1*v1+v2*v2; // see if they are in the unit circle,

		} while (rsq >= 1.0 || rsq == 0.0); // and if they are not, try again.
		fac=sqrt(-2.0*log(rsq)/rsq);
		// Now make the Box-Muller transformation to get two normal deviates. Return one and save the other for next time.
		gset=v1*fac;
		iset=1; //Set flag.
		return v2*fac;
	}
	else
	{
		// We have an extra deviate handy,
		iset=0; // so unset the flag,
		return gset; // and return it.
	}
}


//“Minimal” random number generator of Park and Miller with Bays-Durham shuffle and added
//safeguards. Returns a uniform random deviate between 0.0 and 1.0 (exclusive of the endpoint
//values). Call with idum a negative integer to initialize; thereafter, do not alter idum between
//successive deviates in a sequence. RNMX should approximate the largest floating value that is
//less than 1.
float ran1(long *idum)
{
	int j;
	long k;
	static long iy=0;
	static long iv[NTAB];
	float temp;
	if (*idum <= 0 || !iy) 
	{ 
		// Initialize.
		if (-(*idum) < 1) *idum=1; // Be sure to prevent idum = 0.
		else *idum = -(*idum);
		for (j=NTAB+7;j>=0;j--)
		{
			//Load the shuffle table (after 8 warm-ups).
			k=(*idum)/IQ;
			*idum=IA*(*idum-k*IQ)-IR*k;
			if (*idum < 0) *idum += IM;
			if (j < NTAB) iv[j] = *idum;
		}
		iy=iv[0];
	}

	k=(*idum)/IQ; // Start here when not initializing.
	*idum=IA*(*idum-k*IQ)-IR*k; // Compute idum=(IA*idum) % IM without overflows by Schrage’s method.
	if (*idum < 0) *idum += IM;
	j=iy/NDIV; // Will be in the range 0..NTAB-1.
	iy=iv[j]; // Output previously stored value and refill the shuffle table.
	iv[j] = *idum;
	if ((temp=AM*iy) > RNMX) return RNMX; // Because users don’t expect endpoint values.
	else return temp;
}
