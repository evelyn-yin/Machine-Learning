function [loss,gradient]=ffnn(Ws,xTr,yTr,wst)
% function w=ffnn(Ws,xTr,yTr,wst)
%
% INPUT:
% W weights
% xTr dxn matrix (each column is an input vector)
% yTr 1xn matrix (each entry is a label)
% ws weight structure (e.g. [1 10 5] 1 output node, 10 hidden, 5 input)
%
% if yTr=[] then loss=prediction of the data xTr
%
% OUTPUTS:
% 
% loss = the total loss obtained with w on xTr and yTr, or the prediction of yTr is not passed on
% gradient = the gradient at w
%


% Definition of sigma and its derivative
sig=@(z) 1./(1+exp(-z));
sigp=@(sz) sz.*(1-sz);

% reformat the data from one vector to a cell-array of matrices
entry=cumsum(wst(1:end-1).*wst(2:end)+wst(1:end-1)); 
if isempty(Ws), Ws=randn(entry(end),1)./100;end;
W={};
e=1;
for i=1:length(entry)
    W{i}=reshape(Ws(e:entry(i)),[wst(i),wst(i+1)+1]);
    e=entry(i)+1;
end;

[d,n]=size(xTr);

% first, we add the constant weight
zs{length(W)+1}=[xTr;ones(1,n)];
% Do the forward process here:
for i=length(W):-1:2
	% INSERT CODE:
	
end;
% INSERT CODE: (last one is special, no transition function)


% If [] is passed on as yTr, return the prediction as loss and exit
if isempty(yTr)
    loss=zs{1};
    return;
end;

% otherwise compute loss 
delta=zs{1}-yTr;
% INSERT CODE HERE:
loss=0;


if nargout>1
 % compute gradient with back-prop
 gradient=zeros(size(Ws));
 e=1;
 for i=1:length(W)
	% INSERT CODE HERE:
	
 end; 
end;



