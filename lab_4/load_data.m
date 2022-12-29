close all
clc
clear
load('lab4_data_trial_2.mat')


figure;
plot(T,R)
grid on
title('Reference Input vs. Time');
ylabel('Reference Input');
xlabel('Time (seconds)');


figure;
plot(T,Y)
grid on
title('Output vs. Time');
ylabel('Angular Position (radians)');
xlabel('Time (seconds)');

disp('Plotting complete.')