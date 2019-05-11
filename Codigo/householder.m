function [respuesta] = householder(matriz,b)  
[largo,ancho] = size(matriz);
U = zeros(largo,ancho);
R = matriz;

for j = 1:min(largo,ancho)
    aux = R(j:largo,j);
    nu = norm(aux);
    if nu ~= 0
        u = aux/nu;
        u(1) = u(1) + sign(u(1)) + (u(1) == 0);
        u = u/sqrt(abs(u(1)));
    else
        u = aux;
        u(1) = sqrt(2);
    end
    U(j:largo,j) = u;
    auxA = R(j:largo,j:ancho);
    auxB = auxA - u*(u'*auxA);
    R(j:largo,j:ancho) = auxB;
    R(j+1:largo,j) = 0;
end
respuesta=inversa(R)*transpuesta(U)*b;
end

