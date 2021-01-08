function [m] = modeloLinear(c,x)
% modelo linear nos parametros
% C- parametros, x - amostra
%m=c(1)*x.^5 + c(2)*x.^2 + c(3)*(x+10.^5) + c(4)*log(1+x.^3) + c(5)*sin(x.^2+1);  % modelo
m=c(1)*x.^4 + c(2)*x.^2 + c(3)*x + c(4)*(x+10.^5) + c(5)*log(1+x.^3);  % modelo

%m=c(1)*x.^5 + c(3)*(x) + c(4)*x.^2 + c(5)*cos(x.^2+1);  % modelo

end

