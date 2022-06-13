clc;
clear;
close all;

M = readmatrix("Documents/spgd_three/timing.txt");

plot(1:length(M),M./power(10,-6));
title('Timing Variation of 100k 50us Wait Commands');
xlabel('Sample Number')
ylabel('Wait Times [us]')