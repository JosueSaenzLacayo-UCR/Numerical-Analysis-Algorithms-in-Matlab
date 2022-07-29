clc, clear all
format long

x0 = 0.5;
tol = 10e-6;
iterMax = 5000;
[x, k] = newton(@f, @df, x0, tol, iterMax)
