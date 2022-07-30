% Multiplicacion entre dos polinomios:
%   anx^n + an-1x^n-1 + ... + a1x + a0, y
%   bmx^m + bm-1x^m-1 + ... + b1x + b0.
function [c] = MultiplicationPolynomials(a, b)
% Cantidad de coeficientes
n = length( a );
m = length( b );
% Coefientes del producto
c = zeros(n+m-1, 1);
for i = 1 : n
    for j = 1 : m
        c(i+j-1) = c(i+j-1) + a(i)*b(j);
    end
end
end
