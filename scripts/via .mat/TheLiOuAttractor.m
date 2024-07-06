% Li, X., & Ou, Q. (2010). Dynamical properties and simulation of a new Lorenz-like chaotic system. Nonlinear Dynamics, 65(3), 255–270. doi:10.1007/s11071-010-9887-z
clear
close
clc

load("TheLiOuAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-133.3 17.2])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Li---Ou Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Li_Ou_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Li_Ou_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Li_Ou_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Li_Ou_Attractor.svg", "-dsvg")
% save("workspace/TheLiOuAttractor.mat")