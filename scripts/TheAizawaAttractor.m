clear
close
clc

a = 0.95;
b = 0.7;
c = 0.6;
d = 3.5;
e = 0.25;
f = 0.1;

fun = @(t,x) [(x(3) - b) * x(1) - d * x(2);
               d * x(1) + (x(3) - b) * x(2);
               c + a * x(3) - x(3) ^ 3 / 3 - (x(1) ^ 2 + x(2) ^ 2) * (1 + e * x(3)) + f * x(3) * x(1) ^ 3];

incond = [0.1 0 0];

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
scatter3(xsol(:,1), xsol(:,2), xsol(:,3), 4, 1:length(xsol(:, 1)),'filled');
view([-40.90 15.09]);
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Aizawa Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Aizawa_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Aizawa_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Aizawa_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Aizawa_Attractor.svg", "-dsvg")
% save("workspace/TheAizawaAttractor.mat")