#include "spgd.h"

int main(int argc, char **argv)
{
	uint32_t SPGD_rate = 5000; // Integer Number of Hz
	double SPGD_duty = 0.5;
	uint32_t samp_period = 8; // Integer Number of ms
	uint32_t samp_t_range = 40000; // Integer Number of ms
	uint32_t start_time = 5000; // Integer Number of ms
	char *measurement_filename = "/home/taylor/Documents/new_spgd/src/SPGD.txt";
	double DAC_MAX_NEG_VAL = -10.0;
	double DAC_VOLTAGE_STEP = 10.0 / 8191.0;
	double VAR_DELTA_U = 0.09;
	double gain = 4.0;

	double ADC_MAX_NEG_VAL = -20.0;
	double ADC_VOLTAGE_STEP = 40.0 / 4096.0;

	uint32_t num_samps = ceil(samp_t_range / samp_period);
	
	struct SPGD_t * sys = create_SPGD_t(SPGD_rate, SPGD_duty, samp_period, measurement_filename, start_time);

	sys->num_samps = num_samps;
	sys->gain = gain;
	sys->pert_a_init = -420656;
	sys->pert_b_init = -666777;
	sys->VAR_DELTA_U = VAR_DELTA_U;
	sys->DAC_MAX_NEG_VAL = DAC_MAX_NEG_VAL;
	sys->DAC_VOLTAGE_STEP = DAC_VOLTAGE_STEP;
	sys->ADC_MAX_NEG_VAL = ADC_MAX_NEG_VAL;
	sys->ADC_VOLTAGE_STEP = ADC_VOLTAGE_STEP;

	uint32_t i = 0;
/*
	long long int start_t, end_t;
	double total_t;
	uint32_t DAC_A_VALUE = 0x00000000;
	uint32_t DAC_B_VALUE = 0x00000000;
	uint32_t ADC_A_VALUE = 0x00000000;

	uint32_t MODE_VALUE = 0x2FFFFFFF;

	int raw_delta_J = 0;

	uint32_t temp_ADC_VALUE = 0x00000000;


	uint32_t SPGD_periods_per_samp = 40;
*/

	sys = make_ADC_uint_arr(sys);
	sys = make_ADC_float_arr(sys, ADC_MAX_NEG_VAL, ADC_VOLTAGE_STEP);
	sys = make_DAC_float_arr(sys, DAC_MAX_NEG_VAL, DAC_VOLTAGE_STEP);
	sys = make_DAC_uint_arr(sys);

	//print_DAC_code_array(sys, sys->measurement_file_ptr);
	//print_DAC_float_array(sys, sys->measurement_file_ptr);

	for(i = 0; i < 16383; i++)
	//for(i = 0; i < 4096; i++)
	{
		fprintf(sys->measurement_file_ptr, "[%i] DAC Code = %i (0x%8.8X), DAC Float = %+10.8f\n", i, sys->DAC_code_array[i], sys->DAC_code_array[i], sys->DAC_float_array[i]); 
		//fprintf(sys->measurement_file_ptr, "[%i] ADC Code = %i (0x%8.8X), ADC Float = %+10.8f\n", i, sys->ADC_code_array[i], sys->ADC_code_array[i], sys->ADC_float_array[i]); 
	}

	//while(1)
/*
	sys->samps_array = (int *) malloc(sizeof(int) * num_samps);

	uint32_t samp_ndx = 0;
	uint32_t i = 0;
	uint32_t SPGD_period_cnt = 0;
	*((uint32_t *)(sys->gp + 0)) = 0x20000000;

	uint32_t num_iter = 100000;
*/
/*
	while(samp_ndx < num_samps)
	{
		if(i * samp_period < start_time)
		{
			temp_ADC_VALUE = *((uint32_t *)(sys->gp + 8));
			ADC_A_VALUE = 0x00000FFF & temp_ADC_VALUE;
			sys->samps_array[samp_ndx] = raw_to_ADC_uint(ADC_A_VALUE);			
			samp_ndx = samp_ndx + 1;
			my_usleep(sys->gt, 0.008);
		}
		else
		{
			if(SPGD_period_cnt == SPGD_periods_per_samp)
			{
				temp_ADC_VALUE = *((uint32_t *)(sys->gp + 8));
				ADC_A_VALUE = 0x00000FFF & temp_ADC_VALUE;
				sys->samps_array[samp_ndx] = raw_to_ADC_uint(ADC_A_VALUE);
				samp_ndx = samp_ndx + 1;
				SPGD_period_cnt = 0;
			}
*/

/*
	double time_taken = 0;
	start_t = read_GT(sys->gt);
	//while(1)
	for(i = 0; i < num_iter; i++)
	{
			//print_stats(sys, stdout);
			sys = generate_perturbations(sys);

			DAC_A_VALUE = sys->DAC_code_array[sys->U_A_P_ndx];
			DAC_B_VALUE = sys->DAC_code_array[sys->U_B_P_ndx];
			*((uint32_t *)(sys->gp + 0)) = MODE_VALUE & ((DAC_A_VALUE | 0xF0003FFF) & (DAC_B_VALUE | 0xFFFFC000));
			time_taken = my_usleep(sys->gt, 0.000050);
			//fprintf(stdout, "Time taken P = %+10.8f\n", time_taken);
			if(time_taken < 0.000050) return 0;
			sys->J_P = get_ADC_reading(sys);

			DAC_A_VALUE = sys->DAC_code_array[sys->U_A_M_ndx];
			DAC_B_VALUE = sys->DAC_code_array[sys->U_B_M_ndx];
			*((uint32_t *)(sys->gp + 0)) = MODE_VALUE & ((DAC_A_VALUE | 0xF0003FFF) & (DAC_B_VALUE | 0xFFFFC000));
			time_taken = my_usleep(sys->gt, 0.000050);
			//fprintf(stdout, "Time taken M = %+10.8f\n", time_taken);
			if(time_taken < 0.000050) return 0;
			sys->J_M = get_ADC_reading(sys);
			sys->delta_J = uint_to_ADC_double(sys->J_P - sys->J_M);

			sys = update_SPGD(sys);
			DAC_A_VALUE = sys->DAC_code_array[sys->U_A_DAC_code];
			DAC_B_VALUE = sys->DAC_code_array[sys->U_B_DAC_code];
			*((uint32_t *)(sys->gp + 0)) = MODE_VALUE & ((DAC_A_VALUE | 0xF0003FFF) & (DAC_B_VALUE | 0xFFFFC000));
	
			SPGD_period_cnt = SPGD_period_cnt + 1;
			time_taken = my_usleep(sys->gt, 0.000100);
			//fprintf(stdout, "Time taken U = %+10.8f\n", time_taken);
			if(time_taken < 0.000100) return 0;
		i = i + 1;
	}

	end_t = read_GT(sys->gt);
	total_t = (double) (end_t - start_t) * GT_PERIOD;
	*((uint32_t *)(sys->gp + 0)) = 0x00000000;
	fprintf(stdout, "Start = %16llu, End = %16llu\n", start_t, end_t);
	fprintf(stdout, "Total Time for 100k SPGD Iteration: %+10.8f secs, Time for 1 SPGD Iteration: %+10.8f sec, long int size %i\n", total_t, total_t / 100000.0, sizeof(long int));

	for(i = 0; i < num_samps; i++)
	{
		fprintf(sys->measurement_file_ptr, "%i\n", sys->samps_array[i]);
	}

	//write_samp_array(sys);
	delete_SPGD_t(sys);
*/

	return 0;
}

