clear
close
clc

a = 36;
b = 3;
c = 20;

fun = @(t, x) [a * (x(2) - x(1));
               - x(1) * x(3) + c * x(2);
               x(1) * x(2) - b * x(3)];

incond = [1 1 1];
timeint = [0 300];

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
view([-320.5 15.0])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Chen---Celikovsky Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Chen_Celikovsky_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Chen_Celikovsky_Attractor.pdf")
% exportgraphics(gcf, "images_eps/The_Chen_Celikovsky_Attractor.eps")
% save("workspace/TheChenCelikovskyAttractor.mat")