clc
clear all
format long
%A=[12 -51 4;6 167 -68;-4 24 -41] %%Ejercicio en Wikipedia
%A=[-1 -1 1;1 3 3;-1 -1 5;1 3 7] %%Visto en clases
%A=[1 3 2; 2 6 4; 1 1 1; 3 1 2] %%No LI
A = [1 1 1; 0.00001 0 0; 0 0.00001 0; 0 0 0.00001]
[Q, R]=GramSchmidt(A)
err1=norm(A-Q*R) %calculo de los errores
[m n]=size(A);
err2=norm(Q'*Q-eye(n))
