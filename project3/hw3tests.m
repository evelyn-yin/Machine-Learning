function [r,s]=hw3tests()
% function [r,s]=hw3tests()
%
% Tests the functions from homework assignment 1
% Please make sure that the error statements are instructive. 
%
% Output: 
% r=0 number of tests that broke
% s= statement describing the failed test (s={} if all succeed)
%


% Put in any seed below
rand('seed',31415926535);
% initial outputs
r=0;
s={};

% Example
if ~'I beat Yu!'                   % if test failed ...
	r=r+1;				% set output conditions and exit
	s{length(s)+1}='WULALA WULALA WULAWULAHEY~';
end;