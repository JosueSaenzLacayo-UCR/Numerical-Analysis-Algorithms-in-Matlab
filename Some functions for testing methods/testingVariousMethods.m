clc, clear
format long e
a=0; % left end of range
b=1; % right end of interval
tol = 1e-6; % tolerance
iterMax = 5000; 
x0 = 0.5;% for fixed point and newton
datos = zeros(5,2);
% I save the values for bisection
[x_b,k_b] = bisection(@g, a, b, tol, iterMax);
datos(1,1:2) = [x_b,k_b];
%I save the values for fixed point
[x_p, k_p] = fixedPoint(@phi, x0, tol, iterMax);
datos(2,1:2) = [x_p, k_p];
%  I save the values newton
[x_n,k_n] = newton(@g, @dg, x0, tol, iterMax);
datos(3,1:2) = [x_n,k_n];
% I save the values for secant
[x_s,k_s] = secantMethod(@g, a, b, tol, iterMax);
datos(4,1:2) = [x_s,k_s];
% I save the values ​​for false position
[x_pf, k_pf] = falsePosition(@g, a, b, tol, iterMax);
datos(5,1:2) = [x_pf,k_pf];
tabla_datos = table(["Bisección";"Punto fijo";"Newton";"Secante";"Posición falsa"], int32(datos(:,2)), datos(:,1));
tabla_datos.Properties.VariableNames = ["Metodo","Iteración","Aproximación"];
% tabla con los datos finales
tabla_datos

% save(’datosFinales.mat’, ’tabla_datos’)
