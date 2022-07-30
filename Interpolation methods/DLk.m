%this is the method equivalent to Lk, what it does is use the given formula
%calculate the derivative of Lk
function [c] = DLk(k, x)
nPts = length(x);
c = 0;
for i = [1:(k-1), (k+1):nPts]
    p = 1;
    for j = [1:(k-1), (k+1):nPts]
        den = x(k) - x(j);
        if j~= i
            p=MultiplicationPolynomials(p,[1/den,-x(j)/den]);
        else
            p=MultiplicationPolynomials(p,[1/den]);
        end
    end
    c=c+p;
end
end
