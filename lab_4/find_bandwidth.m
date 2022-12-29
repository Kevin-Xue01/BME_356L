clear
clc
close all
s = tf('s');

K = 13.04;
d1 = 3.815;
d0 = -46.65;

H = 651.8986469;
I = 651.8986469;
Kp = 0.00633;
KD = 6.905266276e-3;
KI = 1.050494512;

P = K/(s^2+d1*s+d0);
C = Kp;

Tcl = I*C*P/(1+H*C*P);

%% 
% Q2 
minreal_Tcl = minreal(Tcl);
bandwidth(Tcl)