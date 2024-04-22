clear
clc
close

a = 0.44;
b = 1.1;
c = 1;

fun = @(t, x) [x(2);
               x(3);
              -c * x(1) - b * x(2) - a * x(3) + x(1) ^ 2];

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
view([45.15 25.67])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Genesio---Tesi Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Genesio_Tesi_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Genesio_Tesi_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Genesio_Tesi_Attractor.eps", "ContentType", "vector")
% save("workspace/TheGenesioTesiAttractor.mat")