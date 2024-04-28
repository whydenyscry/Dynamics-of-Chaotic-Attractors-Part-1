clear
clc
close

a = 100;
b = 26;

fun = @(t, x) [x(2);
               x(3);
               - x(3) - (b - a + a * x(1) ^ 2) * x(2) - b * x(1)];

incond = [0.1 0.1 0.1];
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
view([46 21])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Moore---Spiegel Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Moore_Spiegel_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Moore_Spiegel_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Moore_Spiegel_Attractor.eps", "ContentType", "vector")
% save("workspace/TheMooreSpiegelAttractor.mat")