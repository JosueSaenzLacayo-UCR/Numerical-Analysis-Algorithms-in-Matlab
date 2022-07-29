% Fixed point method
% Input:
%     phi: continuous function looking for a fixed point
%      x0: initial approximation
%     tol: tolerance to stop
% iterMax: maximum number of iterations
% Output:
%  x: the last obtained approximation
%  k: the number of iterations performed
function [x, k] = fixedPoint(phi, x0, tol, iterMax)
    k = 0;
    err = tol + 1;
    while k <= iterMax && err >= tol
        x = phi( x0 );
        err = abs( x - x0 ) / abs( x );
        k = k + 1;
        x0 = x; 
    end
end
