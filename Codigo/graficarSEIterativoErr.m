function graficarSEIterativoErr (SeiErr,JacErr)

figuraAux = figure;
axes1 = axes('Parent',figuraAux);
box(axes1,'on');
hold(axes1,'all');

plot(SeiErr,'-dg','MarkerSize',2,'MarkerFaceColor','g'); hold on;
plot(JacErr,'-dr','MarkerSize',2,'MarkerFaceColor','r'); hold on;

title('Graficos de errores de SE tipo iterativo')
xlabel('Iteraciones')
ylabel('Errores')
legend('Gauss-Seidel','Gauss-Jacobi');
end
