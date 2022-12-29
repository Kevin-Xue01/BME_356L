clear
clc
close all
load("lab_3_data_trial_75.mat")

figure;
plot(T,Y)
grid on
title('Output vs. Time');
ylabel('Angular Position (radians)');
xlabel('Time (seconds)');

disp('Plotting complete.')

%R = R.*(12/1023);