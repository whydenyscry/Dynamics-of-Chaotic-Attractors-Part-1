clear
close
clc

a = 10;
b = 16;
c = -1;


fun = @(t, x) [a * (x(2) - x(1));
               b * x(1) - x(1) * x(3);
               x(1) * x(2) + c * x(3)];

incond = [3 1 15];
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
view([46.9 18.5])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Zhou Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Zhou_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Zhou_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Zhou_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Zhou_Attractor.svg", "-dsvg")
% save("workspace/TheZhouAttractor.mat")