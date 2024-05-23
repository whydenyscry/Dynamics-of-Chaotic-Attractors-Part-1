clear
close
clc

load('TheThomasAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([137.07 33.23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Thomas Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Thomas_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Thomas_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Thomas_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Thomas_Attractor.svg", "-dsvg")
% save("workspace/TheThomasAttractor.mat")