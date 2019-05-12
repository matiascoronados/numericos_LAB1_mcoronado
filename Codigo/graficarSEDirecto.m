function graficarSEDirecto(DL, CH, QR, GV, HH)

figureAux = figure;
axes1 = axes('Parent',figureAux);
box(axes1,'on');
hold(axes1,'all');

plot([DL],'-dr','MarkerSize',2,'MarkerFaceColor','r'); hold on;
plot([CH],'-dg','MarkerSize',2,'MarkerFaceColor','g'); hold on;
plot([QR],'-db','MarkerSize',2,'MarkerFaceColor','b'); hold on;
plot([GV],'-dg','MarkerSize',2,'MarkerFaceColor','g'); hold on;
plot([HH],'-dy','MarkerSize',2,'MarkerFaceColor','y'); hold on;

title('Graficos de metodos SE tipo Directo')
ylabel('Aproximaciones')
xlabel('Variables')
legend('Doolittle', 'Cholesky', 'QR', 'Givens', 'Householder');
end