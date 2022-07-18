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
double * make_float_arr(long *, uint32_t, double);
uint32_t * make_DAC_uint_arr();
uint32_t * make_DAC_uint_ndx_arr();
double * make_DAC_float_arr(double, double);
uint32_t DAC_uint_to_ndx(uint32_t);
uint32_t get_DAC_ndx_from_float(double, double, double *);

int main(int argc, char **argv)
{
/*
	void *cfg;
	int fd;
	char *name = "/dev/mem";

	if((fd = open(name, O_RDWR)) < 0)
	{
	    	perror("open");
	    	return 1;
	}
	cfg = mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x42000000);
*/

/*
	char *out_name = "DAC.txt";
	FILE * OUT_FILE = NULL;
	if((OUT_FILE = fopen(out_name, "w")) == NULL)
	{
    		perror("open");
    		return 1;
	}
*/
	long init_int = -420666;
	uint32_t num_floats = 1000;
	uint32_t i = 0;
	double MAX_NEG_VAL = -10.0;
	double VOLTAGE_STEP = 10.0 / 8191.0;

	double V_pi = 2.38;
	double VAR_DELTA_U = 0.09;
	double phi_rms_amp = 0.3;
	double pert_V_constant = phi_rms_amp * V_pi / M_PI;
	double * float_array = make_float_arr(&init_int, num_floats,pert_V_constant);
	uint32_t * DAC_uint_array = make_DAC_uint_arr();
	uint32_t * DAC_uint_ndx_array = make_DAC_uint_ndx_arr();
	double * DAC_float_array = make_DAC_float_arr(MAX_NEG_VAL, VOLTAGE_STEP);

	int DAC_float_div = 0;
	int DAC_float_ndx = 0;
	double temp_float = 0.0;
	double temp_float_l = 0.0;
	double temp_float_r = 0.0;
	double sys_diff = 0.0;
	double diff_l = 0.0;
	double diff_r = 0.0;
	uint32_t best_match_ndx = 0;
	double best_match_float = 0.0;

	for(i = 0; i < num_floats; i++)
	{
		best_match_ndx = get_DAC_ndx_from_float(float_array[i], VOLTAGE_STEP, DAC_float_array);
		best_match_float = DAC_float_array[best_match_ndx];
		//DAC_float_div = floor(float_array[i] / VOLTAGE_STEP); 
		//DAC_float_ndx = DAC_float_div + 8192;
		//temp_float = DAC_float_array[DAC_float_ndx];
		//temp_float_l = DAC_float_array[DAC_float_ndx-1];
		//temp_float_r = DAC_float_array[DAC_float_ndx+1];		
		//sys_diff = ((temp_float - float_array[i]) / float_array[i]) * 100;
		//diff_l = ((temp_float_l - float_array[i]) / float_array[i]) * 100;
		//diff_r = ((temp_float_r - float_array[i]) / float_array[i]) * 100;
		sys_diff = ((best_match_float - float_array[i]) / float_array[i]) * 100;
		fprintf(stdout, "Need=%+10.8f, MatchNDX=%i, Match=%+10.8f, %% Error=%10.8f%%\n", float_array[i], best_match_ndx, best_match_float, sys_diff);
	}
	fprintf(stdout, "DAC_constant = %+10.8f\n", pert_V_constant);
/*
	for(i = 0; i < 16384; i++)
	{
		fprintf(OUT_FILE, "Index=%i, DAC_uint = 0x%8.8X, DAC_float = %+10.8f, ndx=%i\n", DAC_uint_ndx_array[i], DAC_uint_array[i], DAC_float_array[i], DAC_uint_to_ndx(DAC_uint_array[i]));
	}
	fclose(OUT_FILE);
*/
	free(float_array);
	free(DAC_uint_array);
	free(DAC_uint_ndx_array);
	free(DAC_float_array);

//	munmap(cfg, sysconf(_SC_PAGESIZE));
	return 0;
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

double * make_float_arr(long * idum, uint32_t num_float, double DAC_float_constant)
{
	double * out_array = (double *) malloc(sizeof(double) * num_float);
	uint32_t i = 0;
	for(i = 0; i < num_float; i++)
	{
		out_array[i] = gasdev(idum)*DAC_float_constant;
	}
	return out_array;
}

uint32_t DAC_uint_to_ndx(uint32_t DAC_uint)
{
	uint32_t ndx = 0;
	uint32_t temp = 0;
	if((DAC_uint & 0x00002000) == 0x00002000)
	{
		temp = DAC_uint & 0x00001FFF;
		temp = (~temp) & 0x00001FFF;
		temp = temp + 1;
		ndx = temp + 8191;
	}
	else
	{
		ndx = 0x1FFF - DAC_uint;
	}
	return ndx;
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

uint32_t * make_DAC_uint_ndx_arr()
{
	uint32_t MAX_DAC = 16384;
	uint32_t i = 0;
	uint32_t j = 0;
	uint32_t * out_array = (uint32_t *) malloc(MAX_DAC * sizeof(uint32_t));
	for(i = 0; i < MAX_DAC; i++)
	{
		out_array[i] = i;
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
