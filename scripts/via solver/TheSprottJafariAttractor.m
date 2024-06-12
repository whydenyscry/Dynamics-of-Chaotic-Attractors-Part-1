% Jafari, S., Sprott, J. C., & Nazarimehr, F. (2015). Recent new examples of hidden attractors. The European Physical Journal Special Topics, 224(8), 1469–1476. doi:10.1140/epjst/e2015-02472-1
clear
close
clc

a = 8.888;
b = 4;


fun = @(t, x) [x(2);
               - x(1) + x(2) * x(3);
               x(3) + a * x(1) ^ 2 - x(2) ^ 2 - b];

incond = [0 3.9 0.7];
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
view([-139.31 19.23])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sprott---Jafari Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Sprott_Jafari_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sprott_Jafari_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sprott_Jafari_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sprott_Jafari_Attractor.svg", "-dsvg")
% save("workspace/TheSprottJafariAttractor.mat")