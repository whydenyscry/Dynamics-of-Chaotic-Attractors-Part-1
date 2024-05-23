clear
close
clc

load('TheHalvorsenAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([324.4 -13.7])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Halvorsen Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Halvorsen_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Halvorsen_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Halvorsen_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Halvorsen_Attractor.svg", "-dsvg")
% save("workspace/TheHalvorsenAttractor.mat")