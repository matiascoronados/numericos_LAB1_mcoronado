function [respuesta,error ] = gaussSeidel( matriz,b,tolerancia )
%https://www.maa.org/press/periodicals/loci/joma/iterative-methods-for-solving-iaxi-ibi-gauss-seidel-method
[filas,~] = size(matriz);

D = zeros(filas);
L = zeros(filas);
U = zeros(filas);

for i=1:filas
    D(i,i) = matriz(i,i);
end

for i=1:filas
    for j=i+1:filas
        L(i,j) = matriz(i,j);
    end
    for j=1:i-1
        U(i,j) = matriz(i,j);
    end
    D(i,i) = matriz(i,i);
end

x_0 = zeros(filas,1);
respuestasAux = [];
erroresAux = [];
e = 1;

while e > tolerancia
    auxA = L+D;
    auxB = inv(auxA);
    auxC = -U*x_0 + b;
    x_1 = auxB*auxC;
    e = norm(x_1 - x_0, inf)/norm(x_1, inf);
    respuestasAux = [respuestasAux,x_1];
    erroresAux = [erroresAux,e];
    x_0 = x_1;
end
respuesta = respuestasAux;
error = erroresAux;
end

