% Sambas, A., Vaidyanathan, S., Zhang, S., Zeng, Y., Mohamed, M. A., & Mamat, M. (2019). A New Double-Wing Chaotic System with Coexisting Attractors and Line Equilibrium: Bifurcation Analysis and Electronic Circuit Simulation. IEEE Access, 1–1. doi:10.1109/access.2019.2933456
clear
close
clc

load("TheSambasVaidyanathanZhangAttractor.mat")

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
title('The Sambas---Vaidyanathan---Zhang Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Sambas_Vaidyanathan_Zhang_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sambas_Vaidyanathan_Zhang_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sambas_Vaidyanathan_Zhang_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sambas_Vaidyanathan_Zhang_Attractor.svg", "-dsvg")
% save("workspace/TheSambasVaidyanathanZhangAttractor.mat")