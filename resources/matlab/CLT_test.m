clear;
close all;
clc;

t = -50:1:50;

a = zeros(length(t),1);
a_t_on = -4;
a_t_off = 3;

for i = 1:length(t)
    if t(i) >= a_t_on && t(i)<= a_t_off
        a(i) = 1;
    else
        a(i) = 0;
    end
end

b = zeros(length(t),1);
b_t_on = -4;
b_t_off = 3;

for i = 1:length(t)
    if t(i) >= b_t_on && t(i)<= b_t_off
        b(i) = 1;
    else
        b(i) = 0;
    end
end

c = conv(a,b,"full");

plot(1:length(c),c);