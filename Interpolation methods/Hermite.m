function[p] = Hermite(x,y,z,t)
n=length(x);
p=0;
for k=1:n
    v=Lagrange(x,t);
    w=DLagrange(x,x(k));
    p=p+v(k)^2*(1-2*w(k)*(t-x(k)))*y(k)+ v(k)^2*(t-x(k))*z(k);
end
end
