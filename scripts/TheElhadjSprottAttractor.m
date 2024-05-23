clear
close
clc

a = 40;
b = 33;
c = 10;


fun = @(t, x) [a * (x(2) - x(1));
               - a * x(1) - b * x(2) * x(3);
               - c + x(2) ^ 2];

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
view([46.9 18.5])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Elhadj---Sprott Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Elhadj_Sprott_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Elhadj_Sprott_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Elhadj_Sprott_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Elhadj_Sprott_Attractor.svg", "-dsvg")
% save("workspace/TheElhadjSprottAttractor.mat")