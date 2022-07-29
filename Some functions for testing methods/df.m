function y = df(x)
    y = 4*x*(x^2+0.1)*(sin(2/(x^2+0.06))/(x^2+0.06)^2) +2*x^3*cos(2/(x^2+0.06))+1;%-x/exp(x);
    %y=cos(x)+2*x*exp(-x^2);
    %y = -90*pi/(x+6)^3 * cos( 90*pi/(x+6)^2 );
end