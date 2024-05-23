clear
clc
close

p = 3;
s = 2.7;
r = 1.7;
c = 2;
e = 9;

fun = @(t, x) [x(2) - p * x(1) + s * x(2) * x(3);
               r * x(2) - x(1) * x(3) + x(3)
               c * x(1) * x(2) - e * x(3)];

incond = [1 1 0];
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
view([41.3 26.6]);
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Dadras Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Dadras_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Dadras_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Dadras_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Dadras_Attractor.svg", "-dsvg")
% save("workspace/TheDadrasAttractor.mat")