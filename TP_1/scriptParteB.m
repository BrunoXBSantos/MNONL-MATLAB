close all; clear; clc;
ficheiro=fopen('satelitesPorAno.txt');
f = fscanf(ficheiro,' %f\n',[1 Inf]);

n=size(f);  % num de elementos de f
x=0:1:n(2)-1;

%construir o grafico original
xaux=x;
yaux1=f;
xlabel('ano depois de 1957');
ylabel('lançamento de satelites');
hold on;
plot(xaux,yaux1,'or');

[C,RESNORM,RESIDUAL,EXITFLAG,OUTPUT] = lsqcurvefit('modeloLinear',[1,1,1,1,1],x,f);

% construir o grafico da aproximacao
yaux2=modeloLinear(C,xaux);
plot(xaux,yaux2,'b');

somatorioQuadradoResiduo=RESNORM^2;

disp('Somatorio do quadrado do residuo: ');  disp(somatorioQuadradoResiduo);
format long;
disp('Valor dos parametros: ');              disp(C);
format short;
disp('Valor da EXITFLAG: ');                 disp(EXITFLAG);
disp('Estrutura OUTPUT: ');                  disp(OUTPUT);