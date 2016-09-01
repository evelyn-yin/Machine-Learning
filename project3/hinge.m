function [loss,gradient,preds]=hinge(w,xTr,yTr,lambda)
% function w=ridge(xTr,yTr,lambda)
%
% INPUT:
% xTr dxn matrix (each column is an input vector)
% yTr 1xn matrix (each entry is a label)
% lambda regression constant
% w weight vector (default w=0)
%
% OUTPUTS:
%
% loss = the total loss obtained with w on xTr and yTr
% gradient = the gradient at w
%

[d,n]=size(xTr);

large = max(1 - yTr.*(w'*xTr),0);
loss = sum((large.*large) , 2)+ lambda*w'*w;


useyTr = repmat(yTr,d,1);
lossgradient = -useyTr.*xTr;
use = find(yTr.*(w'*xTr)>1);
lossgradient(:,use)=0;

usemax = repmat(2*large,d,1);
gradient = sum(lossgradient.*usemax,2)+ 2*lambda*w;