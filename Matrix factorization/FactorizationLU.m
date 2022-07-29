% Factorization LU
% Input:
%   A : coef matrix 
% Output:
%   L : unitary lower triangular matrix
%   U : upper triangular matrix
function [L,U] = FactorizationLU(A)
    [m,n] = size(A);
    % Square matrix??
    if m ~= n
        error('The matrix is ​​not square')
    end
    % Reserv memory
    L = eye(n);
    % Apply the reduction to an upper triangular
    for j = 1 : n-1 % Record the columns of A
        m = A(j,j);
        % Verify that it is different from zero
        if abs(m) <= 1e-10
            error('A pivot is zero')
        end
        for i = j+1 : n
            a = -A(i,j) / m;
            A(i,:) = a*A(j,:) + A(i,:); 
            L(i,j) = -a; 
        end
    end
    U = triu(A);
end
