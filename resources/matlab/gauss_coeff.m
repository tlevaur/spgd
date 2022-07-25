clc;
close all;
clear;

a = zeros(1000,1);

for i = 1:1000
    a(i) = rand(1);
end

a = sort(a);
plot(1:1000,a);