function [al, bet, gam, del]=valuesx(a,b)

F1=jf2(a,b);

f1x=F1(1);
f1y=F1(2);
f2x=F1(3);
f2y=F1(4);

x1=[f1x, f2x; f1y, f2y];
y1=[-1, 0]';
y2=[0, -1]';

s1=inv(x1)*y1;
s2=inv(x1)*y2;

al=s1(1);
bet=s1(2);
gam=s2(1);
del=s2(2);