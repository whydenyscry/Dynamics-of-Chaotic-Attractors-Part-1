% Liu, C. (2009). A novel chaotic attractor. Chaos, Solitons & Fractals, 39(3), 1037–1045. doi:10.1016/j.chaos.2007.04.025
clear
close
clc

load('TheLiuAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Liu Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Liu_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Liu_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Liu_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Liu_Attractor.svg", "-dsvg")
% save("workspace/TheLiuAttractor.mat")