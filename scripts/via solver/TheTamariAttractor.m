clear
clc
close

a = 1.013;
b = -0.011;
c = 0.02;	
d = 0.96;
e = 0.0;
f = 0.01;
g = 1.0;
h = 0.05;
u = 0.05;

fun = @(t, x) [(x(1) - a * x(2)) * cos(x(3)) - b * x(2) * sin(x(3));
              (x(1) + c * x(2)) * sin(x(3)) + d * x(2) * cos(x(3));
               e + f * x(3)+ g * atan((1 - u) / (1 - h) * x(1) * x(2))];

incond = [1 1 1];
timeint = [0 500];

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
view([-227.35 19.42])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Tamari Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Tamari_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Tamari_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Tamari_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Tamari_Attractor.svg", "-dsvg")
% save("workspace/TheTamariAttractor.mat")