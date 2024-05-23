clear
close
clc

a = 2;

fun = @(t, x) [x(2) - x(1);
               - x(3) * tanh(x(1));
                -a + x(1) * x(2) + abs(x(2))];

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
view([-137.0 17.5])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Wimol---Banlue Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Wimol_Banlue_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wimol_Banlue_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wimol_Banlue_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Wimol_Banlue_Attractor.svg", "-dsvg")
% save("workspace/TheWimolBanlueAttractor.mat")