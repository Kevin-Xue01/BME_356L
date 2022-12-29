clear
clc
close all
s = tf('s');

H = 651.8986469;
I = 651.8986469;

K = 13.04;
d1 = 3.815;
d0 = -46.65;
P = K/(s^2+d1*s+d0);
C = 0.055;

Tcl = I*C*P/(1+H*C*P);

minreal_Tcl = minreal(Tcl);

bandwidth(minreal_Tcl)

