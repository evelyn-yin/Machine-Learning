function [loss,gradient]=logistic(w,xTr,yTr)
% function w=logistic(w,xTr,yTr)
%
% INPUT:
% xTr dxn matrix (each column is an input vector)
% yTr 1xn matrix (each entry is a label)
% w weight vector (default w=0)
%
% OUTPUTS:
% 
% loss = the total loss obtained with w on xTr and yTr
% gradient = the gradient at w
%

[d,n]=size(xTr);
grad=0;
loss=sum(log(1+exp(-yTr.*(w'*xTr))));

for i=1:n 
    exploss = yTr(i)*w'*xTr(:,i);
    yixi=-yTr(i)*xTr(:,i);
    grad=grad+yixi / (1 + exp(exploss));
end

gradient=grad;