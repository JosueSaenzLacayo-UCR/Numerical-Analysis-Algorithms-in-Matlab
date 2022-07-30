function [x,k] = GaussSeidelMedium(A, b, x0, tol, iterMax)
n = length(A); 
if mod(n,2) == 0 
error('The value of n must be odd!')
end
%-----------------------------------------
    iMed = (n + 1)/2; 
    k = 0; 
    err = tol + 1;
    x = x0;
    while k < iterMax && err >= tol
        i = iMed;
        sum = 0;
        for j = [1 : i-1, i+1:n]
            sum = sum + A(i,j) * x(j);
        end
    x(i) = ( b(i) - sum ) / A(i,i);
    for s = 1 : iMed-1
    % Update one row above
        i = iMed - s;
        sum = 0;
    for j = [1 : i-1, i+1:n]
        sum = sum + A(i,j) * x(j);
    end
    x(i) = ( b(i) - sum ) / A(i,i);
    % Update one row below
    i = iMed + s;
    sum = 0;
    for j = [1 : i-1, i+1:n]
        sum = sum + A(i,j) * x(j);
    end
    x(i) = ( b(i) - sum ) / A(i,i);
    end
    % Error
    err = norm(b - A*x) / norm(b);
    k = k + 1;
    end
return
