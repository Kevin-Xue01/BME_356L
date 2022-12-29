clc
clear 
close all


s = tf('s');

n1 = 1;
d1 = s^3 + 56.215*s^2 + 1583.35*s;

sys = n1 / d1;

% n2 = s;
% d2 = s^2 + 3.815*s + 4571.7;
% 
% sys2 = n2 / d2;
% 
% n3 = s;
% d3 = s^2 + 3.815*s + 6753.956684;
% 
% sys3 = n3 / d3;
% 
% rlocus(sys1, 'b', sys2, 'k', sys3, 'r')
rlocus(sys1);
hold on

% xline(-23)
% k = 50;
% M = k.*[-23; 24.11983801];
% 
% plotv(M, '-')
% M = k.*[-23; -24.11983801];
% 
% plotv(M, '-')
% 
plot(-23, 24.11983801, '.', 'MarkerSize', 8, 'Color', 'blue')
plot(-23, -24.11983801, '.', 'MarkerSize', 8, 'Color', 'blue')
% plot(-23, 63.6, '.', 'MarkerSize', 15, 'Color', 'red')
% xlim([-30 7])
% ylim([-30 30])