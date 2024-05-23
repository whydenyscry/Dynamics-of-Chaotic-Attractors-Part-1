clear
close
clc

load('TheNoseHooverAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([135.28 20.89])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Nose---Hoover Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Nose_Hoover_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Nose_Hoover_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Nose_Hoover_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Nose_Hoover_Attractor.svg", "-dsvg")
% save("workspace/TheNoseHooverAttractor.mat")