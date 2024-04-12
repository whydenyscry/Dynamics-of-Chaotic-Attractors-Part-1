clear
clc
close

sigma = 10; 
beta = 8/3; 
rho = 28;

fun = @(t, x) [sigma * (x(2) - x(1));
            x(1) * (rho - x(3)) - x(2);
            x(1) * x(2) - beta * x(3)];

incond = [0.1 0.1 0.1];
timeint = [0 100];

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
scatter3(xsol(:,1), xsol(:,2), xsol(:,3), 4, 1:length(xsol(:, 1)),'filled');
view([-129.8 10.3]);
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Lorenz Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The Lorenz Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The Lorenz Attractor.pdf")
% save("workspace/TheLorenzAttractor.mat")