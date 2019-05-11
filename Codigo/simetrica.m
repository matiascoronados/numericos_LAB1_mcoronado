function [ respuesta ] = simetrica( matriz )
verificador = 0;
[n,~] = size(matriz);

for i = 1:n
    for j = 1:n
        elementoA = matriz(i,j);
        elementoB = matriz(j,i);
        if(elementoA ~= elementoB)
            verificador = 1;
            break;
        end
    end
end

if verificador == 0
    respuesta = 1;
else
    respuesta = 0;
end

