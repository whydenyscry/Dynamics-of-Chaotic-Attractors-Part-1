% Sun, M., Tian, L., & Fu, Y. (2007). An energy resources demand–supply system and its dynamical analysis. Chaos, Solitons & Fractals, 32(1), 168–180. doi:10.1016/j.chaos.2005.10.085 

clear
close
clc

load("TheSunTianFuAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-49 23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sun---Tian---Fu Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Sun_Tian_Fu_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sun_Tian_Fu_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sun_Tian_Fu_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sun_Tian_Fu_Attractor.svg", "-dsvg")
% save("workspace/TheSunTianFuAttractor.mat")