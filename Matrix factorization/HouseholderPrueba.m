clc, clear all
format long

A = [-1 -1  1
      1  3  3
     -1 -1  5
      1  3  7];

% Calcular la factorización QR
[Q, R] = Householder(A)
[Q,R] = qr(A)

% Para resolver un sistema
b = [0; 16; 12; 28];
x = R \ (Q' * b)
