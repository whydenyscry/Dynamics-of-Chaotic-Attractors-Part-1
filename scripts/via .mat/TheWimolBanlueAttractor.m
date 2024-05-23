clear
close
clc

load('TheWimolBanlueAttractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-137.0 17.5])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Wimol---Banlue Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Wimol_Banlue_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wimol_Banlue_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wimol_Banlue_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Wimol_Banlue_Attractor.svg", "-dsvg")
% save("workspace/TheWimolBanlueAttractor.mat")