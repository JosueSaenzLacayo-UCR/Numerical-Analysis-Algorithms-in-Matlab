function [x, k] = convexBisection(f, a, b, tol, itrMax, landa)
    if f(a) * f(b) > 0
        error('No sing changes')
    end
    k = 0; 
    err = tol + 1;
    while k <= itrMax && err >= tol
        x = (1-landa)*a+landa*b; %Aprox
        if f(a) * f(x) <= 0
            b = x;
        else
            a = x;
        end
        err = abs( b - a );
        k = k + 1;
    end
end
