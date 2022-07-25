#include "spgd.h"

struct SPGD_t * create_SPGD_t(uint32_t SPGD_iteration_rate, double SPGD_duty_cycle, uint32_t samp_period, char * out_name, uint32_t start_time)
{
	struct SPGD_t * new = (struct SPGD_t *) malloc(sizeof(struct SPGD_t));

	// Setup time periods for nanosleep
	double SPGD_iteration_period = 1 / (double) SPGD_iteration_rate;

	//new->start_wait = (struct timespec *) malloc(sizeof(struct timespec));
	//new->start_wait->tv_nsec = ceil(1000000 * start_time);
/*
	new->SPGD_period = (struct timespec *) malloc(sizeof(struct timespec));
	new->SPGD_period->tv_nsec = ceil(1000000000 * SPGD_iteration_period);

	new->J_wait = (struct timespec *) malloc(sizeof(struct timespec));
	new->J_wait->tv_nsec = ceil(1000000000 * SPGD_iteration_period * SPGD_duty_cycle / 2);

	new->U_wait = (struct timespec *) malloc(sizeof(struct timespec));
	new->U_wait->tv_nsec = ceil(1000000000 * SPGD_iteration_period * SPGD_duty_cycle);

	new->ADC_wait = (struct timespec *) malloc(sizeof(struct timespec));
	new->ADC_wait->tv_nsec = 10 * samp_period;
*/

/*
	int fd;
	if((fd = open("/dev/mem", O_RDWR)) < 0)
	{
	    	perror("open");
	    	return NULL;
	}
	new->gp = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);

	new->gt = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0xF8F00000);
	*((uint32_t *)(new->gp + 0)) = 0x00000000;
*/
	new->measurement_filename = out_name;
	new->measurement_file_ptr = NULL;
	if((new->measurement_file_ptr = fopen(out_name, "w")) == NULL)
	{
    		perror("open");
    		return NULL;
	}
	return new;
}

void delete_SPGD_t(struct SPGD_t * old)
{
	munmap(old->gp, sysconf(_SC_PAGESIZE));
	munmap(old->gt, sysconf(_SC_PAGESIZE));
	free(old->samps_array);
	free(old->DAC_float_array);
	free(old->DAC_code_array);
	free(old->ADC_float_array);
	free(old->ADC_code_array);
	//free(old->start_wait);
	//free(old->SPGD_period);
	//free(old->J_wait);
	//free(old->U_wait);
	//free(old->ADC_wait);

	fclose(old->measurement_file_ptr);
	free(old);
}

void write_samp_array(struct SPGD_t * sys)
{
	uint32_t i = 0;
	for(i = 0; i < sys->num_samps; i++)
	{
		fprintf(sys->measurement_file_ptr, "%i\n", sys->samps_array[i]);
	}
}

