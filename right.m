function r=right(t,x)
global g;
global a;
global F;
global denom1;
global uT;
global uV;

u = -F*x;
uT = [uT t];
uV = [uV u];
r(1) = x(2);
r(2) = (g*x(1) - a*u)/denom1;
r = r';