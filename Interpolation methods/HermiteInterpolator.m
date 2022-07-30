% Calculation of the Hermite interpolating polynomial
% input: x the coordinate vector of x
%         y the coordinate vector of y
%         z the coordinate vector for the first derivative
function [c] = HermiteInterpolator(x, y, z)
    nPts = length(x); % number of points n+1
    c = 0;
    for k = 1 : nPts
        % Calculate Hermite polynomials
        [Hk, Kk] = HkKk(k,x);
        % Accumulate to interpolating polynomial
        c = c + Hk * y(k) + Kk * z(k);
    end
end
