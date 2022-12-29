s = tf('s');

Kt = 24.1e-3;
R_T = 3.0248;
b = 2.881643076e-6;
Ke = 5/(pi*66);
m = 0.0135;
g = 9.81;
L = 0.187;
J_inverted_pendulum = 5.76e-4;
J_motor_rotor = 4.35e-6;
J_encoder_disc = 1.7e-7;

J_T = J_inverted_pendulum + J_motor_rotor + J_encoder_disc;

Tcl = Kt/(R_T*J_T*s^2+(R_T*b + Ke*Kt)*s - R_T*m*g*L);
