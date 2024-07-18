% Zhang, J., & Liao, X. (2017). Synchronization and chaos in coupled memristor-based FitzHugh-Nagumo circuits with memristor synapse. AEU - International Journal of Electronics and Communications, 75, 82–90. doi:10.1016/j.aeue.2017.03.003
clear
close
clc

load("TheZhangLiaoAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([136.54 17.87])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Zhang---Liao Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Zhang_Liao_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Zhang_Liao_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Zhang_Liao_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Zhang_Liao_Attractor.svg", "-dsvg")
% save("workspace/TheZhangLiaoAttractor.mat")