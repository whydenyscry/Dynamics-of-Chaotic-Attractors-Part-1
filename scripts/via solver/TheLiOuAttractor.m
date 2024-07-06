% Li, X., & Ou, Q. (2010). Dynamical properties and simulation of a new Lorenz-like chaotic system. Nonlinear Dynamics, 65(3), 255–270. doi:10.1007/s11071-010-9887-z
clear
close
clc

a = 10;
b = 3;
c = 6;
d = 1;
e = 0;



fun = @(t, x) [a * (x(2) - x(1));
               c * x(2) - x(1) * x(3);
               - b * x(3) + d * x(1) ^ 2 + e * x(1) * x(2)];

incond = [1 1 1];
timeint = [0 150];

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
view([-133.3 17.2])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Li---Ou Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Li_Ou_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Li_Ou_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Li_Ou_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Li_Ou_Attractor.svg", "-dsvg")
% save("workspace/TheLiOuAttractor.mat")