int get_ADC_reading(struct SPGD_t * sys)
{
	return (-1)*raw_to_ADC_uint(0x00000FFF & *((uint32_t *)(sys->gp + 8)));
	
	/*
	int input_buffer[NUM_READS];
	int sum = 0;
	int average = 0;
	uint32_t i = 0;
	for(i = 0; i < NUM_READS; i++)
	{
		input_buffer[i] = raw_to_ADC_uint(0x00000FFF & *((uint32_t *)(sys->gp + 8)));
		my_usleep(sys->gt, 0.0000005);
	}
	for(i = 0; i < NUM_READS; i++)
	{
		sum = sum + input_buffer[i];
	}
	average = floor(sum / NUM_READS);
	return average;
	*/
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

uint32_t raw_to_ADC_uint(uint32_t a)
{
	uint32_t temp = 0x00000000;
	if((a & 0x00000800) == 0x0000800)
	{
		temp = ~a;
		temp = temp + 1;

		temp = 0xFFFFF000 | a;
	}
	else
	{
		temp = 0x000007FF & a;
	}
	return temp;
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

struct SPGD_t * make_DAC_uint_arr(struct SPGD_t * sys)
{
	uint32_t MAX_DAC = 16384;
	uint32_t i = 0;
	uint32_t j = 0;
	sys->DAC_code_array = (uint32_t *) malloc(MAX_DAC * sizeof(uint32_t));
	for(i = 0; i < 8192; i++)
	{
		sys->DAC_code_array[i] = 0x00001FFF - i;
	}
	for(j = 0; j < 8192; j++)
	{
		sys->DAC_code_array[i+j] = 0x00003FFF - j;
	}
	return sys;
}

struct SPGD_t * make_DAC_float_arr(struct SPGD_t * sys, double MAX_NEG_VAL, double VOLTAGE_STEP)
{
	uint32_t MAX_DAC = 16384;
	uint32_t i = 0;
	sys->DAC_float_array = (double *) malloc(MAX_DAC * sizeof(double));
	for(i = 0; i < MAX_DAC; i++)
	{
		sys->DAC_float_array[i] = MAX_NEG_VAL + i * VOLTAGE_STEP;
	}
	return sys;
}

struct SPGD_t * make_ADC_uint_arr(struct SPGD_t * sys)
{
	uint32_t MAX_ADC = 4096;
	uint32_t i = 0;
	uint32_t j = 0;
	sys->ADC_code_array = (uint32_t *) malloc(MAX_ADC * sizeof(uint32_t));
	for(i = 0; i < 2048; i++)
	{
		sys->ADC_code_array[i] = 0x00000800 + i;
	}
	for(j = 0; j < 2048; j++)
	{
		sys->ADC_code_array[i+j] = j;
	}
	return sys;
}

struct SPGD_t * make_ADC_float_arr(struct SPGD_t * sys, double MAX_NEG_VAL, double VOLTAGE_STEP)
{
	uint32_t MAX_ADC = 4096;
	uint32_t i = 0;
	sys->ADC_float_array = (double *) malloc(MAX_ADC * sizeof(double));
	for(i = 0; i < MAX_ADC; i++)
	{
		sys->ADC_float_array[i] = MAX_NEG_VAL + i * VOLTAGE_STEP;
	}
	return sys;
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

struct SPGD_t * generate_perturbations(struct SPGD_t * sys)
{
	double new_A = gasdev(&sys->pert_a_init) * sys->VAR_DELTA_U;
	double new_B = gasdev(&sys->pert_a_init) * sys->VAR_DELTA_U;
	sys->PERT_A = new_A;
	sys->PERT_B = new_B;
	double raw_U_A_P = sys->U_A_Voltage + new_A;
	double raw_U_A_M = sys->U_A_Voltage - new_A;
	double raw_U_B_P = sys->U_B_Voltage + new_B;
	double raw_U_B_M = sys->U_B_Voltage - new_B;

	if(raw_U_A_P > 10.0) raw_U_A_P = 10.0;
	if(raw_U_A_M > 10.0) raw_U_A_M = 10.0;
	if(raw_U_B_P > 10.0) raw_U_B_P = 10.0;
	if(raw_U_B_M > 10.0) raw_U_B_M = 10.0;

	if(raw_U_A_P < 0.0) raw_U_A_P = 0.0;
	if(raw_U_A_M < 0.0) raw_U_A_M = 0.0;
	if(raw_U_B_P < 0.0) raw_U_B_P = 0.0;
	if(raw_U_B_M < 0.0) raw_U_B_M = 0.0;

	sys->U_A_P_ndx = get_DAC_ndx_from_float(raw_U_A_P, sys->DAC_VOLTAGE_STEP, sys->DAC_float_array);
	sys->U_A_M_ndx = get_DAC_ndx_from_float(raw_U_A_M, sys->DAC_VOLTAGE_STEP, sys->DAC_float_array);
	sys->U_B_P_ndx = get_DAC_ndx_from_float(raw_U_B_P, sys->DAC_VOLTAGE_STEP, sys->DAC_float_array);
	sys->U_B_M_ndx = get_DAC_ndx_from_float(raw_U_B_M, sys->DAC_VOLTAGE_STEP, sys->DAC_float_array);

	return sys;
}

struct SPGD_t * update_SPGD(struct SPGD_t * sys)
{
	sys->U_A_Voltage = sys->U_A_Voltage + sys->gain * sys->delta_J * sys->PERT_A;
	sys->U_B_Voltage = sys->U_B_Voltage + sys->gain * sys->delta_J * sys->PERT_B;

	if(sys->U_A_Voltage > 10.0) sys->U_A_Voltage = 10.0;
	if(sys->U_B_Voltage > 10.0) sys->U_B_Voltage = 10.0;
	if(sys->U_A_Voltage < 0.0) sys->U_A_Voltage = 0.0;
	if(sys->U_B_Voltage < 0.0) sys->U_B_Voltage = 0.0;

	sys->U_A_DAC_code = get_DAC_ndx_from_float(sys->U_A_Voltage, sys->DAC_VOLTAGE_STEP, sys->DAC_float_array);
	sys->U_B_DAC_code = get_DAC_ndx_from_float(sys->U_B_Voltage, sys->DAC_VOLTAGE_STEP, sys->DAC_float_array);
	return sys;
}

long long int read_GT(void * GT)
{
	long long int time_read = 0;
	uint32_t MSB = *((uint32_t *)(GT + 516));
	uint32_t LSB = *((uint32_t *)(GT + 512));
	uint32_t try = *((uint32_t *)(GT + 516));
	while(MSB != try)
	{
		MSB = *((uint32_t *)(GT + 516));
		LSB = *((uint32_t *)(GT + 512));
		try = *((uint32_t *)(GT + 516));
	}
	time_read = (MSB << 32) + LSB;
	return time_read;
}

double my_usleep(void * GT, double wait_time)
{
	double time_elapsed = 0.0;
	long long int global_tim = 0;
	uint32_t GT_LSB = 0;
	uint32_t GT_MSB = 0;
	uint32_t GT_try = 0;

	long long int start_t = read_GT(GT);
	long long int end_t = 0;
	while(time_elapsed < wait_time)
	{
		end_t = read_GT(GT);
		time_elapsed = ((double) (end_t - start_t)) * GT_PERIOD;
	}
	return time_elapsed;
}

void print_DAC_code_array(struct SPGD_t * sys, FILE * OUT)
{
	uint32_t i = 0;
	for(i = 0; i < 16384; i++)
	{
		fprintf(OUT, "0x%8.8X\n", sys->DAC_code_array[i]);
	}
}

void print_DAC_float_array(struct SPGD_t * sys, FILE * OUT)
{
	uint32_t i = 0;
	for(i = 0; i < 16384; i++)
	{
		fprintf(OUT, "%+10.8f\n", sys->DAC_float_array[i]);
	}
}

void print_stats(struct SPGD_t * sys, FILE * OUT)
{
	fprintf(OUT, "Pert A Double = %+10.8f, Pert B Double = %+10.8f\n", sys->PERT_A, sys->PERT_B);
	fprintf(OUT, "A_P_ndx = %i, B_P_ndx = %i, A_M_ndx = %i, B_M_ndx = %i\n", sys->U_A_P_ndx, sys->U_B_P_ndx, sys->U_A_M_ndx, sys->U_B_M_ndx);
	fprintf(OUT, "J_P = 0x%8.8X, J_M = 0x%8.8X, Delta_J_int = %i, Delta_J_double = %+10.8f\n", sys->J_P, sys->J_M, sys->J_P - sys->J_M, sys->delta_J);
	fprintf(OUT, "U_A_volt = %+10.8f, U_A_code = 0x%8.8X, U_B_volt = %+10.8f, U_B_code = 0x%8.8X\n", sys->U_A_Voltage, sys->U_A_DAC_code, sys->U_B_Voltage, sys->U_B_DAC_code);
}
