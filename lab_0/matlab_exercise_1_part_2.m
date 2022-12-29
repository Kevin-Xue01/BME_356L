%%
%Q2
s = tf('s');

Kp = 2;
KI = 0.5;
KD = 0.1;
H = 150;
I = 150;
P = 0.8/(s^2+2*s+3);
C = Kp+(KI/s)+KD*s;

Tcl = I*C*P/(1+H*C*P);

bandwidth(Tcl)
