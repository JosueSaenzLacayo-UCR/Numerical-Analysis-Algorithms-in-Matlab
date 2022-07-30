function [L,U]= factorizationDoolittle(A)
[m,n] = size(A);
L= eye(n);
U= zeros(n,n);

if m ~= n
        error('La matriz no es cuadrada')
end
U(1,:) = A(1,:);
L(:,1) = A(:,1)/U(1,1);
for i = 2:n
    for j = i : n
        U(i,j) = A(i,j)- L(i,1:i-1)*U(1:i-1,j);
    end
    for k = i+1:n
        L(k,i) = ( A(k,i) - L(k,1:i-1)*U(1:i-1,i) )/U(i,i);
    end
end
end
