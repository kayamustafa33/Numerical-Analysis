function graph1(a,b)
x=a:0.01:b;
y=a:0.01:b;
y1=x.^3-3;
y2=-x.^2+3*x;
plot(x,y1,y,y2);
