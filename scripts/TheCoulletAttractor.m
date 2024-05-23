clear
clc
close

a = 0.8;
b = -1.1;
c = -0.45;
d = -1;

fun = @(t, x) [x(2);
               x(3);
               a * x(1) + b * x(2) + c * x(3) + d * x(1) ^ 3];

incond = [0.1 0.41 0.31];
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
view([135.51 22.19])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Coullet Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Coullet_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Coullet_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Coullet_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Coullet_Attractor.svg", "-dsvg")
% save("workspace/TheCoulletAttractor.mat")