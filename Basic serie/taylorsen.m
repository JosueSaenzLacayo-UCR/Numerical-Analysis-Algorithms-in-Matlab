function [s] = taylorsen(x , n)
    sum=0;
    for k=0:n
        sum=(-1)^(k)*(x^(2*k+1)/factorial(2*k+1))+sum;
    end
    disp(sin(x));
    disp(sum);
end
