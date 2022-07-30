% Forward Gauss-Seidel Method
% 
function [x, k] = ForwardGaussSeidel(A, b, x0, tol, iterMax)
    n = length(A); 
    k = 0; 
    tol = tol * norm(b);
    err = tol + 1;
    x = zeros(n,1); 
    while k <= iterMax && err >= tol
        for i = 1 : n
            sum = 0;
            for j = 1 : i-1
                sum = sum + A(i,j) * x(j); 
            end
            for j = i+1 : n
                sum = sum + A(i,j) * x0(j); 
            end
            x(i) = ( b(i) - sum ) / A(i,i);
        end
        err = norm( b - A*x );
        k = k + 1;
        x0 = x; 
    end
end
