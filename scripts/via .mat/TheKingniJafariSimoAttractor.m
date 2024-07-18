% Kingni, S. T., Jafari, S., Simo, H., & Woafo, P. (2014). Three-dimensional chaotic autonomous system with only one stable equilibrium: Analysis, circuit design, parameter estimation, control, synchronization and its fractional-order form. The European Physical Journal Plus, 129(5). doi:10.1140/epjp/i2014-14076-4
clear
close
clc

load("TheKingniJafariSimoAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-135.4 13.1])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Kingni---Jafari---Simo Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Kingni_Jafari_Simo_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Kingni_Jafari_Simo_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Kingni_Jafari_Simo_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Kingni_Jafari_Simo_Attractor.svg", "-dsvg")
% save("workspace/TheKingniJafariSimoAttractor.mat")