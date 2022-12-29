clc
clear 
close all


s = tf('s');

K = 13.04;
d1 = 3.815;
d0 = -46.65;

H = 651.8986469;
I = 651.8986469;
Kp = 0.1599857263;
KD = 6.905266276e-3;
KI = 1.050494512;

P = K/(s^2+d1*s+d0);

sys1 = H*P;

sys1 = (s+(pi/20))/((0.2*s+1)*s*(s+(pi/400)));
sys1 = (s-10)/((s+15)*(s^2+10*s+100));

% n2 = s;
% d2 = s^2 + 3.1815*s + 4571.7;
% 
% sys2 = n20 / d2;+0.05
% *
% n3 = s;
% d3 = s^2 + 3.815*s + 6753.956684;
% 
% sys3 = n3 / d3;
% 
% rlocus(sys1, 'b', sys2, 'k', sys3, 'r')
rlocus(sys1);
hold on

yline(pi/2)
k = 50;
M = k.*[-pi/2; pi/2];

plotv(M, '-')
% M = k.*[-23; -24.11983801];
% 
% plotv(M, '-')
% 
plot(-23, 7.559734419, '.', 'MarkerSize', 8, 'Color', 'blue')
plot(-23, -7.559734419, '.', 'MarkerSize', 8, 'Color', 'blue')
% plot(-23, 63.6, '.', 'MarkerSize', 15, 'Color', 'red')
xlim([-20 7])
% ylim([-30 30])