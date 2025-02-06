% Xu, Y., & Wang, Y. (2014). A new chaotic system without linear term and its impulsive synchronization. Optik - International Journal for Light and Electron Optics, 125(11), 2526–2530. doi:10.1016/j.ijleo.2013.10.123 

clear
close
clc

load("TheXuWangAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-134.71 27.92])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Xu---Wang Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Xu_Wang_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Xu_Wang_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Xu_Wang_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Xu_Wang_Attractor.svg", "-dsvg")
% save("workspace/TheXuWangAttractor.mat")