clc;
% close all;
clear;

bit_width = 12;
out_width = 12;
% n_samps = 1000000;
n_samps = 1000000;
data = zeros(n_samps, 1);

%fid = fopen("Documents/spgd_three/RNG_DATA.txt");
fid = fopen("/home/taylor/Code/spgd/fpga_projects/new_spgd/tmp/new_spgd/new_spgd.sim/sim_1/behav/xsim/samp_generation.txt");
A=cell(2,n_samps);
raw_data_out=zeros(n_samps,1);

for i = 1:n_samps*2
    raw_data = fscanf(fid, "%s,%s\n", n_samps);
    raw_data = split(raw_data, ",");
    raw_data{1,1};
    if(i > 2)
        k = ceil(i/2);
    else
        k=1;
    end
    A{mod(i-1,2)+1,k} = raw_data{1,1};
end

%raw_data = readmatrix("Documents/spgd_three/RNG_DATA.txt");
for i=1:n_samps
    raw_data_out(i) = hex_2_16Q32(strcat('0000', A{1,i}));
    if raw_data_out(i) >= pow2(out_width-1)
        data(i) = raw_data_out(i) - pow2(bit_width);
    else
        data(i) = raw_data_out(i);
    end
end
figure;
h = histogram(data,'Normalization', 'probability');
xlabel('Random Signed Integer Distribution for Width = 14');
ylabel('Number of Occurences');
fclose(fid);

function [out] = hex_2_16Q32 (a)
    VAL=0;
    NUM = hex2dec(a);
    NUM = dec2bin(NUM);
    NUM_length = length(NUM);
    for i = 1:NUM_length
        if i == 1 && NUM_length == 48
            VAL = VAL + str2double(NUM(i))*(-1)*power(2,((NUM_length-32)-i));
        else
            if i <= NUM_length-32
                VAL = VAL + str2double(NUM(i))*power(2,((NUM_length-32)-i));
            else
                VAL = VAL + str2double(NUM(i))*power(2,(NUM_length-32-i));
            end
        end
    end
    out = VAL;
end