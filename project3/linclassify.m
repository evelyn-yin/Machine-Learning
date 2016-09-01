function [preds]=ridge(w,xTe)
% function w=ridge(xTr,yTr,lambda)
%
% INPUT:
% w weight vector (default w=0)
% xTe dxn matrix (each column is an input vector)
%
% OUTPUTS:
% 
% preds predictions
% 

[d,n]=size(xTe);

preds=w'*xTe;


% for i=1:n
%     if(preds(i)>0)
%         preds(i)=1;
%     else
%         preds(i)=-1;
%     end
% end


