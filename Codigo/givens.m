function [respuesta] =givens(matriz,b)
[ancho ,largo] = size(matriz);
Q = zeros(ancho);
for i=1:ancho
    Q(i,i) = 1;
end
R = matriz;
for i=1:largo
    for j=i+1:ancho
        if (R(j,i) ~= 0)
            raiz = sqrt(R(j,i)^2 + R(i,i)^2);
            s = -R(j,i)/raiz;
            c = R(i,i)/raiz;
            % Matriz de rotacion
            G = zeros(ancho);
            for k=1:ancho
                G(k,k) = 1;
            end
            G(i,i) = c;
            G(j,j) = c;
            G(j,i) = -s;
            G(i,j) = s;
            Q = Q*G; % Matriz ortogonal
            R = G'*R; % Matriz triangular inferior
        end
    end
end
  respuesta = inv(R)*inv(Q)*b;
end