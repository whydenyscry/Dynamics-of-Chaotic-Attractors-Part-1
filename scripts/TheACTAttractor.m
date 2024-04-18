clear
close
clc

a = 1.8;	
b = -0.07;	
d = 1.5; 	
m = 0.02;

fun = @(t, x) [ a * (x(1) - x(2));
                - 4 * a * x(2) + x(1) * x(3) + m * x(1) ^ 3;
                - d * a * x(3) + x(1) * x(2) + b * x(3) ^ 2];

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
view([223.7 16.3])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The ACT Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_ACT_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_ACT_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_ACT_Attractor.eps", "ContentType", "vector")
% save("workspace/TheACTAttractor.mat")