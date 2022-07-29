function [x, k] = newton(f, df, x0, tol, iterMax)
    k = 0; 
    err = tol + 1;
    while k <= iterMax && err >= tol
        den = df(x0);
        if abs(den) <= 1e-10
            error('Division by zero!');
        end
        x = x0 - f(x0) / den;
        err = abs( x - x0 ) / abs( x );
        k = k + 1;
        x0 = x; 
    end
end
