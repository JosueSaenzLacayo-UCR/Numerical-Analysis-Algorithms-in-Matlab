% Calculation of the Hermite polynomials Hk and Kk
% Input: k indicates which point to use
%         x the vector of points
function [Hk, Kk] = HkKk(k, x)
%Determine the corresponding Lagrange polynomial
Lx = Lk(k, x);
% Evaluate the derivative xk
dLx = EvaluateDerivative( Lx, x(k) );
% Calculate Lk^2
Lx2 = MultiplicationPolynomials(Lx, Lx);
% Determine the polynomial Hk
q = [-2*dLx, 1 + 2*dLx*x(k)];
Hk = MultiplicationPolynomials(Lx2, q);
% Determine the polynomial Kk
q = [1, -x(k)];
Kk = MultiplicationPolynomials(Lx2, q);
end
