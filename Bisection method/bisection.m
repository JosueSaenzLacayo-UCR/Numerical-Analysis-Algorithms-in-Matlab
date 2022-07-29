% Bisection method
% Input:
%       f: continuous function looking for a zero
%       a: left end of range
%       b: right end of range
%     tol: tolerance to stop
% itrMax: maximum number of iterations
% Output:
%  x: the last obtained approximation
%  k: the number of iterations performed
function [x, k] = bisection(f, a, b, tol, itrMax)
    % Check if the sign changes
    if f(a) * f(b) > 0
        error('No sign changes')
    end
    k = 0; 
    err = tol + 1;
    while k <= itrMax && err >= tol
        x = (a + b) / 2; %Aprox
        if f(a) * f(x) <= 0
            b = x;
        else
            a = x;
        end
        err = abs( b - a );
        k = k + 1;
    end
end
