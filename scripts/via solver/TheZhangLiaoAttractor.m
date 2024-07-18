% Zhang, J., & Liao, X. (2017). Synchronization and chaos in coupled memristor-based FitzHugh-Nagumo circuits with memristor synapse. AEU - International Journal of Electronics and Communications, 75, 82–90. doi:10.1016/j.aeue.2017.03.003
clear
close
clc

a = -1.03;
b = -0.5;
c = 0.98;
d = 1;
e = 0.15;
f = 0.75;

fun = @(t, x) [x(2) - x(1) * (b + 0.5 * (a-b) * (sign(x(3) + 1) - sign(x(3) - 1))) + e/f * cos(f * t);
               - c * x(2) - c * x(1);
               d * x(1)];

incond = [0 0 0.001];
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
view([136.54 17.87])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Zhang---Liao Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Zhang_Liao_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Zhang_Liao_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Zhang_Liao_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Zhang_Liao_Attractor.svg", "-dsvg")
% save("workspace/TheZhangLiaoAttractor.mat")