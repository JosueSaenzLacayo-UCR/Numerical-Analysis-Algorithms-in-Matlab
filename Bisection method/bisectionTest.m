clc, clear all
format long

a = 0.5;
b = 1.5;
tol = 1e-6; %10^(-6)
itrMax = 1000;
[x, k] = bisection(@f, a, b, tol, itrMax)
