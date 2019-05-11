function [respuesta] = givens(matriz,b)
[ancho, alto] = size(matriz);
Q = zeros(ancho);
for i = 1:ancho
    Q(i,i) = 1;
end
R = matriz;
%Recorro solo triangular superior
for j=1:alto
    for i=j+1:ancho
        if (R(i,j)~= 0)
            a = R(i,j);
            b = R(j,j);
            raiz = sqrt(a^2+b^2);
            sen = -a/raiz;
            cos = b/raiz;
            G = zeros(ancho);
            for k =1:ancho
                G(k,k) = 1;
            end
            G(j,j) = cos;
            G(i,i) = cos;
            G(i,j) = -sen;
            G(j,i) = sen;
            Q = Q*G;
            R = transpuesta(G)*R;
        end;
    end;
end
respuesta = inversa(R)*transpuesta(Q)*b;
end

