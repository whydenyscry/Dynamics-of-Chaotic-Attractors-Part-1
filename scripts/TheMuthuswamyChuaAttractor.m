clear
clc
close

a = 0.6;

fun = @(t, x) [x(2);
              - x(1) / 3 + x(2) / 2 - x(2) * x(3) ^ 2 / 2;
               x(2) - a * x(3) - x(2) * x(3)];

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
view([-46.22 17.16])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Muthuswamy---Chua Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Muthuswamy_Chua_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Muthuswamy_Chua_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Muthuswamy_Chua_Attractor.eps", "ContentType", "vector")
% save("workspace/TheMuthuswamyChuaAttractor.mat")