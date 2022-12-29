clear
clc
close all
s = tf('s');

K = 100;

n = s + 1;
d = s^3 + 14*s^2 + 49*s + 36;

Tcl = K*n/d;

pole(Tcl)
zero(Tcl)

n = 8.826521094e-4*(s-0.9970044955);
d = (s-0.9970044955)*(s-0.9880717129)*(s-0.9733612415);
Tcl = n/d;