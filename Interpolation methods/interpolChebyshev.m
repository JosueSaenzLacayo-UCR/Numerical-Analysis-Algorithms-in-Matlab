function [p] = interpolChebyshev(y,n,xx)
x = zeros(n,1);
for j=1:n+1
    x(j)=cos(((j-1)*pi)/n);
end
num = 0;
den = 0;

for i = 1 : n+1
        num = num + ( ((-1)^(i-1))*y(x(i)) )/( xx-x(i) );
end

for i = 1 : n+1
        den = den + ( ((-1)^(i-1)) )/( xx-x(i) );
end

p = num/den;
end
