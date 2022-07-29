clc, clear all
format long

a = 1;%0.5;
b = 2;%1.5;
tol = 1e-8; %10^(-6)
itrMax = 1000;
landa = 1/10;
[x, k] = convexBisection(@f, a, b, tol, itrMax, landa)
