clear
close all
clc
s = tf('s');

t_loop = s/(s+10);


margin(t_loop)