function [coefficients] = tracerCubicSubject(x,y,z0,zn);
    % Verify that vectors are always columns
    if size(x, 1) == 1 %vector is row
        x = x';
    end
    if size(y, 1) == 1 
        y = y';
    end
    %-----------------------------------------------
    nPts = length(x); %number of points
    % calc values of h
    h = zeros(nPts-1, 1);
    for i = 1 : nPts-1
        h(i) = x(i+1) - x(i);
    end
    % Calc value of u
    u = zeros(nPts-2, 1);
    for i = 1 : nPts-2
        u(i) = 6*( (y(i+2)-y(i+1))/h(i+1) - (y(i+1)-y(i))/h(i) );
    end
    % Add v and w to vector u
    u = [6*( (y(2)-y(1))/h(1) - z0 ); % v
         u;
         6*( zn - (y(nPts)-y(nPts-1))/h(nPts-1) )]; %w
    % Calculate the matrix of the natural tracer
    A = zeros(nPts-2, nPts-2);
    for i = 1 : nPts-2
        A(i,i) = 2*( h(i) + h(i+1) );
    end
    A = A + diag(h(2:nPts-2),-1) + diag(h(2:nPts-2),1);
    % Extend the array to that of the subject tracer
    f1 = [2*h(1), h(1), zeros(1, nPts-2)];
    f2 = [zeros(1, nPts-2), h(nPts-1), 2*h(nPts-1)];
    c1 = [h(1); zeros(nPts-3, 1)];
    c2 = [zeros(nPts-3, 1); h(nPts-1)];
    A = [f1; [c1, A, c2]; f2];
    % Calculate the moments
    M = A \ u;
    % Calculate tracer coefficients
    a = zeros(nPts-1, 1);
    b = zeros(nPts-1, 1);
    c = zeros(nPts-1, 1);
    for i = 1:nPts-1
        a(i) = ( M(i+1)-M(i) ) / ( 6*h(i) );
        b(i) = M(i) / 2;
        c(i) = (y(i+1)-y(i))/h(i) - (h(i)/6)*( M(i+1) + 2*M(i) );
    end
    % Group the coefficients in a matrix
    coeficientes = [a, b, c, y(1:end-1)];
end
