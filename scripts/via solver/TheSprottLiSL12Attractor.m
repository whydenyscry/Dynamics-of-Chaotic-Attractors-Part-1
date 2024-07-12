% Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183. doi:10.1016/j.physleta.2013.11.004 
clear
close
clc

a = 0.3;
b = 1;

fun = @(t, x) [- x(2) + x(1) ^ 2 - x(2) ^ 2;
               - x(1) * x(3);
               a * x(1) ^ 2 + b * x(1) * x(2)];

incond = [0 -0.3 2];
timeint = [0 200];

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
view([312.8 23.6])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sprott---Li SL$_{12}$ Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Sprott_Li_SL_12_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sprott_Li_SL_12_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sprott_Li_SL_12_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sprott_Li_SL_12_Attractor.svg", "-dsvg")
% save("workspace/TheSprottLiSL12Attractor.mat")