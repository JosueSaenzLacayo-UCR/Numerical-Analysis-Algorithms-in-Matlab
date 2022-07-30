% Calculation of the Lagrange polynomial k
% Input: k indicates which point to use
%         x the vector of points
function [c] = Lk(k, x)
nPts = length(x); % num of points
c = 1;
for i = [1:(k-1), (k+1):nPts]
    den = x(k) - x(i);
    c = MultiplicationPolynomials(c, [1/den, -x(i)/den]);
end
end
