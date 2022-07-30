% Horner method to evaluate the derivative
% of a polynomial
function [p] = EvaluateDerivative( c, x )
    n = length( c );
    p = (n-1) * c(1); 
    for k = 2 : n-1
        p = (n-k)*c(k) + p*x;
    end
end
