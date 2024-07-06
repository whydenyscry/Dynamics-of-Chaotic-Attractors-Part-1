% Neamah, A. A., & Shukur, A. A. (2023). A novel conservative chaotic system involved in hyperbolic functions and its application to design an efficient colour image encryption scheme. Symmetry, 15(8), 1511. https://doi.org/10.3390/sym15081511 
clear
close
clc

load("TheNeamahShukurAttractor.mat")

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
title('The Neamah---Shukur Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Neamah_Shukur_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Neamah_Shukur_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Neamah_Shukur_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Neamah_Shukur_Attractor.svg", "-dsvg")
% save("workspace/TheNeamahShukurAttractor.mat")