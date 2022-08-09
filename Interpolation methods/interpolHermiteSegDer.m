function[p] = interpolHermiteSegDer(x,y,z)
nPts=length(x);
p=0;
for k=1: nPts
    % Determinar el correspondiente polinomio de Lagrange
    Lx= Lk(k,x);

    % Evaluar la derivada xk
    dLx = evalSecondDerivative( Lx, x(k) );

    if any(abs(dLx)) <= 1e-10
        error('indefinición');
    end

    % Evaluar la segunda derivada xk
    dLx2 = evalSecondDerivative( Lx, x(k) );

    % Calcular Lk^2
    Lx2 = MultiplicationPolynomials(Lx, Lx);

    % Calcular Lk^3
    Lx3 = MultiplicationPolynomials(Lx2, Lx);

    % Determinar el polinomio Hk
    q = [-(1/2)*(2*dLx+ dLx2/dLx), 1+(1/2)*(2*dLx+ dLx2/dLx)*(x(k))];
    Hk=MultiplicationPolynomials(Lx3, q);

    % Deterimar el polinomio Kk
    r = MultiplicationPolynomials([1, -x(k)],1/(6*dLx));
    Kk = MultiplicationPolynomials(Lx3,r);

    %Sumatoria de resultado
    p = p + Hk * y(k) + Kk * z(k);
end
end
