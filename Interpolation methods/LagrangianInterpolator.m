% Calculation of the Lagrange interpolating polynomial
% Input: x the coordinate vector of x
%         y the coordinate vector of y
function [c] = LagrangianInterpolator(x, y)
    nPts = length(x); % number of points: n+1
    c = 0;
    for k = 1 : nPts
        c = c + Lk(k,x) * y(k);
    end
end
