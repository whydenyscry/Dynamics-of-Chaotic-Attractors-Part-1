clear
close
clc

a = 50;
b = 10;
c = 13;
e = 6;

fun = @(t, x) [a * (x(2) - x(1)) + x(2) * x(3) ^ 2;
               b * (x(1) + x(2)) - x(1) * x(3) ^ 2;
              - c * x(3) + e * x(2) + x(1) * x(2) * x(3)];

incond = [3 3 0.4];
timeint = [0 200];

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
view([211.4 10.1])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Xing---Yun Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Xing_Yun_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Xing_Yun_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Xing_Yun_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Xing_Yun_Attractor.svg", "-dsvg")
% save("workspace/TheXingYunAttractor.mat")