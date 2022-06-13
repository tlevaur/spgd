clc;
clear;
close all;

M = readmatrix("Documents/spgd_three/gauss.txt");
V_pi = 2.38;
Var_pert = 0.3;

M = M .* (Var_pert * V_pi / pi);

abs_min = min(M);
abs_max = max(M);
M_mean = mean(M);

M_sort = sort(M);
M_norm = M_sort ./ abs_max;

boxes = zeros(10000,1);

for i = 1 : 1000000
    

end
histogram(M_sort);