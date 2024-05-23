clear
clc
close

a = 0.1;
b = 4;
c = 14;
d = 0.08;

fun = @(t, x) [- a * x(1) + x(2) ^ 2 - x(3) ^ 2 + a * c;
               x(1) * (x(2) - b * x(3)) + d;
              - x(3) + x(1) * (b * x(2) + x(3))];

incond = [0 1 0];
timeint = [0 500];

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
view([30.6 12.6])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Lorenz Mod 1 Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Lorenz_Mod_1_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Lorenz_Mod_1_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Lorenz_Mod_1_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Lorenz_Mod_1_Attractor.svg", "-dsvg")
% save("workspace/TheLorenzMod1Attractor.mat")