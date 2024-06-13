% Vaidyanathan, S. (2013). Analysis and Adaptive Synchronization of Two Novel Chaotic Systems with Hyperboli c Sinusoidal and Cosinusoidal Nonlinearity and Unknown Parameters. Journal of Engineering Science and Technology Review, 6(4), 53–65. https://doi.org/10.25103/jestr.064.07
clear
close
clc

load("TheVaidyanathanHyperbolicSinusoidalAttractor.mat")

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
title('The Vaidyanathan Hyperbolic Sinusoidal Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Vaidyanathan_Hyperbolic_Sinusoidal_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Vaidyanathan_Hyperbolic_Sinusoidal_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Vaidyanathan_Hyperbolic_Sinusoidal_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Vaidyanathan_Hyperbolic_Sinusoidal_Attractor.svg", "-dsvg")
% save("workspace/TheVaidyanathanHyperbolicSinusoidalAttractor.mat")