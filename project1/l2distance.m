function D=l2distance(x1,x2)
% function D=l2distance(x1,x2)
%	
% Computes the Euclidean distance matrix. 
% Syntax:
% D=l2distance(x1,x2)
% Input:
% x1: dxn data matrix with n vectors (columns) of dimensionality d
% x2: dxm data matrix with m vectors (columns) of dimensionality d
%
% Output:
% Matrix D of size nxm 
% D(i,j) is the Euclidean distance of x1(:,i) and x2(:,j)
%
% call with only one input:
% l2distance(x1)=l2distance(x1,x1)
%

if (nargin==1) % case when there is only one input (x1)
	%% fill in code here
%     D=sqrt(sum(x1.^2));
%     G= x1'*x1;
%     D=sqrt(x1+x1'-2*G);
      C=l2distance(x1,x1);
      D=C-C.*eye(size(C));
%        D=l2distance(x1,x1);
else  % case when there are two inputs (x1,x2)
	%% fill in code here
    x12=x1'*x2;
    D=sqrt((x1.*x1)'*ones(size(x2))+ones(size(x1))'*(x2.*x2)-2*x12);
    

%     n=size(x1,2);
%     m=size(x2,2);
%     s1=repmat((sum(x1.*x1))',[1,m]);
%     s2=repmat((sum(x2.*x2))',[1,n]);
%     D=sqrt(s1+s2'-2*(x1'*x2));

%     S1=diag(x1'*x1);
%     S1=repmat(S1,1,size(x2',1));
%     S2=diag(x2'*x2)';
%     S2=repmat(S2,size(x1',1),1);
%     D=S1+S2-2*innerproduct(x1,x2);
%     D=D(:,:).^0/5;
end;
%




