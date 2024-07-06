% Neamah, A. A., & Shukur, A. A. (2023). A novel conservative chaotic system involved in hyperbolic functions and its application to design an efficient colour image encryption scheme. Symmetry, 15(8), 1511. https://doi.org/10.3390/sym15081511 
clear
close
clc

a = 1;
b = 0.3;


fun = @(t, x) [x(2);
               - x(1) - x(2) * x(3);
               cosh(x(2)) - 1 - a * cos(x(1) ^ 2) - b * cos(x(2))];

incond = [1 1 1];
timeint = [0 300];

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
view([-224 16])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Neamah---Shukur Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Neamah_Shukur_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Neamah_Shukur_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Neamah_Shukur_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Neamah_Shukur_Attractor.svg", "-dsvg")
% save("workspace/TheNeamahShukurAttractor.mat")