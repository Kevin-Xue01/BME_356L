
%% Method 1
close all
clc
clear 
s = tf('s');

P = 24.1e-3/((2.09208937e-7*(s^3))+(1.52119157e-3*(s^2))+(5.898730801e-4*s));
pole(P)
simplified_P = 3.314628377e-6/((s)*(s+4));
%% Method 2
close all
clc
clear 
s = tf('s');

P = 37.8202694/((2.474348*(s^2))+s);
pole(P)