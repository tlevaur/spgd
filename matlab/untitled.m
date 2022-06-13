clc;
clear;
close all;

phase_mod_amp = 0.3;
V_pi = 0.0608/pi;

phase_mod_voltage_amp = phase_mod_amp * V_pi;

a = phase_mod_voltage_amp;
b = (2^-8);
c = a - b;
d = (2^-10);
e = c - d;
f = (2^-11);
g = e - f;
h = (2^-12);
i = g - h;
j = (2^-13);
k = i - j;
l = (2^-14);
m = k - l;
n = (2^-16);
o = m - n;

w = b + d + f + h + j + l;
er = a - w;
