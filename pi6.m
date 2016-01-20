function y=pi6(T0, T, x)
global g;
global a;
global F;
global denom1;

g = 9.8;
m = 2;
M = 8;
a = 1 / (m + M);
l = 0.5;
denom1 = 4*l/3 - a*m*l;
F=[-630.7446 -164.6591];

H = 0.01;
Hmin = 1.e-7;
Hmax = 0.1;
eps = 1.e-6;
P = 10;

[x,H] = odeLawson('right', 'rightJ', T0, T, x, H, Hmin, Hmax, eps, P);
y = x;
