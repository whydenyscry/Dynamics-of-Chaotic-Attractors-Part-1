clear
close
clc

a = 6.7;
k = 2;

fun = @(t,x) [-k*x(1)+a*x(2)-x(2)*x(3);
              x(1);
              -x(3)+x(2)^2];

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
view([-42.5 25.3])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Rucklidge Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Rucklidge_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Rucklidge_Attractor.pdf")
% exportgraphics(gcf, "images_eps/The_Rucklidge_Attractor.eps")
% save("workspace/TheRucklidgeAttractor.mat")