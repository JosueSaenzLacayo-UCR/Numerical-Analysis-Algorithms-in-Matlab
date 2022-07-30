function [L,U]= factorizationCholesky(A)
[m,n] = size(A);
L= eye(n);
if m ~= n
        error('The matrix is ​​not square')
end

if ~issymmetric(A)
        error('not symmetrical')
end

L(1,1) = sqrt(A(1,1));

for i = 2 : n
    L(i,1)=A(i,1)/L(1,1);
end

for k = 2:n
    L(k,k) = sqrt(A(k,k)-L(k,1:k-1)*L(k,1:k-1)');
    
    L(k+1:n,k) = (A(k+1:n,k)-L(k+1:n,1:k-1)* L(k,1:k-1)')/L(k,k);
end

U=L';
end
