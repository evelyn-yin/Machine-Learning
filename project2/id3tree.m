function T=id3tree(xTr,yTr,maxdepth,weights)
% function T=id3tree(xTr,yTr,maxdepth,weights)
%
% The maximum tree depth is defined by "maxdepth" (maxdepth=2 means one split). 
% Each example can be weighted with "weights". 
%
% Builds an id3 tree
%
% Input:
% xTr | dxn input matrix with n column-vectors of dimensionality d
% xTe | dxm input matrix with n column-vectors of dimensionality d
% maxdepth = maximum tree depth
% weights = 1xn vector where weights(i) is the weight of example i
% 
% Output:
% T = decision tree 
%

%% fill in code here
%% nargin
    [d,n]=size(xTr);
    if nargin<4
        weights=ones(1,n)./n;
        %maxdepth=inf;
        maxdepth=5;
    end

 



