clear;
clc;
format longe
x = linspace(1,3,200);%x= [1 2 3];%x = [1 2 3 4 5 6 7 8 9 10]; %x= [1:10]
f=@(x) log(x);
y=feval(f,x);%y = [log(1) log(2) log(3)];%y = [3 6 7 12 9 12 19 15 18 20];
%u=1:.1:4; %rep grafica
% subplot(2, 2, 1)
% p=polyfit(x,y,1);
% v=polyval(p,u);
% plot(x,y,'ro',u,v)
% title('Polinomio grad 1')
% subplot(2,2,2)
% p=polyfit(x,y,2);
% v=polyval(p,u);
% plot(x,y,'ro',u,v)
% title('Polinomio grad 2')
% subplot(2,2,3)
% p=polyfit(x,y,6);
% v=polyval(p,u);
% plot(x,y,'ro',u,v)
% title('Polinomio grad 6')
p=polyfit(x,y,199)
v=polyval(p,x);
plot(x,y,'ro',x,v)
title('Polinomio interpolación')
 j=[0:100];
h=1/50;
xi=1+j*h;
y=feval(f,xi);
r=polyval(p,xi);
s=abs(xi-r);
hold on
plot(s,'-b')
%title('Polinomito')
pause close

