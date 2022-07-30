clc, clear all
format rat

x = [-2, -1, 1, 3];
y = [0, 1, 1, 1];
z0 = 0;
zn = -16;

CFN = tracerCubicNatural(x,y);
CFS = tracerCubicSubject(x,y,z0,zn);
