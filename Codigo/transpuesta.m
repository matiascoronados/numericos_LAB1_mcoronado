function [ respuesta ] = transpuesta( matriz )
    [ancho,~] = size(matriz);
    respuesta = zeros(ancho);
    for i = 1:ancho
        for j = 1:ancho
            respuesta(i,j) = matriz(j,i);
        end
    end
end

