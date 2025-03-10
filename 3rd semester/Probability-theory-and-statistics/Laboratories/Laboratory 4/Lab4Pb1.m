clear all
clc
close all

N=10000;

y=rand(1,N);

figure(1)
hold on
hist(y,50) 
% hist -> histograma:
% sir de nr., afisare pe clase
title('RAND')

%RAND -> [0,1]
% [0,1] -> [A,B]
% y = a + (b-a)x

z=randn(1,N);

figure(2)
hold on
hist(z,20)
title('RANDN')

a=0;b=2;
w=a+(b-a)*y;

figure(3)
hold on
hist(w,20)
title(['RAND [',num2str(a),',',num2str(b),']'])
% transforms a number into a string

med=10; sig=2;
u=normrnd(med,sig,1,N);
% (n,p,1,N)
%cv rezervat pt lege: NORM
%binornd pt lege binomiala

figure(4)
hold on
hist(u,20)
title(['NORMRND  $\mu$=',num2str(med),'\quad$\sigma$=',num2str(sig)],'Interpreter','Latex')

