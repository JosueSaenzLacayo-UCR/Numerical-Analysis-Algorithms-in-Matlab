clc, clear all
format long

x0 = -0.5;
tol = 1e-10;
iterMax = 1000;
[x, k] = BiNewton(@f, @df, @d2f, x0, tol, iterMax)
