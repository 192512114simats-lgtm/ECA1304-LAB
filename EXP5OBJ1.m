
% Objective 1: Coupler and Power Divider Design
clc;
clear;

f0 = 10e9;
Z0 = 50;
C = 10;
Pdivision = 0.5;

fprintf('Design Frequency = %.2f GHz\n',f0/1e9);
fprintf('Port Impedance = %.0f ohms\n',Z0);
fprintf('Coupling Target = %.2f dB\n',C);
fprintf('Power Division = %.1f : %.1f\n',1,1);
fprintf('Ideal Output Level = %.2f dB\n',10*log10(Pdivision));
