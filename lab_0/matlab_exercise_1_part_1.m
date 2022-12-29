s = tf('s');

K = 0.002;
wn = 30;
z = 0.1;
Kp = 10;
KD = 0.8;

H = 50;
I = 50;
P = K*wn^2/(s^2+2*z*wn*s+wn^2);
C = Kp+KD*s;

Tcl = I*C*P/(1+H*C*P);

%%
% Q1 Plant
pole(P)
zero(P)

%%
% Q1 Closed Loop System
pole(Tcl)
zero(Tcl)

%% 
% Q2 
bandwidth(Tcl)

%%
% Q3
Tloop = C*P*H;
margin(Tloop)

%%
%Q4 Plant
s = tf('s');

Kp = 1;
KD = 0.03;
K = 0.004;
wn = 10;
z = 0.9;

H = 50;
I = 50;
P = K*wn^2/(s^2+2*z*wn*s+wn^2);
C = Kp+KD*s;

Tcl = I*C*P/(1+H*C*P);

pole(P)
zero(P)

%%
%Q4 Closed Loop
pole(Tcl)
zero(Tcl)

%%
%Q5
bandwidth(Tcl)

%%
%Q6
Tloop = C*P*H;
margin(Tloop)

%%
%Q7
s = tf('s');

K = 0.002;
wn = 30;
z = 0.1;
Kp = 10;
KD = 0.8;

H = 50;
I = 50;
P = K*wn^2/(s^2+2*z*wn*s+wn^2);
C = Kp+KD*s;

Tcl = I*C*P/(1+H*C*P);

bode(Tcl);
hold

s = tf('s');

Kp = 1;
KD = 0.03;
K = 0.004;
wn = 10;
z = 0.9;

H = 50;
I = 50;
P = K*wn^2/(s^2+2*z*wn*s+wn^2);
C = Kp+KD*s;

Tcl = I*C*P/(1+H*C*P);
bode(Tcl)



