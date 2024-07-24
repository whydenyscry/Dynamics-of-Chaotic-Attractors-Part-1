% Nazarimehr, F., & Sprott, J. C. (2020). Investigating chaotic attractor of the simplest chaotic system with a line of equilibria. The European Physical Journal Special Topics, 229(6-7), 1289–1297. doi:10.1140/epjst/e2020-900216-x 
clear
close
clc

a = 289;

fun = @(t, x) [a * x(2);
               x(1) * x(3);
               x(2) - x(3) - x(2) ^ 2];

incond = [32 0.1 0];
timeint = [0 100];

tau = 0.0001;

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
view([-135.4 13.1])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Nazarimehr---Sprott Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Nazarimehr_Sprott_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Nazarimehr_Sprott_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Nazarimehr_Sprott_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Nazarimehr_Sprott_Attractor.svg", "-dsvg")
% save("workspace/TheNazarimehrSprottAttractor.mat")