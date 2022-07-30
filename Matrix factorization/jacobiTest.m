clc, clear all
format long

A = [4, 1, -1
    -1, 3,  1
     2, 2,  5];
b = [12; -8; 14];
x0 = [1; 1; 1];
tol = 1e-6;
iterMax = 1000;

[x, k] = jacobi(A, b, x0, tol, iterMax)
