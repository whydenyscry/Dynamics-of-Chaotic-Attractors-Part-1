clear
clc
close

a = -10;
b = -4;
c = 18.1;

fun = @(t, x) [ - a * b * x(1) / (a + b) - x(2) * x(3) + c;
               a * x(2) + x(1) * x(3);
               b * x(3) + x(1) * x(2)];

incond = [0 0 2];
timeint = [0 200];

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
view([43.6 16.6])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The L\"u---Chen Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Lu_Chen_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Lu_Chen_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Lu_Chen_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Lu_Chen_Attractor.svg", "-dsvg")
% save("workspace/TheLuChenAttractor.mat")