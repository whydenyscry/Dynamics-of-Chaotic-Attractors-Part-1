clear
close
clc

a = 3;
b = 0.8;
c = 1;
d = 0.1;
xi = 0.05;
eta = 3.312;
R = 10;
alpha = 2.8;
beta = 5;
eps = 0.1;
l = -2;
mu = 1.155;

fun = @(t, x) [x(3) * (l * x(1) - mu * x(2)) + (2 - x(3)) * (alpha * x(1) * (1 - (x(1) ^ 2 + x(2) ^ 2) / R ^ 2) - beta * x(2));
               x(3) * (mu * x(1) + l * x(2)) + (2 - x(3)) * (alpha * x(2) * (1 - (x(1) ^ 2 + x(2) ^ 2) / R ^ 2) + beta * x(1));
               1 / eps * (x(3) * ( (2 - x(3)) * (a * (x(3) - 2) ^ 2 + b) - d * x(1) ) * (x(3) + xi * (x(1) ^ 2 + x(2) ^ 2) - eta) - eps * c * (x(3) - 1))];

incond = [0 0.01 0];
timeint = [0 300];

tau = 0.0001;

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
view([45.15 28.78])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Deng Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Deng_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Deng_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Deng_Attractor.eps", "ContentType", "vector")
% save("workspace/TheDengAttractor.mat")