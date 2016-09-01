function [w]=grdescent(func,w0,stepsize,maxiter,tolerance)
% function [w]=grdescent(func,w0,stepsize,maxiter,tolerance)
%
% INPUT:
% func function to minimize
% w0 = initial weight vector 
% stepsize = initial gradient descent stepsize 
% tolerance = if norm(gradient)<tolerance, it quits
%
% OUTPUTS:
% 
% w = final weight vector
%

if nargin<5,tolerance=1e-02;end;

k=2;
w=w0;
[loss(2),gradient] = feval(func,w);
 w=w-1.01*stepsize*gradient;
    while (norm(gradient)>=tolerance)&&(k<=maxiter)
         k=k+1;
        [loss(k),gradient] = feval(func,w);
        if loss(k)<loss(k-1)
            temp=w;
            stepsize=1.01*stepsize;
            w=w-stepsize*gradient;
        else
            temp=w;
            stepsize=0.5*stepsize;
            w=w-stepsize*gradient;
        end

    end;
   w=temp;
end


