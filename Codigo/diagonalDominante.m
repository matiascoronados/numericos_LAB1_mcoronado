function [ respuesta ] = diagonalDominante( matriz )
[n,~] = size(matriz);
verificador = 0;

for i = 1:n
    elemento = matriz(i,i);
    suma = 0;
    for j = 1:n
        if j ~= i
            elementoAux = matriz(i,j);
            suma = suma + elementoAux;
        end
    end
    if elemento <= suma
        verificador = 1;
        break
    end
end

if verificador == 0
    respuesta = 1;
else
    respuesta = 0;
end


