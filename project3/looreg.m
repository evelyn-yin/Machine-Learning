function err=looreg(xTr,yTr);
%	function err=looreg(xTr,yTr);
%
%   INPUT:
%   xTr = dxn matrix of n input vectors 
%	yTr = 1xn vector of n target values
%
%   OUTPUT:
%   err = root mean-squared error of linear regression with LOOCV
%

[d,n]=size(xTr);
for i=1:n
    tempx=xTr;
    tempy=yTr;
    tempx(:,i)=[];
    tempy(:,i)=[];
    wh=(tempx*tempx')^(-1)*tempx*tempy';
    preds(1,i)=linclassify(wh,xTr(:,i));

end
loocv=sum((yTr-preds).^2);
err=((1/n)*loocv)^(1/2);
	



