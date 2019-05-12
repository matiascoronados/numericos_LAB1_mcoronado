function [ respuesta ] = transpuesta( matriz )
    [ancho,largo] = size(matriz);
    respuesta = sym(zeros(largo,ancho));
    for i = 1:ancho
        respuesta(:,i) = matriz(i,:);
    end
end

