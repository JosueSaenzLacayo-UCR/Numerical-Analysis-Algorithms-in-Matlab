function [L,U]= factorizationCrout(A,b)
n= length(b);
L= zeros(n,n);
U= eye(n);
L(:,1) = A(:,1);
U(1,:) = A(1,:)/L(1,1);
for i = 2:n
    for j = i : n
        L(j,i) = A(j,i)- L(j,1:i-1)*U(1:i-1,i);
    end
    for k = i+1:n
        U(i,k) = ( A(i,k) - L(i,1:i-1)*U(1:i-1,k) )/L(i,i);
    end
end
L;
U;
Y = zeros(n,1);
Y(1)= b(1)/L(1,1);
for k=2 : n
    Y(k) = (b(k)-L(k,1:k-1)*Y(1:k-1))/L(k,k);
end
Y
X = zeros(n,1);
X(n) = Y(n)/U(n,n);
for k= n-1 : -1:1
    X(k) = ( Y(k) - U(k,k+1:n)*X(k+1:n) )/U(k,k);
end
X
end
