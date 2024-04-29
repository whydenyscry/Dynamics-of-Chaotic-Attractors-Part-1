clear
clc
close

a = 40;
b = 1.833;
c = 55;
d = 0.16;
e = 20;
xi = 0.65;

fun = @(t, x) [a * (x(2) - x(1)) + d * x(1) * x(3);
               c * x(1) - x(1) * x(3) + e * x(2);
               b * x(3) + x(1) * x(2) - xi * x(1) ^ 2];

incond = [0 1 0];
timeint = [0 300];

tau = 0.0001;

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
view([49 11]);
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The TSUCS2 Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_TSUCS2_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_TSUCS2_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_TSUCS2_Attractor.eps", "ContentType", "vector")
% save("workspace/TheTSUCS2Attractor.mat")