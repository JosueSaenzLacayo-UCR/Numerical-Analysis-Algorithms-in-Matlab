% Secant Method
% Input:
%       f: continuous function looking for a zero
%      x0: initial approximation
%      x1: aproximación inicial
%     tol: tolerance to stop
%
% Output:
%  x: the last obtained approximation
%  k: the number of iterations performed
function [x, k] = secantMethod(f, x0, x1, tol, iterMax)
    k = 0; 
    err = tol + 1;
    vector=  zeros;
    while k <= iterMax && err >= tol
        den = f(x1) - f(x0); 
        if abs(den) <= 1e-10
            error('Div by zero!');
        end
        x = x1 - ( (x1 - x0) / den ) * f(x1);
        err = abs( x - x1 ) / abs( x );
        k = k + 1;
        vector(k,1) = x;
        x0 = x1; 
        x1 = x;  
    end
end
