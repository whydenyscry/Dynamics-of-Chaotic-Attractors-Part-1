% Herrera-Charles, R., Afolabi, O. M., Núñez-Pérez, J. C., & Ademola, V. A. (2024, September). Secure communication based on chaotic spherical 3D attractors. In Applications of Digital Image Processing XLVII (Vol. 13137, pp. 78-89). doi: 10.1117/12.3028430
clear
close
clc

load("TheHerreraCharlesAfolabiAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure;
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-45.2 22.2])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Herrera-Charles---Afolabi Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Herrera_Charles_Afolabi_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Herrera_Charles_Afolabi_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Herrera_Charles_Afolabi_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Herrera_Charles_Afolabi_Attractor.svg", "-dsvg")
% save("workspace/TheHerreraCharlesAfolabiAttractor.mat")