
% Objective 4: Coupler Length Optimization
clc;
clear;
close all;

f = 8:0.1:12;

% Initial design
C1 = 10 + 1*(f-10).^2;
I1 = 30 - 1*(f-10).^2;
IL1 = 0.5 + 0.1*(f-10).^2;

% Modified design: length increased by 5%
C2 = 9.5 + 1.2*(f-10).^2;
I2 = 27 - 1*(f-10).^2;
IL2 = 0.7 + 0.1*(f-10).^2;

figure;
subplot(3,1,1);
plot(f,C1,'b',f,C2,'r');
grid on;
ylabel('Coupling (dB)');
legend('Initial','Modified');
title('5% Length Change Optimization');

subplot(3,1,2);
plot(f,I1,'b',f,I2,'r');
grid on;
ylabel('Isolation (dB)');
legend('Initial','Modified');

subplot(3,1,3);
plot(f,IL1,'b',f,IL2,'r');
grid on;
xlabel('Frequency (GHz)');
ylabel('Insertion Loss (dB)');
legend('Initial','Modified');

fprintf('Initial Coupling at 10 GHz = %.2f dB\n',C1(21));
fprintf('Modified Coupling at 10 GHz = %.2f dB\n',C2(21));
fprintf('Initial Insertion Loss = %.2f dB\n',IL1(21));
fprintf('Modified Insertion Loss = %.2f dB\n',IL2(21));
