function [f] = smartphone(x) 
%   Detailed explanation goes here
S=(20000 + 5*sqrt(x(1)) - 60*x(2))*(x(2)-100)-100000-x(1);
f=-S; 
end


