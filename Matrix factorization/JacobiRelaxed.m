function [x, k, err] = JacobiRelaxed(A, b, x0, w, tol, iterMax)
 n = length(A); % The order of the matrix
    k = 0; 
    tol = tol * norm(b);
    err = tol + 1;
    x = zeros(n,1);
    while k <= iterMax && err >= tol
        for i = 1 : n
            sum = 0;
            for j = [1 : i-1, i+1 : n]
                sum = sum + A(i,j) * x0(j);
            end
            x(i) = ( b(i)-(1-w)*A(i,i)*x0(i) - sum ) / (w*A(i,i));
        end
        err = norm( b - A*x );
        k = k + 1;
        x0 = x;
    end
end
