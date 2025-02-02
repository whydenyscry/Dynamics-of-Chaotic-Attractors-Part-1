% Vaidyanathan, S., & Volos, C. (2015). Analysis and adaptive control of a novel 3-D conservative no-equilibrium chaotic system. Archives of Control Sciences, 25(3), 333–353. doi:10.1515/acsc-2015-0022 

clear
close
clc

load("TheVaidyanathanVolosAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-46.7 33.5])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Vaidyanathan---Volos Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Vaidyanathan_Volos_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Vaidyanathan_Volos_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Vaidyanathan_Volos_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Vaidyanathan_Volos_Attractor.svg", "-dsvg")
% save("workspace/TheVaidyanathanVolosAttractor.mat")