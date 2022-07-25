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

int main(int argc, char **argv)
{
	clock_t start_t, end_t;
	double total_t;
	
	char *out_name = "gauss.txt";
	srand(420666);
	uint32_t SAMPS_WANTED = 1000000;
	uint32_t i = 0;
	uint32_t rand_samp = 0x00000000;

	long init_int = -420666;

	float * float_list = NULL;
	float_list = (float *) malloc(SAMPS_WANTED * sizeof(float));

	FILE * OUT_FILE = NULL;
	if((OUT_FILE = fopen(out_name, "w")) == NULL)
	{
    		perror("open");
    		return 1;
	}

	start_t = clock();
	for(i = 0; i < SAMPS_WANTED; i++)
	{
		float_list[i] = gasdev(&init_int);
		fprintf(OUT_FILE, "%+10.8f\n", float_list[i]);
	}
	
	end_t = clock();
	total_t = (double) (end_t - start_t) / CLOCKS_PER_SEC;
	fclose(OUT_FILE);
	fprintf(stdout, "Total Time for 1M Rand Numbers: %+10.8f secs, Time for 1 Rand Num: %+10.8f sec\n", total_t, total_t / 1000000.0);
	return 0;
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
