function [s] = taylorsen(x , n)
    suma=0;
    for k=0:n
        suma=(-1)^(k)*(x^(2*k+1)/factorial(2*k+1))+suma;
    end
    disp(sin(x));
    disp(suma);
end
