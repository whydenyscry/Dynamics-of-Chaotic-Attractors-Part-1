% Sundarapandian, V. (2013). Analysis and anti - synchronization of a novel chaotic system via active and adaptive controllers. Journal of Engineering Science and Technology Review, 6(4), 45–52. https://doi.org/10.25103/jestr.064.06
clear
close
clc

load("TheSundarapandianAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-139.31 19.23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sundarapandian Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sundarapandian_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sundarapandian_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sundarapandian_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sundarapandian_Attractor.svg", "-dsvg")
% save("workspace/TheSundarapandianAttractor.mat")