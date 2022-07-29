function [x, k] = secantOrder2(f, x0, x1, tol, iterMax)
    k = 0; 
    t = x1;
    s = x0;
    u = f(t);
    v = f( (t+s)/2);
    w = f(s);
    a = 2*u - 4*v + 2*w;
    b = s*(4*v-3*u-w) + t*(4*v-u-3*w);
    c = (s^2)*u+s*t*(u-4*v+w)+(t^2)*w;
    err = tol + 1;
    discriminant = (b^2)-4*a*c;
    
    while k <= iterMax && err >= tol
        den = (s-t)^2; 
        if abs(den) <= 1e-10
            error('Div by zero!');
        end
        
        if discriminant > 0 && b >= 0
            x = (-b - sqrt(b^2-4*a*c))/ (2*a);
        end 
        if discriminant > 0 && b < 0
            x = (-b + sqrt(b^2-4*a*c))/ (2*a);
        end
        if discriminant == 0
            x = -b/(2*a);
        end 
        if discriminant < 0
            error('Indefinido'); 
        end
            
        err = abs( x - x1 ) / abs( x );
        k = k + 1;
        
        x0 = x1; 
        x1 = x; 
    end
    
end
