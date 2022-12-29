s = tf('s');

H = 651.8986469;
I = 651.8986469;

K = 15.28494351;
d1 = 0.40414687;
P = K/(s^2+d1*s);
C = 0.01;

Tcl = I*C*P/(1+H*C*P);

minreal_Tcl = minreal(Tcl);

bandwidth(minreal_Tcl)

