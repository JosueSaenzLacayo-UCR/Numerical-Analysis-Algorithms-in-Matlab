function [x, k] = BiNewton(f, df, d2f, x0, tol, iterMax)
    k = 0; 
    err = tol + 1;
    while k <= iterMax && err >= tol
        den = d2f(x0); 
        if abs(den) <= 1e-10
            error('Division by zero!');
        end
        x = x0 - ( df(x0) - ( (df(x0)^2) -2*f(x0)*d2f(x0) )^(1/2) ) / den;
        err = abs( x - x0 ) / abs( x );
        k = k + 1;
        x0 = x; 
    end
end
