clc;
close all;
clear;

bit_width = 12;
out_width = 12;
n_samps = 1000000;

raw_data = zeros(n_samps, 1);
data = zeros(n_samps, 1);
%fid = fopen("Documents/spgd_three/RNG_DATA.txt");
fid = fopen("/home/taylor/Code/spgd/fpga_projects/new_spgd/tmp/new_spgd/new_spgd.sim/sim_1/behav/xsim/samp_generation.txt");
for i = 1:n_samps
    raw_data(i) = fscanf(fid, "%x\n", 1);
end

%raw_data = readmatrix("Documents/spgd_three/RNG_DATA.txt");

for i=1:n_samps
    if raw_data(i) >= pow2(out_width-1)
        data(i) = raw_data(i) - pow2(bit_width);
    else
        data(i) = raw_data(i);
    end
end
figure;
h = histogram(data,'Normalization', 'probability');
xlabel('Random Signed Integer Distribution for Width = 14');
ylabel('Number of Occurences');
fclose(fid);