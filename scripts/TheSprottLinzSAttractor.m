clear
clc
close

a = 4;

fun = @(t, x) [- x(1) - a * x(2);
               x(1) + x(3) ^ 2;
               1 + x(1)];

incond = [0.1 0.1 0.1];
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
view([-49.73 16.45])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sprott---Linz S Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sprott_Linz_S_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sprott_Linz_S_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sprott_Linz_S_Attractor.eps", "ContentType", "vector")
% save("workspace/TheSprottLinzSAttractor.mat")