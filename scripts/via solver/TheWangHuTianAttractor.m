% Wang, Q., Hu, C., Tian, Z., Wu, X., Sang, H., & Cui, Z. (2023). A 3D memristor-based chaotic system with transition behaviors of coexisting attractors between equilibrium points. Results in Physics, 56, 107201. https://doi.org/10.1016/j.rinp.2023.107201

clear
close
clc

a = 2;
b = 2.5;
c = 2;

fun = @(t, x) [a * x(2) + b * (0.1 + 0.5 * x(2) ^ 2) * x(3);
               x(3);
               x(1) - c * x(2) - x(3) - 2.682 * 1e-4 * sinh(4.0485 * x(1))];

incond = [2 0.1 1];
timeint = [0 2000];

tau = 0.001;

start_ODE = datetime("now");
[t, xsol] = odeCRK4(fun, timeint, tau, incond);
end_ODE = datetime("now");

time_RKmethod = end_ODE - start_ODE;
time_RKmethod.Format = "hh:mm:ss.SSS";

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
title('The Wang---Hu---Tian Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Wang_Hu_Tian_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wang_Hu_Tian_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wang_Hu_Tian_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Wang_Hu_Tian_Attractor.svg", "-dsvg")
% save("workspace/TheWangHuTianAttractor.mat")