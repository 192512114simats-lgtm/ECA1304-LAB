
% Objective 2: Directional Coupler Analysis
clc;
clear;
close all;

f = 8:0.1:12;

S21dB = -0.5 - 0.1*(f-10).^2;
S31dB = -10 - 1*(f-10).^2;
S41dB = -30 + 1*(f-10).^2;
S11dB = -25 + 1*(f-10).^2;

C = -S31dB;
I = -S41dB;
IL = -S21dB;
D = I-C;

[~,k] = min(abs(f-10));

figure;
plot(f,S21dB,'b',f,S31dB,'r',f,S41dB,'k',f,S11dB,'g');
grid on;
xlabel('Frequency (GHz)');
ylabel('S-Parameters (dB)');
legend('S21','S31','S41','S11');
title('Directional Coupler S-Parameter Response');

fprintf('Coupling = %.2f dB\n',C(k));
fprintf('Isolation = %.2f dB\n',I(k));
fprintf('Insertion Loss = %.2f dB\n',IL(k));
fprintf('Directivity = %.2f dB\n',D(k));
