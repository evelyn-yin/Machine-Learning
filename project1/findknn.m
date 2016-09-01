function [indices,dists]=findknn(xTr,xTe,k);
% function [indices,dists]=findknn(xTr,xTe,k);
%
% Finds the k nearest neighbors of xTe in xTr.
%
% Input:
% xTr = dxn input matrix with n column-vectors of dimensionality d
% xTe = dxm input matrix with n column-vectors of dimensionality d
% k = number of nearest neighbors to be found
% 
% Output:
% indices = kxm matrix of the where indices(i,j) is the i^th nn of xTe(:,j)
% dists = Euclidean distances to the respective nearest neighbors
%



%% fill in code here

D=l2distance(xTr,xTe);
if k>size(D,1)
    k=size(D,1);
end
[T,indices]=sort(D);
dists=T(1:k,:);
indices=indices(1:k,:);
	
%%
	
