clc;
close all;
clear;

num_samps_desired = 1000000;

test1 = '000000AA';

int_test = my_hex_2_int(test1,8);

input_txt_name = "/home/taylor/Documents/spgd_three/rand.txt";
%input_txt_name = "/sftp://172.19.68.121/home/rand.txt";
input_file = fopen(input_txt_name);

rand_values = zeros(num_samps_desired,1);
new_rand_values = zeros(num_samps_desired,1);


for i = 1:num_samps_desired
    temp_str = fgetl(input_file);
    rand_values(i) = my_hex_2_int(temp_str(3:10),8) - power(2,15);
    new_rand_values(i) = my_signer(my_hex_2_int(temp_str(3:10),8), power(2,15)-1,power(2,16));
end

%plot(1:num_samps_desired,rand_values);
histogram(rand_values);

function [int_val] = my_hex_2_int(input_string,hex_length)
    temp_int_val = 0;
    for i = 1:hex_length
        temp_place_value = 0;
        switch(input_string(hex_length-i+1))
            case '0'
                temp_place_value = 0;
            case '1'
                temp_place_value = 1;
            case '2'
                temp_place_value = 2;
            case '3'
                temp_place_value = 3;
            case '4'
                temp_place_value = 4;
            case '5'
                temp_place_value = 5;
            case '6'
                temp_place_value = 6;
            case '7'
                temp_place_value = 7;
            case '8'
                temp_place_value = 8;
            case '9'
                temp_place_value = 9;
            case 'A'
                temp_place_value = 10;
            case 'B'
                temp_place_value = 11;
            case 'C'
                temp_place_value = 12;
            case 'D'
                temp_place_value = 13;
            case 'E'
                temp_place_value = 14;
            case 'F'
                temp_place_value = 15;
            otherwise
                temp_place_value = 0;
        end
        power_int_val = power(16,i-1);
        temp_int_val = temp_int_val + power_int_val * temp_place_value;
    end
    int_val = temp_int_val;
end

function [new] = my_signer(unsign,max_pos_value,sub_value)
    if unsign > max_pos_value
        new = unsign - sub_value;
    else
        new = unsign;
    end
end