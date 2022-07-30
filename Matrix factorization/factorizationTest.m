clc, clear all
format rat

A = [3,   7,  1,   6
    -6, -15, -2, -11
     0,   3,  2,  -6
    -3, -11, -1,   3];

B = [4, -6, 10
    -6, 25, -19
    10, -19, 35];

b = [6; 10; 21; -14];
% tic
% [L,U]= factorizationCrout(A,b)
% toc
% 
% tic
% [L,U]= factorizationDoolittle(A)
% toc

tic
[L,U]= factorizationCholesky(B)
toc
