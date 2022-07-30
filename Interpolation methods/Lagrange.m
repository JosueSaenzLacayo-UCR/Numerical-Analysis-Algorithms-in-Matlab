function[v] = Lagrange(x,t)
n=length(x);
w=1:n %creates a vector of n entries, which we want
for k=1:n
    w(k)=polyval(Lk(k,x),t); %assign each input the value we want
end
v=w;
end