/*
		//fprintf(stdout, "U_A = %+10.8f, Delta_J = %+10.8f, Delta_U = %+10.8f, New = 0x%8.8X\n", U_A_Voltage, delta_J, act_pert_a, new_A_value);
		fprintf(stdout, "Raw Perturbation A = %+10.8f, Raw Perturbation B = %+10.8f\n", exp_pert_a, exp_pert_b);
		fprintf(stdout, "Perturbation A ndx = %i, Perturbation B ndx = %i\n", act_pert_a_ndx, act_pert_b_ndx);
		fprintf(stdout, "Perturbation A = %+10.8f, Perturbation B = %+10.8f\n", act_pert_a, act_pert_b);
		fprintf(stdout, "U_A + Pert_A = %+10.8f, U_B + Pert_B = %+10.8f\n", exp_U_A_P_float, exp_U_B_P_float);
		fprintf(stdout, "U_A - Pert_A = %+10.8f, U_B - Pert_B = %+10.8f\n", exp_U_A_M_float, exp_U_B_M_float);
		fprintf(stdout, "U_A_P ndx = %i, U_B_P ndx = %i, U_A_M ndx = %i, U_B_M ndx = %i\n", act_U_A_P, act_U_B_P, act_U_A_M, act_U_B_M);
		fprintf(stdout, "PLUS: DAC_A = 0x%8.8X, DAC_B = 0x%8.8X\n", DAC_code_array[act_U_A_P], DAC_code_array[act_U_B_P]);
		fprintf(stdout, "MINUS: DAC_A = 0x%8.8X, DAC_B = 0x%8.8X\n", DAC_code_array[act_U_A_M], DAC_code_array[act_U_B_M]);
		fprintf(stdout, "Raw J_P = 0x%8.8X, Raw J_M = 0x%8.8X\n", J_P, J_M);
		fprintf(stdout, "raw_delta_J = 0x%8.8X, delta_J = %+10.8f\n", raw_delta_J, delta_J);
		fprintf(stdout, "New A Value = %+10.8f, New B Value = %+10.8f\n", new_A_value, new_B_value);
		fprintf(stdout, "Raw new U_A = %+10.8f, Raw new U_B = %+10.8f\n", exp_U_A_new, exp_U_B_new);
		fprintf(stdout, "New U_A ndx = %i, New U_B ndx = %i\n", act_U_A_new_ndx, act_U_B_new_ndx);
		fprintf(stdout, "New U_A = %+10.8f, New U_B = %+10.8f\n", act_U_A_new, act_U_B_new);
		fprintf(stdout, "U_A_Voltage = %+10.8f, U_B_Voltage = %+10.8f\n", U_A_Voltage, U_B_Voltage);
		fprintf(stdout, "DAC_A U_wait Voltage = 0x%8.8X, DAC_A U_wait Voltage = 0x%8.8X\n", DAC_code_array[act_U_A_new_ndx], DAC_code_array[act_U_B_new_ndx]);
		fgets(txt_in, MAX_STR_LEN, stdin);
		if(!strcmp(txt_in, "Q\n"))
		{
				munmap(cfg, sysconf(_SC_PAGESIZE));
				free(DAC_float_array);
				return 0;
		}
*/

