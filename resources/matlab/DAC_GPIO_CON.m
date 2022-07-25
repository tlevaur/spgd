clc;
close all;
clear;

num_DAC_val = 16383;
input_txt_name = "/home/taylor/Documents/spgd_three/GPIO_DAC_CON.txt";
input_file = fopen(input_txt_name);

num_samps_per_dac_value = 10;
total_samps = 10*16384;

DAC_A_VALUES = zeros(total_samps,1);
DAC_B_VALUES = zeros(total_samps,1);
ADC_A_VALUES = zeros(total_samps,1);
ADC_B_VALUES = zeros(total_samps,1);

averaged_DAC_A_VALUES = zeros(num_DAC_val+1,0);
averaged_DAC_B_VALUES = zeros(num_DAC_val+1,0);
averaged_ADC_A_VALUES = zeros(num_DAC_val+1,0);
averaged_ADC_B_VALUES = zeros(num_DAC_val+1,0);

for i = 1:total_samps
    temp_str = fgetl(input_file);
    DAC_B_VALUES(i) = my_signer(my_hex_2_int(temp_str(1:4),4),8191,16384);
    ADC_B_VALUES(i) = my_signer(my_hex_2_int(temp_str(6:8),3),2047,4096);
    DAC_A_VALUES(i) = my_signer(my_hex_2_int(temp_str(10:13),4), 8191,16384);
    ADC_A_VALUES(i) = my_signer(my_hex_2_int(temp_str(15:17),3), 2047,4096);
end

split_pt = total_samps / 2;

ADC_A_VALUES = arrange(ADC_A_VALUES,total_samps, split_pt);
ADC_B_VALUES = arrange(ADC_B_VALUES,total_samps, split_pt);
DAC_A_VALUES = arrange(DAC_A_VALUES,total_samps, split_pt);
DAC_B_VALUES = arrange(DAC_B_VALUES,total_samps, split_pt);

averaged_DAC_A_VALUES = get_averages(DAC_A_VALUES,num_samps_per_dac_value,num_DAC_val);
averaged_DAC_B_VALUES = get_averages(DAC_B_VALUES,num_samps_per_dac_value,num_DAC_val);
averaged_ADC_A_VALUES = get_averages(ADC_A_VALUES,num_samps_per_dac_value,num_DAC_val);
averaged_ADC_B_VALUES = get_averages(ADC_B_VALUES,num_samps_per_dac_value,num_DAC_val);

figure;
plot(1:total_samps,DAC_A_VALUES);
hold on;
plot(1:total_samps,ADC_A_VALUES);
plot(1:total_samps,DAC_B_VALUES);
plot(1:total_samps,ADC_B_VALUES);
title('Raw DAC/ADC Data');
xlabel('Sample Number');
ylabel('Twos Complement Signed Integer');
legend('DAC_1','ADC_1','DAC_2','ADC_2');

figure;
plot(1:num_DAC_val+1,averaged_DAC_A_VALUES);
hold on;
plot(1:num_DAC_val+1,averaged_ADC_A_VALUES);
plot(1:num_DAC_val+1,averaged_DAC_B_VALUES);
plot(1:num_DAC_val+1,averaged_ADC_B_VALUES);
title('Averaged DAC/ADC Data');
xlabel('Sample Number');
ylabel('Twos Complement Signed Integer');
legend('DAC_1','ADC_1','DAC_2','ADC_2');

figure;
plot(averaged_DAC_A_VALUES,averaged_ADC_A_VALUES);
hold on;
title('ADC_1 Reading of DAC_1');
xlabel('DAC Value');
ylabel('Averaged ADC Value');

figure;
plot(averaged_DAC_B_VALUES,averaged_ADC_B_VALUES);
hold on;
title('ADC_2 Reading of DAC_2');
xlabel('DAC Value');
ylabel('Averaged ADC Value');

figure;
plot(DAC_A_VALUES,ADC_A_VALUES);
hold on;
title('ADC_1 Reading of DAC_1');
xlabel('DAC Value');
ylabel('ADC Value');

figure;
plot(DAC_B_VALUES,ADC_B_VALUES);
hold on;
title('ADC_2 Reading of DAC_2');
xlabel('DAC Value');
ylabel('ADC Value');

