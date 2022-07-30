% Jacobi's tridiagonal method
% Input:
% a: vector containing the elements of the "lower diagonal"
% b: vector containing the elements of the "central diagonal"
% c: vector containing the elements of the "upper diagonal"
% d: right vector
% x0: initial approximation
% tol: tolerance to stop
% Output:
% x: the last obtained approximation
%
function [x, k] = JacobiTriDiag(a, b, c, d, x0, tol, iterMax)
    n = length(b); 
    if n ~= length(c)+1 || n ~= length(a)+1
        error('Vector size error')
    end
    k = 0; 
    tol = tol * norm(d);
    err = tol + 1;
    x = zeros(n,1); 
    while k <= iterMax && err >= tol
    x(1)= (d(1)-c(1)*x0(2))/b(1);
    for i = 2 : n-1
        x(i) = ( d(i) - a(i-1)*x0(i-1)-c(i)*x0(i+1) ) / b(i);
    end
    x(n)= (d(n)-a(n-1)*x0(n-1))/b(n);
    dif= zeros(n,1); 
    dif(1) = b(1)*x(1)+c(1)*x(2)-d(1);
    for i = 2 : n-1
        dif(i) = a(i-1)*x(i-1)+b(i)*x(i)+ c(i)*x(i+1)-d(i);
    end
    dif(n) = a(n-1)*x(n-1)+b(n)*x(n)-d(n);
    err = norm(dif);
    k = k + 1;
    x0 = x; 
    end
end
