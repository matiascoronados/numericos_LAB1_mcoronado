function [respuesta] = QR (matriz,b)
%https://math.stackexchange.com/questions/2856776/matlab-code-include-iteration-to-qr-algorithm-gram-schmidt-the-iterations-of-a?rq=1

[n, ~]=size(matriz);
Q=zeros(n);
R=zeros(n);
R(1,1)=norm(matriz(:,1));
Q(:,1)=matriz(:,1)/R(1,1);

for j=2:n
    Q(:,j)=matriz(:,j);
    for i=1:j-1
        aux = matriz(:,j);
        Q(:,j)=Q(:,j)-transpuesta(aux)*Q(:,i)*Q(:,i);
        R(i,j)=transpuesta(aux)*Q(:,i);
    end
    R(j,j)=norm(Q(:,j));
    Q(:,j)=Q(:,j)/norm(Q(:,j));
end 
respuesta =inversa(R)*transpuesta(Q)*b;
