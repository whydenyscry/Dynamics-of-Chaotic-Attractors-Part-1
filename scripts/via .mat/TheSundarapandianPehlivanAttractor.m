% Sundarapandian, V., & Pehlivan, I. (2012). Analysis, control, synchronization, and circuit design of a novel chaotic system. Mathematical and Computer Modelling, 55(7-8), 1904–1915. doi:10.1016/j.mcm.2011.11.048
clear
close
clc

load("TheSundarapandianPehlivanAttractor.mat")

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
title('The Sundarapandian---Pehlivan Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sundarapandian_Pehlivan_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sundarapandian_Pehlivan_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sundarapandian_Pehlivan_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sundarapandian_Pehlivan_Attractor.svg", "-dsvg")
% save("workspace/TheSundarapandianPehlivanAttractor.mat")