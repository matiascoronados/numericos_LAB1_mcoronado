%Modificar
function [respuesta] = determinante(matriz)
    respuesta = determinanteR(matriz,0);
end
%Si no es cuadrada; entrego respuesta negativa altiro
function [respuesta] = determinanteR(matriz, acumulador)
    [n,m] = size(matriz);
    respuesta = 0;
    if n == 2
        respuesta = matriz(1,1)*matriz(2,2) - matriz(1,2)*matriz(2,1);
    else
        for i=1:n
            signo = (-1)^(i+1);
            otraMatriz = matriz;
            otraMatriz(:,i) = [];
            otraMatriz(1,:) = [];
            respuesta = acumulador + signo*matriz(1,i)*determinanteR(otraMatriz, respuesta);
        end
    end
end