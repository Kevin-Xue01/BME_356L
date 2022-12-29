%%
% Question 1
s = tf('s');

K = 0.01;
a = 3;
b = 0.5;
c = -8;
H = 100;
I = 100;
P = K/(s^3+a*s^2+b*s+c);
C = Kp;

Tcl = I*C*P/(1+H*C*P);

sys = P*H;
rlocus(sys);

%%
%Q2
s = tf('s');

K = 10;
a = 20;
b = 5;
c = -100;
H = 100;
I = 100;
P = K/(s^3+a*s^2+b*s+c);
C = Kp;

Tcl = I*C*P/(1+H*C*P);

sys = P*H;
rlocus(sys);
