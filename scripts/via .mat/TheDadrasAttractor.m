clear
close
clc

load('TheDadrasAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([41.3 26.6]);
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Dadras Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Dadras_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Dadras_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Dadras_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Dadras_Attractor.svg", "-dsvg")
% save("workspace/TheDadrasAttractor.mat")