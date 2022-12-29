clear
clc
close all
load('lab2_data_N_5.mat')
% Plot captured data
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

save('lab2_data_N_5.mat')



