%clc, clear all
format long

x0 = 0.2;
tol = 1e-9; %10^(-6)
iterMax = 1000;
[x, k] = Steffensen(@phi, x0, tol, iterMax)
