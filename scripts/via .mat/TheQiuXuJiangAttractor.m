% Qiu, H., Xu, X., Jiang, Z., Sun, K., & Cao, C. (2023). Dynamical behaviors, circuit design, and synchronization of a novel symmetric chaotic system with coexisting attractors. Scientific Reports, 13(1). https://doi.org/10.1038/s41598-023-28509-z

clear
close
clc

load("TheQiuXuJiangAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([131.9 18.4])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Qiu---Xu---Jiang Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Qiu_Xu_Jiang_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Qiu_Xu_Jiang_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Qiu_Xu_Jiang_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Qiu_Xu_Jiang_Attractor.svg", "-dsvg")
% save("workspace/TheQiuXuJiangAttractor.mat")