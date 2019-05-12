function graficarSEIterativo(GSD,GJB)
%CREATEFIGURE(Y1)
% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'all');

surf(GSD,'FaceColor',[0 1 0],'FaceAlpha',0.5);
surf(GJB,'FaceColor',[1 0 0],'FaceAlpha',0.5);

title('Graficos de metodos SE tipo Iterativos');
zlabel('Aproximaciones')
xlabel('Iteraciones')
ylabel('Variables');
legend('Gauss-Seidel','Gauss-Jacobi');
view(45,20)
end