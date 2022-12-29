s = tf('s');

K = 15.28494351;
d1 = 0.40414687;
d0 = 0;

H = 651.8986469;
I = 651.8986469;
Kp = 0.091914614;
KD = 0.004575951663;

P = K/(s^2+d1*s+d0);
C = Kp+KD*s;

Tcl = I*C*P/(1+H*C*P);

%% 
% Q2 
minreal_Tcl = minreal(Tcl);
bandwidth(Tcl)