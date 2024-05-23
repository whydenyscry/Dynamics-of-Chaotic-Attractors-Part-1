clear
clc
close

a = 0.4;
b = 0.175;

fun = @(t, x) [- a * x(1) + x(2) + 10 * x(2) * x(3);
               - x(1) - 0.4 * x(2) + 5 * x(1) * x(3);
              b * x(3) - 5 * x(1) * x(2)];

incond = [0.349 0 -0.16];
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
view([26.258 16.770])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Newton---Leipnik Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Newton_Leipnik_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Newton_Leipnik_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Newton_Leipnik_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Newton_Leipnik_Attractor.svg", "-dsvg")
% save("workspace/TheNewtonLeipnikAttractor.mat")