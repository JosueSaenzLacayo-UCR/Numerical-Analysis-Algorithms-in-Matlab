clc, clear all
format long

x0 = 2;
x1 = 8;
tol = 1e-6;
iterMax = 1000;
[x, k] = secantMethod(@f, x0, x1, tol, iterMax) 
