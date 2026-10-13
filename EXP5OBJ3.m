
% Objective 3: Two-Way Power Divider
clc;
clear;
close all;

f = 8:0.1:12;

S11dB = -25 + 1*(f-10).^2;
S21dB = -3.01 - 0.2*(f-10).^2;
S31dB = -3.01 - 0.2*(f-10).^2;
S23dB = -30 + 1*(f-10).^2;

[~,k] = min(abs(f-10));

P2 = 10^(S21dB(k)/10);
P3 = 10^(S31dB(k)/10);
ratio = P2/P3;

figure;
plot(f,S21dB,'b',f,S31dB,'r',f,S11dB,'k');
grid on;
xlabel('Frequency (GHz)');
ylabel('S-Parameters (dB)');
legend('S21 Output 1','S31 Output 2','S11 Input Reflection');
title('Two-Way Power Divider Response');

fprintf('S11 = %.2f dB\n',S11dB(k));
fprintf('Output 1 = %.2f dB\n',S21dB(k));
fprintf('Output 2 = %.2f dB\n',S31dB(k));
fprintf('Output Power Ratio = %.2f : 1\n',ratio);
fprintf('Output Isolation S23 = %.2f dB\n',S23dB(k));
