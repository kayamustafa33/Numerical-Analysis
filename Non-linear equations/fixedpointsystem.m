function fixedpointsystem(x0,y0)

tol=1e-3;
maxit=10;

    disp('  k          x               y                    err1                    err2            ');
    disp('|---|-----------------|-----------------|-----------------------|-----------------------| ');

    
    [al, bet, gam, del]=valuesx(x0,y0);
    
xold=x0;
yold=y0;

[f1, f2]=g2(x0,y0);

iter=1;  
err1=0;
err2=0;
  
while (iter<=maxit),
    
    ds_i=sprintf('%4d %15.5g %15.5g %22.5g %22.5g', iter, xold, yold, err1, err2);
    disp(ds_i);
    
  
    
    xnew=xold+al*f1+bet*f2;
    ynew=yold+gam*f1+del*f2;
    
    [f1, f2]=g2(xnew,ynew);
    
    err1=max(abs([f1, f2]));
    
    err2=max(abs([xnew-xold, ynew-yold]));
    
    xold=xnew;
    yold=ynew;
    
    
    if err1<=tol
        disp(' ');
        disp('Fixed point iteration converged');
        return;
    end
    
    iter=iter+1;
    
end



    

