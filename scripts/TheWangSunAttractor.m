clear
clc
close

a = 0.2;
b = -0.01;
c = 1;
d = -0.4;
e = -1;
f = -1;

fun = @(t, x) [a * x(1) + c * x(2) * x(3);
               b * x(1) + d * x(2) - x(1) * x(3);
               e * x(3) + f * x(1) * x(2)];

incond = [1 1 1.03];
timeint = [0 1000];

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
view([-70.03 22.29])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Wang---Sun Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Wang_Sun_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wang_Sun_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wang_Sun_Attractor.eps", "ContentType", "vector")
% save("workspace/TheWangSunAttractor.mat")