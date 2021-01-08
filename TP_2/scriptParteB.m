close all; clear; clc;

[xmin, fmin, exitflag, output]=fminunc('smartphone', [1,1]);

disp('Resultado da rotina: ');
disp('Valor dos maximizantes: ');            disp(xmin);
disp('Valor do máximo: ');                   disp(-fmin);
disp('Valor da EXITFLAG: ');                 disp(exitflag);
disp('Estrutura OUTPUT: ');                  disp(output);


