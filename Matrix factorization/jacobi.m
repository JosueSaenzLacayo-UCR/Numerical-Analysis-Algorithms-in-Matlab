% Jacobi's method
% input:
%       A: coefficient matrix
%       b: right vector
%      x0: initial approximation
%     tol: tolerance to stop
% output:
%  x: the last approximation obtained
%  k: num of itr
function [x, k] = jacobi(A, b, x0, tol, iterMax)
    n = length(A); 
    k = 0; 
    tol = tol * norm(b);
    err = tol + 1;
    x = zeros(n,1); 
    while k <= iterMax && err >= tol
        for i = 1 : n
            % Calculate the sum of the formula
            sum = 0;
            for j = [1 : i-1, i+1 : n]
                sum = sum + A(i,j) * x0(j);
            end
            x(i) = ( b(i) - sum ) / A(i,i);
        end
        err = norm( b - A*x );
        k = k + 1;
        x0 = x; 
    end
end
