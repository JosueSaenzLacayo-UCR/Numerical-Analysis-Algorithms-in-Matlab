% Calculation of the QR factorization through
% of househusband musings
function [Q, R] = Householder(A)
    [m,n] = size(A); 
    if m < n
        error('There are more columns than rows');
    end
    % QR factorization is calculated
    Q = eye(m);
    for j = 1 : n % Go through the columns of A
        x = A(j:m, j);
        nj = length(x); 
        u = x; 
        u(1) = u(1) + sign( x(1) ) * norm(x, 2);
        Htecho = eye(nj) - 2 / (u'*u) * (u*u'); % Householder Matrix
        H = eye(m);
        H(j:m, j:m) = Htecho;
        % Redefinir la matriz A
        A = H * A; 
        Q = Q * H; 
    end
    R = A;
end
