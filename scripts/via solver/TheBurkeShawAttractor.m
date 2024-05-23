clear
close
clc

a = 10;
b = 4.272;

fun = @(t, x) [ - a * (x(1) + x(2));
                -x(2) - a * x(1) * x(3);
                a * x(1) * x(2) + b];

incond = [1 0 0];
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
view([134.21 17.50])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Burke---Shaw Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Burke_Shaw_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Burke_Shaw_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Burke_Shaw_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Burke_Shaw_Attractor.svg", "-dsvg")
% save("workspace/TheBurkeShawAttractor.mat")