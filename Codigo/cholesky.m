function [respuesta] = cholesky(matriz,b)
%OJO: Resultado diferente al jorge -> REV.
%Matriz siempre cuadrada, agregar verificacion.

[ancho,~] = size(matriz);

L = zeros(ancho);
U = zeros(ancho);

%Se itera en busca de los valores de L y U por medio de la formula de
for i = 1:ancho 
    U(i,i:ancho) = matriz(i,i:ancho) - L(i,1:i-1)*U(1:i-1,i:ancho); 
    L(i,i)=1; 
    L(i+1:ancho,i)=(matriz(i+1:ancho,i)-L(i+1:ancho,1:i-1)*U(1:i-1,i))/U(i,i);
end

Lt = transpuesta(L);
y = L\b;
respuesta = Lt\y * 0.01;

end

