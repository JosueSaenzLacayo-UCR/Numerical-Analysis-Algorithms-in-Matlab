function [x]=  SubstitutionForward(L,b)
[n,m] = size(L);
r = length(b);
x(1)=b(1)/L(1,1);
if istril(L)
for i = 2 : n
        x(i) = (b(i)-L(i, 1:i-1)*x(1:i-1)')/L(i,i);
end
else
    error('Lower non-triangular matrix!');
end
end
