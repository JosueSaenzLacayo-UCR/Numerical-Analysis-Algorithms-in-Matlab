clc
clear all
%HermiteSegDerPrueba
x=-1:4;
y=[1 -8 -9 -20 -35 -24];
z = [48 6 -12 -6 24 78];
tic
[p] = interpolHermiteSegDer(x,y,z)
toc
tic
[c] = HermiteInterpolator(x, y, z)
toc
