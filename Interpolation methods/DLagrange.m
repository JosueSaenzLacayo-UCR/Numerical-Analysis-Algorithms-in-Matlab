function[v] = DLagrange(x,t)
n=length(x);
w=1:n; %crea un vector, que es lo que queremos
for k=1:n
    w(k)=polyval(DLk(k,x),t);
end
v=w;
end
