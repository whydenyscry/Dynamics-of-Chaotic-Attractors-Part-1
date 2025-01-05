% Sun, M., Tian, L., & Fu, Y. (2007). An energy resources demand–supply system and its dynamical analysis. Chaos, Solitons & Fractals, 32(1), 168–180. doi:10.1016/j.chaos.2005.10.085 

clear
close
clc

a = [0.09 0.15];
b = [0.06 0.082 0.07];
c = [0.2 0.5 0.4];
M = 1.8;
N = 1;
K = 0.4;


fun = @(t, x) [a(1) * x(1) * (1 - x(1) / M) - a(2) * (x(2) + x(3));
               - b(1) * x(2) - b(2) * x(3) + b(3) * x(1) * (N - (x(1) - x(3)));
               c(1) * x(3) * (c(2) * x(1) -c(3))];

incond = [0.82 0.29 0.48];
timeint = [0 1e4];

tau = 1e-2;

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
view([-49 23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sun---Tian---Fu Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Sun_Tian_Fu_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sun_Tian_Fu_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sun_Tian_Fu_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sun_Tian_Fu_Attractor.svg", "-dsvg")
% save("workspace/TheSunTianFuAttractor.mat")