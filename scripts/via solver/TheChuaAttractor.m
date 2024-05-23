clear
clc
close

a = 78/5;
b = 1279/50;
c = -5/7;
d = -8/7;

fun = @(t, x) [a * (-x(1) + x(2) - (c * x(1) + 1 / 2 * (d - c) * (abs(x(1) + 1) - abs(x(1) - 1))));
               x(1) - x(2) + x(3);
              -b * x(2)];

incond = [-0.1 -0.1 -0.1];
timeint = [0 200];

tau = 0.0005;

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
view([31.19 10.77])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Chua Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Chua_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Chua_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Chua_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Chua_Attractor.svg", "-dsvg")
% save("workspace/TheChuaAttractor.mat")