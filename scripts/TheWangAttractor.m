clear
clc
close

a = 0.977;
b = 10;
c = 4;
d = 0.1;

fun = @(t,x) [ a * (x(1) - x(2)) - x(2) * x(3);
            -b * x(2) + x(1) * x(3);
            -c * x(3) + d * x(1) + x(1) * x(2)];

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
view([-39.8 22.8])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Wang Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Wang_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wang_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wang_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Wang_Attractor.svg", "-dsvg")
% save("workspace/TheWangAttractor.mat")