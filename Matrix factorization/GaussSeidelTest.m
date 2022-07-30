clc, clear all
format long

A = [4, 1, -1
    -1, 3,  1
     2, 2,  5];
b = [12; -8; 14];
x0 = [1; 1; 1];
tol = 1e-6;
iterMax = 1000;

[x, k] = ForwardGaussSeidel(A, b, x0, tol, iterMax)
[x, k] = GaussSeidelBackward(A, b, x0, tol, iterMax)
[x, k] = jacobi(A, b, x0, tol, iterMax)
% clc, clear all
% format long e
% % Ingresar la matriz
% n = 1001;
% A = diag( 4*ones(n,1) );
% A = A + diag(-1*ones(n-1,1), 1) + diag(-1*ones(n-1,1), -1);
% b = A * ones(n,1);
% x0 = zeros(n, 1);
% tic
% [x,k] = GaussSeidelMedium(A, b, x0, 1e-8, 2000)
% toc
% norm(b - A*x)
