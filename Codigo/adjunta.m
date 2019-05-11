function [respuesta] = adjunta(matriz)
aux = 1;
verificador = 0;
[filas,columnas] = size(matriz);
respuesta = matriz;
if filas == columnas
    for i=1:filas
        for j=1:columnas
            matrizAux = matriz;
            matrizAux(:,j) = [];
            matrizAux(i,:) = [];
            if verificador == 0
                aux = 1;
                verificador = 1;
            else
                aux = -1;
                verificador = 0;
            end
            respuesta(i,j)= aux*det(matrizAux);
        end
    end
end
end
