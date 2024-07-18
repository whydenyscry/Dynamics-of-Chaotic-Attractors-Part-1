% Kountchou, M., Louodop, P., Bowong, S., Fotsin, H., & Kurths, J. (2016). Optimal Synchronization of a Memristive Chaotic Circuit. International Journal of Bifurcation and Chaos, 26(06), 1650093. doi:10.1142/s0218127416500930
clear
close
clc

a = 2;
b = 2.5;
c = 6;


fun = @(t, x) [cos(b * t) + a * (1 + x(3) ^ 2 - x(3) ^ 4) * x(2);
               x(1) - x(2) + cos(b * t);
               - c * x(2)];

incond = [0.1 0.3 0.09];
timeint = [0 200];

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
view([-44.13 18.67])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Kountchou---Louodop Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Kountchou_Louodop_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Kountchou_Louodop_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Kountchou_Louodop_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Kountchou_Louodop_Attractor.svg", "-dsvg")
% save("workspace/TheKountchouLouodopAttractor.mat")