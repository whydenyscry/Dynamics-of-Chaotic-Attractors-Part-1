% Sprott, J. (2020). Do We Need More Chaos Examples?. Chaos Theory and Applications, 2(2), 49-51.
% https://dergipark.org.tr/en/pub/chaos/issue/54264/735400
clear
close
clc

fun = @(t, x) [x(2);
               - x(1) - sign(x(3)) * x(2);
               x(2) ^ 2 - exp(- x(1) ^ 2)];

incond = [-0.1 -0.1 -0.1];
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
view([-139.31 19.23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sprott Strange Multifractal Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sprott_Strange_Multifractal_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sprott_Strange_Multifractal_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sprott_Strange_Multifractal_Attractor.eps", "ContentType", "vector")
% save("workspace/TheSprottStrangeMultifractalAttractor.mat")