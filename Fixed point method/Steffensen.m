function [x, k] = Steffensen(phi, x0, tol, iterMax) %Steffensen's method
    err = tol + 1;
    vector = zeros;
    while k <= iterMax && err >= tol
        v_1 = x0;
        v_2 = phi(v_1);
        v_3 = phi(v_2);
        x = v_1-(((v_2-v_1)^2)/(v_3-2*v_2+v_1));
        err = abs( x - x0 ) / abs( x );
        k = k + 1;
        vector(1,k)= x;
        x0 = x; 
    end
    disp(transpose(vector));
end
