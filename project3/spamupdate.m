function w=spamupdate(w,email,truth);
%function w=spamupdate(w,email,truth);
%
% Input:
% w 	weight vector
% email instance vector
% truth label
%
% Output:
%
% updated weight vector
% 

% k=2;
% tempw=w;
% func=@(tempw) ridge(tempw,email,truth,0.1);
% [loss(2),gradient] = feval(func,tempw);
% stepsize=0.1;
% tempw=tempw-1*stepsize*gradient;
%     while (true)
%          k=k+1;
%         [loss(k),gradient] = feval(func,tempw);
%         if loss(k)<loss(k-1)
%             temp=tempw;
%             tempw=tempw-0.1*stepsize*gradient;
%         else
%             temp=tempw;
%             break;
%         end
% 
%     end
%    w=temp;
% end

 w=w+email*truth;