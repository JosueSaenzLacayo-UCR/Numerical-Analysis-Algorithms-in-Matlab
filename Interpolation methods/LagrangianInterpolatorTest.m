clc, clear all
format rat

% Input: points
x = [-1, 0, 1, 2];
y = [-5, -1, 7, 13];

[c] = LagrangianInterpolator(x, y)

%%%%%%%%%%%% GRAPHICS %%%%%%%%%%%%
a = min(x); % Smallest value of x, extreme left of the domain
b = max(x); % Largest value of x, extreme right of the domain
vectorX = linspace(a, b, 1000); % points in the domain
vectorY = polyval(c, vectorX);   % Values of y at those points
% Plot the axes
hold on
plot([a,b], [0,0], '-k') % eje x
c = floor( min(vectorY) )-1;
d = round( max(vectorY) )+1;
plot([0,0], [c,d], '-k') % eje y
% Graph the polynomial
plot(vectorX, vectorY, '-b')
%plot points
plot(x, y, 'ro')
