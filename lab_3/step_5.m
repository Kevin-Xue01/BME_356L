s = tf('s');

a = 13.04;
b = 3.815;
c = -46.65;

Tcl = a/(s^2+b*s+c);
pole(Tcl)