% Xu, Y., & Wang, Y. (2014). A new chaotic system without linear term and its impulsive synchronization. Optik - International Journal for Light and Electron Optics, 125(11), 2526–2530. doi:10.1016/j.ijleo.2013.10.123 

clear
close
clc

a = 0.1;
b = 0.25;

fun = @(t, x) [log(a + exp(x(2) - x(1)));
                x(1) * x(3);
                b - x(1) * x(2)];

incond = [1 1 1];
timeint = [0 1000];

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
view([-134.71 27.92])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Xu---Wang Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Xu_Wang_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Xu_Wang_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Xu_Wang_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Xu_Wang_Attractor.svg", "-dsvg")
% save("workspace/TheXuWangAttractor.mat")