function [int_val] = my_hex_2_int(input_string,hex_length)
    temp_value = 0;
    for i = hex_length : -1 : 1
        if i == hex_length 
            switch (input_string(i))
                case '0'
                    text_char_int_value = 0;
                case '1'
                    text_char_int_value = 1;
                case '2'
                    text_char_int_value = 2;
                case '3'
                    text_char_int_value = 3;
                case '4'
                    text_char_int_value = 4;
                case '5'
                    text_char_int_value = 5;
                case '6'
                    text_char_int_value = 6;
                case '7'
                    text_char_int_value = 7;
                case '8'
                    text_char_int_value = 8;
                case '9'
                    text_char_int_value = 9;
                case 'A'
                    text_char_int_value = 10;
                case 'B'
                    text_char_int_value = 11;
                case 'C'
                    text_char_int_value = 12;
                case 'D'
                    text_char_int_value = 13;
                case 'E'
                    text_char_int_value = 14;
                case 'F'
                    text_char_int_value = 15;
                otherwise
                    text_char_int_value = 0;
            end
        elseif i == hex_length - 1
            switch (input_string(i))
                case '0'
                    text_char_int_value = 0*16;
                case '1'
                    text_char_int_value = 1*16;
                case '2'
                    text_char_int_value = 2*16;
                case '3'
                    text_char_int_value = 3*16;
                case '4'
                    text_char_int_value = 4*16;
                case '5'
                    text_char_int_value = 5*16;
                case '6'
                    text_char_int_value = 6*16;
                case '7'
                    text_char_int_value = 7*16;
                case '8'
                    text_char_int_value = 8*16;
                case '9'
                    text_char_int_value = 9*16;
                case 'A'
                    text_char_int_value = 10*16;
                case 'B'
                    text_char_int_value = 11*16;
                case 'C'
                    text_char_int_value = 12*16;
                case 'D'
                    text_char_int_value = 13*16;
                case 'E'
                    text_char_int_value = 14*16;
                case 'F'
                    text_char_int_value = 15*16;
                otherwise
                    text_char_int_value = 0;
            end
        elseif i == hex_length - 2
            switch (input_string(i))
                case '0'
                    text_char_int_value = 0*16*16;
                case '1'
                    text_char_int_value = 1*16*16;
                case '2'
                    text_char_int_value = 2*16*16;
                case '3'
                    text_char_int_value = 3*16*16;
                case '4'
                    text_char_int_value = 4*16*16;
                case '5'
                    text_char_int_value = 5*16*16;
                case '6'
                    text_char_int_value = 6*16*16;
                case '7'
                    text_char_int_value = 7*16*16;
                case '8'
                    text_char_int_value = 8*16*16;
                case '9'
                    text_char_int_value = 9*16*16;
                case 'A'
                    text_char_int_value = 10*16*16;
                case 'B'
                    text_char_int_value = 11*16*16;
                case 'C'
                    text_char_int_value = 12*16*16;
                case 'D'
                    text_char_int_value = 13*16*16;
                case 'E'
                    text_char_int_value = 14*16*16;
                case 'F'
                    text_char_int_value = 15*16*16;
                otherwise
                    text_char_int_value = 0;
            end
        else
            switch (input_string(i))
                case '0'
                    text_char_int_value = 0*16*16*16;
                case '1'
                    text_char_int_value = 1*16*16*16;
                case '2'
                    text_char_int_value = 2*16*16*16;
                case '3'
                    text_char_int_value = 3*16*16*16;
                case '4'
                    text_char_int_value = 4*16*16*16;
                case '5'
                    text_char_int_value = 5*16*16*16;
                case '6'
                    text_char_int_value = 6*16*16*16;
                case '7'
                    text_char_int_value = 7*16*16*16;
                case '8'
                    text_char_int_value = 8*16*16*16;
                case '9'
                    text_char_int_value = 9*16*16*16;
                case 'A'
                    text_char_int_value = 10*16*16*16;
                case 'B'
                    text_char_int_value = 11*16*16*16;
                case 'C'
                    text_char_int_value = 12*16*16*16;
                case 'D'
                    text_char_int_value = 13*16*16*16;
                case 'E'
                    text_char_int_value = 14*16*16*16;
                case 'F'
                    text_char_int_value = 15*16*16*16;
                otherwise
                    text_char_int_value = 0;
            end
        end
        temp_value = temp_value + text_char_int_value;
        text_char_int_value = 0;
    end
    int_val = temp_value;
end

function [new] = my_signer(unsign,max_pos_value,sub_value)
    if unsign > max_pos_value
        new = unsign - sub_value;
    else
        new = unsign;
    end
end

function [good] = arrange(in_values,total_samps,split_pt)
    left_half = in_values(1:split_pt);
    right_half = in_values(split_pt+1:total_samps);
    good = cat(1,right_half, left_half);
end

function [averages] = get_averages(samples,samps_per_DAC_value,DAC_VALUES)
    averages = zeros(DAC_VALUES+1,1);
    for i = 1:DAC_VALUES+1
        averages(i) = sum(samples((i-1)*samps_per_DAC_value + 1:i*samps_per_DAC_value))/samps_per_DAC_value;
    end
end