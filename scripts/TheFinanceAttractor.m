clear
close
clc

a = 0.001;
b = 0.2;
c = 1.1;

fun = @(t, x) [(1 / b - a) * x(1) + x(3) + x(1) * x(2);
              - b * x(2) - x(1) ^ 2;
              - x(1) - c * x(3)];

incond = [0.1 0 0];
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
view([-295.78 30.96])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Finance Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Finance_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Finance_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Finance_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Finance_Attractor.svg", "-dsvg")
% save("workspace/TheFinanceAttractor.mat")