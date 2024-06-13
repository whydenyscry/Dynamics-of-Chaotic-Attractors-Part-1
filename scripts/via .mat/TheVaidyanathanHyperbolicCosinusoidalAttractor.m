% Vaidyanathan, S. (2013). Analysis and Adaptive Synchronization of Two Novel Chaotic Systems with Hyperboli c Sinusoidal and Cosinusoidal Nonlinearity and Unknown Parameters. Journal of Engineering Science and Technology Review, 6(4), 53–65. https://doi.org/10.25103/jestr.064.07
clear
close
clc

load("TheVaidyanathanHyperbolicCosinusoidalAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-224 16])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Vaidyanathan Hyperbolic Cosinusoidal Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Vaidyanathan_Hyperbolic_Cosinusoidal_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Vaidyanathan_Hyperbolic_Cosinusoidal_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Vaidyanathan_Hyperbolic_Cosinusoidal_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Vaidyanathan_Hyperbolic_Cosinusoidal_Attractor.svg", "-dsvg")
% save("workspace/TheVaidyanathanHyperbolicCosinusoidalAttractor.mat")