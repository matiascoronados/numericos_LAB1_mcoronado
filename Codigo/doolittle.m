%OJO Falta modificar for -> separar.
function [resultado] = doolittle(matriz,b)
    [ancho,~] = size(matriz);
    %Se crean arreglos vacios para incorporar los valores de la triangular
    %inferior L y superior U
    L = zeros(ancho);
    U = zeros(ancho);
    %Se itera en busca de los valores de L y U por medio de la formula de
    for i = 1:ancho 
        U(i,i:ancho) = matriz(i,i:ancho) - L(i,1:i-1)*U(1:i-1,i:ancho); 
        L(i,i)=1; 
        L(i+1:ancho,i)=(matriz(i+1:ancho,i)-L(i+1:ancho,1:i-1)*U(1:i-1,i))/U(i,i);
    end
    %Se resuelve para obtener valor y, e reemplazarlo para obtener el valor
    %final.
    y = L\b;
    resultado = U\y;