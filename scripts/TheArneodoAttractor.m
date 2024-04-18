clear
clc
close

a = -5.5;
b = 3.5;
c = -1;

fun = @(t,x) [x(2);
              x(3);
             - a * x(1) - b * x(2) - x(3) + c * x(1) ^ 3];

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
view([133.0 30.6])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Arneodo Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Arneodo_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Arneodo_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Arneodo_Attractor.eps", "ContentType", "vector")
% save("workspace/TheArneodoAttractor.mat")