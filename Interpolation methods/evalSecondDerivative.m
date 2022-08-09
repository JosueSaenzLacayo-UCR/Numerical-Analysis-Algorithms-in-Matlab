% Método de Horner para evaluar la segunda derivada
% de un polinomio
function [p] = evalSecondDerivative( c, x )
    n = length( c );
    p = (n-1) * (n-2) * c(1); 
    for k = 2 : n-2
        p = (n-k)*(n-k-1)*c(k) + p*x;
    end
end
