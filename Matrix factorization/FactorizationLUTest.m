clc, clear all
format rat

% load('matrizB'), A = B;
% b = ones(size(A,1),1);
A = [3,   7,  1,   6
    -6, -15, -2, -11
     0,   3,  2,  -6
    -3, -11, -1,   3];
% b = [27; -52; -6; -9];
% B = [4, -3,  6, -2
%      2, -1,  3, -1
%     -2,  2, -2,  3
%      1, -1,  1, -1];
[L,U] = FactorizationLU(A)
% Solve system with factorization LU
% tic
%   y = L \ b;
%   x = U \ y;
% toc
% tic
%   x = A \ b;
% toc
