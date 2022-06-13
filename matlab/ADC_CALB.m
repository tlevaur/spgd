clc;
close all;
clear;

num_samps = 16384;
IN_1_L_txt_name = "/home/taylor/Documents/new_spgd/src/IN_1_L.txt";
IN_1_H_txt_name = "/home/taylor/Documents/new_spgd/src/IN_1_H.txt";
IN_2_L_txt_name = "/home/taylor/Documents/new_spgd/src/IN_2_L.txt";
IN_2_H_txt_name = "/home/taylor/Documents/new_spgd/src/IN_2_H.txt";


IN_1_L_file = fopen(IN_1_L_txt_name);
IN_1_H_file = fopen(IN_1_H_txt_name);
IN_2_L_file = fopen(IN_2_L_txt_name);
IN_2_H_file = fopen(IN_2_H_txt_name);

IN_1_L_samps = zeros(num_samps,1);
IN_1_H_samps = zeros(num_samps,1);
IN_2_L_samps = zeros(num_samps,1);
IN_2_H_samps = zeros(num_samps,1);

for i = 1:num_samps
    temp_str_1_L = fgetl(IN_1_L_file);
    temp_str_1_H = fgetl(IN_1_H_file);
    temp_str_2_L = fgetl(IN_2_L_file);
    temp_str_2_H = fgetl(IN_2_H_file);
    IN_1_L_samps(i) = my_signer(my_hex_2_int(temp_str_1_L(8:10),3),2047,4096);
    IN_1_H_samps(i) = my_signer(my_hex_2_int(temp_str_1_H(8:10),3),2047,4096);
    IN_2_L_samps(i) = my_signer(my_hex_2_int(temp_str_2_L(4:6),3),2047,4096);
    IN_2_H_samps(i) = my_signer(my_hex_2_int(temp_str_2_H(4:6),3),2047,4096);
end

figure
plot(1:num_samps,IN_1_L_samps);
hold on;
plot(1:num_samps,IN_1_H_samps);
plot(1:num_samps,IN_2_L_samps);
plot(1:num_samps,IN_2_H_samps);
xlabel('Sample Number');
ylabel('ADC_CODE');

xL = round((-2.5/40*4096)+2048);
xH = round((2.5/40*4096)+2048);
y_1_L = mean(IN_1_L_samps);
y_1_H = mean(IN_1_H_samps);
y_2_L = mean(IN_2_L_samps);
y_2_H = mean(IN_2_H_samps);

IN_1_actual_gain = (y_1_H - y_1_L) / (xH - xL);
IN_2_actual_gain = (y_2_H - y_2_L) / (xH - xL);

IN_1_actual_offset = y_1_L - xL * IN_1_actual_gain;
IN_2_actual_offset = y_2_L - xL * IN_2_actual_gain;

IN_1_CalGain = (xH - xL) / (y_1_H - y_1_L);
IN_2_CalGain = (xH - xL) / (y_2_H - y_2_L);

IN_1_CalOffset = y_1_L * IN_1_CalGain - xL;
IN_2_CalOffset = y_2_L * IN_2_CalGain - xL;

% split_pt = total_samps / 2;
% 
% ADC_A_VALUES = arrange(ADC_A_VALUES,total_samps, split_pt);
% ADC_B_VALUES = arrange(ADC_B_VALUES,total_samps, split_pt);
% DAC_A_VALUES = arrange(DAC_A_VALUES,total_samps, split_pt);
% DAC_B_VALUES = arrange(DAC_B_VALUES,total_samps, split_pt);
% 
% averaged_DAC_A_VALUES = get_averages(DAC_A_VALUES,num_samps_per_dac_value,num_DAC_val);
% averaged_DAC_B_VALUES = get_averages(DAC_B_VALUES,num_samps_per_dac_value,num_DAC_val);
% averaged_ADC_A_VALUES = get_averages(ADC_A_VALUES,num_samps_per_dac_value,num_DAC_val);
% averaged_ADC_B_VALUES = get_averages(ADC_B_VALUES,num_samps_per_dac_value,num_DAC_val);
% 
% figure;
% plot(1:total_samps,DAC_A_VALUES);
% hold on;
% plot(1:total_samps,ADC_A_VALUES);
% plot(1:total_samps,DAC_B_VALUES);
% plot(1:total_samps,ADC_B_VALUES);
% title('Raw DAC/ADC Data');
% xlabel('Sample Number');
% ylabel('Twos Complement Signed Integer');
% legend('DAC_1','ADC_1','DAC_2','ADC_2');
% 
% figure;
% plot(1:num_DAC_val+1,averaged_DAC_A_VALUES);
% hold on;
% plot(1:num_DAC_val+1,averaged_ADC_A_VALUES);
% plot(1:num_DAC_val+1,averaged_DAC_B_VALUES);
% plot(1:num_DAC_val+1,averaged_ADC_B_VALUES);
% title('Averaged DAC/ADC Data');
% xlabel('Sample Number');
% ylabel('Twos Complement Signed Integer');
% legend('DAC_1','ADC_1','DAC_2','ADC_2');
% 
% figure;
% plot(averaged_DAC_A_VALUES,averaged_ADC_A_VALUES);
% hold on;
% title('ADC_1 Reading of DAC_1');
% xlabel('DAC Value');
% ylabel('Averaged ADC Value');
% 
% figure;
% plot(averaged_DAC_B_VALUES,averaged_ADC_B_VALUES);
% hold on;
% title('ADC_2 Reading of DAC_2');
% xlabel('DAC Value');
% ylabel('Averaged ADC Value');
% 
% figure;
% plot(DAC_A_VALUES,ADC_A_VALUES);
% hold on;
% title('ADC_1 Reading of DAC_1');
% xlabel('DAC Value');
% ylabel('ADC Value');
% 
% figure;
% plot(DAC_B_VALUES,ADC_B_VALUES);
% hold on;
% title('ADC_2 Reading of DAC_2');
% xlabel('DAC Value');
% ylabel('ADC Value');

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
    new = new + 2048;
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