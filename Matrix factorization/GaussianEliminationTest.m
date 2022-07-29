clc, clear all
format rat

% Lineal syst
A = [1, -1,  1, -1
     2, -1,  3, -1
     4, -3,  6, -2
    -2,  2, -2,  3];
b = [6; 10; 21; -14]; %Sol: [2; -1; 1; -2]

% Solve Ax = b, using MATLAB
%x = A \ b % GE + backward substitution 

% Solve Ax = b, using our program
[x] = GaussianElimination(A, b)
