clc, clear all
format long
%y(x) = 1/(1+25*(x^2));
n = 30;
xx = linspace(-1+0.01,1-0.01);
p = zeros(100,1);
for i=1:100
    p(i) = interpolChebyshev(@f,n,xx(i));
end
p
for i=1:100
    y(i)=f(xx(i));
end
subplot(2,1,1)
plot (xx,p,'ro',xx,y,'-b')
subplot(2,2,3)
r = polyfit(xx,y,30);
s = polyval(r,xx);
plot (xx,s,'bo',xx,y,'-m')

v=zeros(100,1);
y2 = zeros(100,1);
z = linspace(-1+0.01,1-0.01);
for i=1:100
    y2(i)=f(z(i));
end
for n=10:100
    for i=1:100
        q = interpolChebyshev(@f,n,z(i));
%         a= f(z(i))-q(i);
%         b= f(z(i));
%         error = norm(a,'inf')/norm(b,'inf');
    end
    v(n)=q;
end

for i=1:100
    a(i)=y2(i)-v(i+9);
    error(i)= norm(a(i),'inf')/norm(y2(i),'inf')
end
% subplot(2,2,4)
% k = linspace(10,100);
% plot (k,error,'go')


