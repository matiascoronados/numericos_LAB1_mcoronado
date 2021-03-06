%------------------------ ACTIVIDAD 1 ------------------------%
%{
%Declaracion de variables
syms f(x,y,z)
syms g(x,y,z)
syms h(x,y,z)
%Declaracion de funciones
f(x,y,z) = x^2 +y -37;
g(x,y,z) = x -y^2 -5;
h(x,y,z) = x +y +z -3;
x0 = zeros(3,1);
matriz = [f g h];
%Variables de entrada
tolerancia = 10^-20;
iteraciones = 100;
%Proceso de newtonRaphson
tic;
[soluciones,errores] = newtonRaphson(matriz,x0,tolerancia,iteraciones);
tNewtonRapson = toc;

%Proceso de graficos
graficarNewtonRapson(soluciones);

%Proceso guardado de datos
cd 'data'
save soluciones.dat soluciones -ASCII -TABS;
save errores.dat errores -ASCII -TABS;
save tNewtonRapson.dat tNewtonRapson -ASCII -TABS;

cd '../'
%}

%------------------------ ACTIVIDAD 2 ------------------------%
tolerancia = 10^-20;
%----------------------- CASO 289x289 -----------------------%
%{
A_0 = load('A289.dat');
b_0 = load('b289.dat');

%Metodos iterativos

tic;
[resGSx289,errGSx289] = gaussSeidel(A_0,b_0,tolerancia);
tGSx289 = toc;
tic;
[resGJx289,errGJx289] = gaussJacobi(A_0,b_0,tolerancia);
tGJx289 = toc;

%Metodos directos
tic;
[resDLx289] = doolittle(A_0,b_0);
tDLx289 = toc;
tic;
[resCHx289] = cholesky(A_0,b_0);
tCHx289 = toc;
tic;
[resQRx289] = QR(A_0,b_0);
tQRx289 = toc;
tic;
[resGVx289] = givens(A_0,b_0);
tGVx289 = toc;
tic;
[resHHx289] = householder(A_0,b_0);
tHHx289 = toc;

%Proceso de graficos
graficarSEDirecto(resDLx289, resCHx289, resQRx289, resGVx289, resHHx289);
graficarSEIterativo(resGSx289,resGJx289);
graficarSEIterativoErr(errGSx289,errGJx289);

%Proceso guardado de datos

cd 'data'
save resGSx289.dat resGSx289 -ASCII -TABS;
save errGSx289.dat errGSx289 -ASCII -TABS;
save tGSx289.dat tGSx289 -ASCII -TABS;

save resGJx289.dat resGJx289 -ASCII -TABS;
save errGJx289.dat errGJx289 -ASCII -TABS;
save tGJx289.dat tGJx289 -ASCII -TABS;

save resDLx289.dat resDLx289 -ASCII -TABS;
save tDLx289.dat tDLx289 -ASCII -TABS;

save resCHx289.dat resCHx289 -ASCII -TABS;
save tCHx289.dat tCHx289 -ASCII -TABS;

save resQRx289.dat resQRx289 -ASCII -TABS;
save tQRx289.dat tQRx289 -ASCII -TABS;

save resGVx289.dat resGVx289 -ASCII -TABS;
save tGVx289.dat tGVx289 -ASCII -TABS;

save resHHx289.dat resHHx289 -ASCII -TABS;
save tHHx289.dat tHHx289 -ASCII -TABS;

cd '../'

%}
%---------------------- CASO 1089x1089 ----------------------%

A_1 = load('A1089.dat');
b_1 = load('b1089.dat');

%Metodos iterativos

tic;
[resGSx1089,errGSx1089] = gaussSeidel(A_1,b_1,tolerancia);
tGSx1089 = toc;
tic;
[resGJx1089,errGJx1089] = gaussJacobi(A_1,b_1,tolerancia);
tGJx1089 = toc;

%Metodos directos
tic;
[resDLx1089] = doolittle(A_1,b_1);
tDLx1089 = toc;
tic;
[resCHx1089] = cholesky(A_1,b_1);
tCHx1089 = toc;
tic;
[resQRx1089] = QR(A_1,b_1);
tQRx1089 = toc;
tic;
[resGVx1089] = givens(A_1,b_1);
tGVx1089 = toc;
tic;
[resHHx1089] = householder(A_1,b_1);
tHHx1089 = toc;

%Proceso de graficos
graficarSEDirecto(resDLx1089, resCHx1089, resQRx1089, resGVx1089, resHHx1089);
graficarSEIterativo(resGSx1089,resGJx1089);
graficarSEIterativoErr(errGSx1089,errGJx1089);

%Proceso guardado de datos

cd 'data'
save resGSx1089.dat resGSx1089 -ASCII -TABS;
save errGSx1089.dat errGSx1089 -ASCII -TABS;
save tGSx1089.dat tGSx1089 -ASCII -TABS;

save resGJx1089.dat resGJx1089 -ASCII -TABS;
save errGJx1089.dat errGJx1089 -ASCII -TABS;
save tGJx1089.dat tGJx1089 -ASCII -TABS;

save resDLx1089.dat resDLx1089 -ASCII -TABS;
save tDLx1089.dat tDLx1089 -ASCII -TABS;

save resCHx1089.dat resCHx1089 -ASCII -TABS;
save tCHx1089.dat tCHx1089 -ASCII -TABS;

save resQRx1089.dat resQRx1089 -ASCII -TABS;
save tQRx1089.dat tQRx1089 -ASCII -TABS;

save resGVx1089.dat resGVx1089 -ASCII -TABS;
save tGVx1089.dat tGVx1089 -ASCII -TABS;

save resHHx1089.dat resHHx1089 -ASCII -TABS;
save tHHx1089.dat tHHx1089 -ASCII -TABS;

cd '../'



%---------------------- CASO 4225x4225 ----------------------%
%A_2 = load('A289.dat');
%b_2 = load('b289.dat');





