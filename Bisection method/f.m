function [y] = f( x )
    n = length(x);
    y=zeros(n,1);
    for k=1:n
        if x(k)<1
            y(k)=log2( abs( (x(k))^2+2*(x(k))-3 ) );
        else
            y(k)=tan(3*(x(k))-2)/2;
        end
    end
end
