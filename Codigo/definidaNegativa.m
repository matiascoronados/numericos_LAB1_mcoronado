function [ respuesta ] = definidaNegativa( matriz )
[n,~] = size(matriz);
verificador = 0;

for i = 2:n
    subMatriz = matriz(1:i,1:i);
    indice = (-1)^i;
    valor = determinante(subMatriz); 
    if(indice > 0)
        if(valor < 0)
            verificador = 1;
            break            
        end
    else
        if(valor > 0)
            verificador = 1;
            break
        end
    end
   
end

if verificador == 0
    respuesta = 1;
else
    respuesta = 0;
end

end

