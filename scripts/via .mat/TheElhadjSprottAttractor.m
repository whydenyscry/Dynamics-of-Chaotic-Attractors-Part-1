clear
close
clc

load('TheElhadjSprottAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([46.9 18.5])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Elhadj---Sprott Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Elhadj_Sprott_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Elhadj_Sprott_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Elhadj_Sprott_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Elhadj_Sprott_Attractor.svg", "-dsvg")
% save("workspace/TheElhadjSprottAttractor.mat")