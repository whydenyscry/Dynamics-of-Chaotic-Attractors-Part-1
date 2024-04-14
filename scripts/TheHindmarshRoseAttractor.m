clear
close
clc

a = 1;
b = 3;
c = 1;
d = 5;
s = 4;
r = 0.006;
xbar = -8/5;
I = 3.25;


fun = @(t, x) [x(2) - a * x(1) ^ 3 + b * x(1) ^ 2 + I - x(3);
                c - d * x(1) ^ 2 - x(2);
                r * (s * (x(1) - xbar) - x(3))];

incond = [0.1 0.1 0.1];
timeint = [0 300];

tau = 0.001;

start_ODE = datetime("now");
[t, xsol] = odeCRK4(fun, timeint, tau, incond);
end_ODE = datetime("now");

time_RKmethod = end_ODE - start_ODE;
time_RKmethod.Format = "hh:mm:ss.SSS"

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-47.22 18.91])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Hindmarsh---Rose Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Hindmarsh_Rose_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Hindmarsh_Rose_Attractor.pdf")
% exportgraphics(gcf, "images_eps/The_Hindmarsh_Rose_Attractor.eps")
% save("workspace/TheHindmarshRoseAttractor.mat")
