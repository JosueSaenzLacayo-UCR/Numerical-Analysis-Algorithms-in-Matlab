function [x, k] = falsePosition(f, x0, x1, tol, iterMax)
    k = 0;
    x_k = x0;
    err = tol + 1;
    vector=  zeros;
    while k <= iterMax && err >= tol
        
        den = f(x1) - f(x_k); 
        if abs(den) <= 1e-10
            
            error('Div by zero!');
        end
        
        x = x1 - ( (x1 - x_k) / den ) * f(x1);
        if f(x)*f(x_k) > 0
            x_k=x1;
        end
        err = abs( x - x1 ) / abs( x );
        k = k + 1;
        vector(k,1) = x;
        x1=x;
    end
end
