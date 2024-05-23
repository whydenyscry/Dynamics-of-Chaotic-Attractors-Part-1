clear
close
clc

load('TheWangSunAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-70.03 22.29])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Wang---Sun Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Wang_Sun_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wang_Sun_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wang_Sun_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Wang_Sun_Attractor.svg", "-dsvg")
% save("workspace/TheWangSunAttractor.mat")