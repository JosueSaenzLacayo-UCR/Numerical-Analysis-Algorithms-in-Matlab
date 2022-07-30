function [x]=  SubstitutionBackward(U, b)
[n,m] = size(U);
r = length(b);
x(n)=b(n)/U(n,n);
if istriu(U)
for i = 1 : n-1
        x(n-i) = (b(n-i)-U(n-i, 1:n)*x(1:n)')/U(n-i,n-i);
end
else
    error('Upper non-triangular matrix!');
end
end
