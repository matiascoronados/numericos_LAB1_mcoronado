function [ matrizInv ] = inversa( matriz )
auxA = adjunta(matriz);
auxB = transpuesta(auxA);
auxC = det(matriz);
matrizInv = auxB/auxC;
end

