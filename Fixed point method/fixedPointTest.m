clc, clear all
format long

x0 = 0.2;%1;
tol = 1e-9; %10^(-6)
itrMax = 1000;
[x, k] = fixedPoint(@phi, x0, tol, itrMax)
