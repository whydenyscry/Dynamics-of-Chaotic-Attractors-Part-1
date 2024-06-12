% Liu, C. (2009). A novel chaotic attractor. Chaos, Solitons & Fractals, 39(3), 1037–1045. doi:10.1016/j.chaos.2007.04.025
clear
close
clc

a = 1;
b = 2.5;
c = 1;
d = 4;
e = 1;

fun = @(t, x) [a * (x(2) - x(1) + x(2) * x(3));
               b * x(2) - e * x(1) * x(3);
               c * x(2) - d * x(3)];

incond = [0.1 0.1 0.1];
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
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Liu Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Liu_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Liu_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Liu_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Liu_Attractor.svg", "-dsvg")
% save("workspace/TheLiuAttractor.mat")