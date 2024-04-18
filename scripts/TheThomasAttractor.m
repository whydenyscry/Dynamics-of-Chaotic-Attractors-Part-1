clear
close
clc

b = 0.19;

fun =  @(t,x) [ - b * x(1) + sin(x(2));
                - b * x(2) + sin(x(3));
                - b * x(3) + sin(x(1))];

incond = [0.1 0 0];
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
view([137.07 33.23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Thomas Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Thomas_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Thomas_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Thomas_Attractor.eps", "ContentType", "vector")
% save("workspace/TheThomasAttractor.mat")