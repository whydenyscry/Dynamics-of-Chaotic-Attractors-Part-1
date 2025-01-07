% Wang, Z., Sun, Y., & Cang, S. (2011). Acta Physica Polonica B, 42(2), 235. doi:10.5506/aphyspolb.42.235 
% Herrera-Charles, R., Afolabi, O. M., Núñez-Pérez, J. C., & Ademola, V. A. (2024, September). Secure communication based on chaotic spherical 3D attractors. In Applications of Digital Image Processing XLVII (Vol. 13137, pp. 78-89). doi: 10.1117/12.3028430

clear
close
clc

load("TheWangSunCangSignumAttractor.mat")

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
title(["The Wang---Sun---Cang" "Signum Attractor"], 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Wang_Sun_Cang_Signum_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wang_Sun_Cang_Signum_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wang_Sun_Cang_Signum_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Wang_Sun_Cang_Signum_Attractor.svg", "-dsvg")
% save("workspace/TheWangSunCangSignumAttractor.mat")