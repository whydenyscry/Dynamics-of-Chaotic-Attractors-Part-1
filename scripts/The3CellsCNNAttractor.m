clear
clc
close

h = @(x) 1/2*(abs(x+1)-abs(x-1));
p1 = 1.24;
p2 = 1.1;
r = 4.4;
s = 3.21;

fun = @(t, x) [ - x(1) + p1 * h(x(1)) - s * h(x(2)) - s * h(x(3));
                - x(2) - s * h(x(1)) + p2 * h(x(2)) - r * h(x(3));
                - x(3) - s * h(x(1)) + r * h(x(2)) + h(x(3))];

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
view([42.88 25.19])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The 3-Cells CNN Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_3_Cells_CNN_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_3_Cells_CNN_Attractor.pdf")
% exportgraphics(gcf, "images_eps/The_3_Cells_CNN_Attractor.eps")
% save("workspace/The3CellsCNNAttractor.mat")