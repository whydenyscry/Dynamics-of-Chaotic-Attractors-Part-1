% Sundarapandian, V. (2013). Analysis and anti - synchronization of a novel chaotic system via active and adaptive controllers. Journal of Engineering Science and Technology Review, 6(4), 45–52. https://doi.org/10.25103/jestr.064.06
clear
close
clc

a = 21.5;
b = 20.6;
c = 11;
d = 6.4;

fun = @(t, x) [a * (x(2) - x(1)) + x(2) * x(3);
               b * x(1) + c * x(2) - x(1) * x(3);
               - d * x(3) + x(1) ^ 2];

incond = [0.5 2.1 1.8];
timeint = [0 50];

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
view([-139.31 19.23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sundarapandian Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sundarapandian_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sundarapandian_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sundarapandian_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sundarapandian_Attractor.svg", "-dsvg")
% save("workspace/TheSundarapandianAttractor.mat")