clear
clc
close

a = 17/10;

fun = @(t, x) [- x(3);
               - x(1) ^ 2 - x(2);
               a + a * x(1) + x(2)];

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
view([131.5 14.4])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sprott M Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sprott_M_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sprott_M_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sprott_M_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sprott_M_Attractor.svg", "-dsvg")
% save("workspace/TheSprottMAttractor.mat")