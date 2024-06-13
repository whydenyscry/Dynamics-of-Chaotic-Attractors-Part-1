% Sundarapandian, V., & Pehlivan, I. (2012). Analysis, control, synchronization, and circuit design of a novel chaotic system. Mathematical and Computer Modelling, 55(7-8), 1904–1915. doi:10.1016/j.mcm.2011.11.048
clear
close
clc

a = 1;
b = 0.46;
c = 0.46;

fun = @(t, x) [a * x(2) - x(1);
               - b * x(1) - x(3);
               c * x(3) + x(1) * x(2) ^ 2 - x(1)];

incond = [0 0 0.1];
timeint = [0 500];

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
view([-139.31 19.23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sundarapandian---Pehlivan Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sundarapandian_Pehlivan_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sundarapandian_Pehlivan_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sundarapandian_Pehlivan_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sundarapandian_Pehlivan_Attractor.svg", "-dsvg")
% save("workspace/TheSundarapandianPehlivanAttractor.mat")