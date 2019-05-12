function graficarNewtonRapson(resultado)

figureAux = figure;
axes1 = axes('Parent',figureAux);
box(axes1,'on');
hold(axes1,'all');
valX1 = resultado(1,:);
valX2 = resultado(2,:);
valX3 = resultado(3,:);
plot(valX1,'-dr','MarkerSize',5,'MarkerFaceColor','r'); hold on;
plot(valX2,'-dg','MarkerSize',5,'MarkerFaceColor','g'); hold on;
plot(valX3,'-db','MarkerSize',5,'MarkerFaceColor','b'); hold on;
title('Grafico Newton Rapson Multivariable')
ylabel('Soluciones')
xlabel('Iteraciones')
legend('x1','x2', 'x3')
end