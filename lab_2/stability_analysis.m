clear
close all
clc
s = tf('s');

K = 15.28494351;
d1 = 0.40414687;
d0 = 0;

Kp = 0.091914614;
KD = 0.004575951663;

C = Kp+KD*s;

H = 651.8986469;

P = K/(s^2+d1*s+d0);

t_loop = C*P*H;

margin(t_loop)