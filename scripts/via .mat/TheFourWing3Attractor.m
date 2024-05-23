clear
close
clc

load('TheFourWing3Attractor.mat')

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");
 
figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([41.1 20.9])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Four---Wing 3 Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Four_Wing_3_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Four_Wing_3_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Four_Wing_3_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Four_Wing_3_Attractor.svg", "-dsvg")
% save("workspace/TheFourWing3Attractor.mat")