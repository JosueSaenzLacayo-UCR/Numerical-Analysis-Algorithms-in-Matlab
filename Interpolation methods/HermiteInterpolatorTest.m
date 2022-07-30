clc, clear all
format rat

% Ingresar los puntos
x = [0 1];% x = [-1, 0, 1];% los x
y = [0 1];% y = [-2, 2, 6];% los f(y)
z = [1 0];% z = [18, -1, 18];% los f'(x)

[c] = HermiteInterpolator(x, y, z)

%%%%%%%%%%%% GRAFICACION %%%%%%%%%%%%
a = min(x); % Menor valor de x, extremo izquierdo del dominio
b = max(x); % Mayor valor de x, extremo derecho del dominio
vectorX = linspace(a, b, 1000); % Puntos en el dominio
vectorY = polyval(c, vectorX);   % Valores de y en esos puntos
% Graficar los ejes
hold on
plot([a,b], [0,0], '-k') % eje x
c = floor( min(vectorY) )-1;
d = round( max(vectorY) )+1;
plot([0,0], [c,d], '-k') % eje y
% Graficar el polinomio
plot(vectorX, vectorY, '-b')
%Graficar puntos
plot(x, y, 'ro')
