% Wang, Z., Sun, Y., & Cang, S. (2011). Acta Physica Polonica B, 42(2), 235. doi:10.5506/aphyspolb.42.235 
% Herrera-Charles, R., Afolabi, O. M., Núñez-Pérez, J. C., & Ademola, V. A. (2024, September). Secure communication based on chaotic spherical 3D attractors. In Applications of Digital Image Processing XLVII (Vol. 13137, pp. 78-89). doi: 10.1117/12.3028430

clear
close
clc

a = [-4.1 1.2 13.45];
b = 0.161;
cc = [2.76 0.6 13.13];
c = 3.5031;
d = 1.6;
e = 0;


fun = @(t, x) [a(1) * x(1) - a(2) * x(2) + a(3) * x(3) + 2 * tanh(100 * sin(x(2)));
               - d * x(1) * x(3) + b + e * x(1);
               cc(1) * x(1) * x(2) + cc(2) * x(2) * x(3) + cc(3) * x(3) + c];

incond = [-0.04 -15.8 -1.4];
timeint = [0 200];

tau = 1e-4;

start_ODE = datetime("now");
[t, xsol] = odeCRK4(fun, timeint, tau, incond);
end_ODE = datetime("now");

time_RKmethod = end_ODE - start_ODE;
time_RKmethod.Format = "hh:mm:ss.SSS";

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure;
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-45.2 22.2])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title(["The Wang---Sun---Cang" "Hyperbolic Tangent Attractor"], 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Wang_Sun_Cang_Hyperbolic_Tangent_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Wang_Sun_Cang_Hyperbolic_Tangent_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Wang_Sun_Cang_Hyperbolic_Tangent_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Wang_Sun_Cang_Hyperbolic_Tangent_Attractor.svg", "-dsvg")
% save("workspace/TheWangSunCangHyperbolicTangentAttractor.mat")