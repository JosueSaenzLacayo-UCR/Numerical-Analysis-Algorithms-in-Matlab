function [coeficientes] = tracerCubicNatural(x,y)
    % Verify that vectors are always columns
    if size(x, 1) == 1 %El vector es fila
        x = x';
    end
    if size(y, 1) == 1 %El vector es fila
        y = y';
    end
    %-----------------------------------------------
    nPts = length(x); %Cantidad de puntos
    % Calcular los valores de h
    h = zeros(nPts-1, 1);
    for i = 1 : nPts-1
        h(i) = x(i+1) - x(i);
    end
    % Calcular el vector u
    u = zeros(nPts-2, 1);
    for i = 1 : nPts-2
        u(i) = 6*( (y(i+2)-y(i+1))/h(i+1) - (y(i+1)-y(i))/h(i) );
    end
    % Calcular la matriz del trazador natural
    A = zeros(nPts-2, nPts-2);
    for i = 1 : nPts-2
        A(i,i) = 2*( h(i) + h(i+1) );
    end
    A = A + diag(h(2:nPts-2),-1) + diag(h(2:nPts-2),1);
    % Calcular los momentos
    M = A \ u;
    M = [0; M; 0]; % Agregar los momentos de los extremos
    % Calcular los coeficientes del trazador
    a = zeros(nPts-1, 1);
    b = zeros(nPts-1, 1);
    c = zeros(nPts-1, 1);
    for i = 1:nPts-1
        a(i) = ( M(i+1)-M(i) ) / ( 6*h(i) );
        b(i) = M(i) / 2;
        c(i) = (y(i+1)-y(i))/h(i) - (h(i)/6)*( M(i+1) + 2*M(i) );
    end
    % Agrupar los coeficientes en una matriz
    coeficientes = [a, b, c, y(1:end-1)];
end
