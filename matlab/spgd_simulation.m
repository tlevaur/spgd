clc;
clear;
close all;

phase_error = 2;
V_pi = 2.38;
t = 0:0.004:2;

gain = 4;

Ein = 1;

U_A = 0.0;
U_B = 0.0;
J_p = 0.0;
J_m = 0.0;


J = zeros(length(t),1);

for i = 1:length(t)
    pert_a = (rand()-0.5)*0.3;
    pert_b = (rand()-0.5)*0.3;

    U_A_plus = U_A + pert_a;
    U_B_plus = U_B + pert_b;

    E1 = (Ein / 2) * exp(1i* U_A_plus / V_pi * pi);
    E2 = (Ein / 2) * exp(1i* U_B_plus / V_pi * pi) * exp(1i*phase_error);
    J_p = (abs(E1 + E2))^2;

    U_A_minus = U_A - pert_a;
    U_B_minus = U_B - pert_b;

    E1 = (Ein / 2) * exp(1i* U_A_minus / V_pi * pi);
    E2 = (Ein / 2) * exp(1i* U_B_minus / V_pi * pi) * exp(1i*phase_error);
    J_m = (abs(E1 + E2))^2;

    delta_J = J_p - J_m;

    U_A = U_A + gain * delta_J * pert_a;
    U_B = U_B + gain * delta_J * pert_b;  

    E1 = (Ein / 2) * exp(1i* U_A / V_pi * pi);
    E2 = (Ein / 2) * exp(1i* U_B / V_pi * pi) * exp(1i*phase_error);

    J(i) = (abs(E1 + E2))^2;
end

plot(1:length(t),J);