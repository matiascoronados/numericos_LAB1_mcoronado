function [ respuesta ] = dispersa( matriz )
contadorA = 0;
contadorB = 0;
[n,m] = size(matriz);
for i=1:n
    for j=1:m
        if matriz(i,j) == 0
            contadorA = contadorA + 1;
        else
            contadorB = contadorB + 1;
        end
    end
end
if contadorA > contadorB
    respuesta = 1;
else
    respuesta = 0;
end
end

