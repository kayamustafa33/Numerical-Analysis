function [dx, dy]=valuesy(a, b)


[F1, F2]=g2(a,b);

Fx=[-F1, -F2]';

L=jf2(a,b);

J=[L(1), L(2); L(3), L(4)];


Del=inv(J)*Fx;

dx=Del(1);
dy=Del(2);


   