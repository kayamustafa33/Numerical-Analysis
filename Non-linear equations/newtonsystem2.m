function newtonsystem2(x0,y0)

tol=1e-3;
maxit=10;

    disp('  k          x               y                     err           ');
    disp('|---|-----------------|-----------------|-----------------------|');

    
xold=x0;
yold=y0;

iter=1;  

err=0;

  
while (iter<=maxit),
    
    ds_i=sprintf('%4d %15.5g %15.5g %22.5g', iter, xold, yold, err);
    disp(ds_i);
    
  
    [dx, dy]=valuesy(xold, yold);
    
    xnew=xold+dx;
    ynew=yold+dy;
    
    
    err=max(abs([dx, dy]));
    
    xold=xnew;
    yold=ynew;
    
    
    if err<=tol
        disp(' ');
        disp('Newton iteration converged');
        return;
    end
    
    iter=iter+1;
    
end



    

