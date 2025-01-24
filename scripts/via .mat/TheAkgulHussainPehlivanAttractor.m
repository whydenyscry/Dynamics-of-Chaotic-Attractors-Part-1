% Akgul, A., Hussain, S., & Pehlivan, I. (2016). A new three-dimensional chaotic system, its dynamical analysis and electronic circuit applications. Optik - International Journal for Light and Electron Optics, 127(18), 7062–7071. doi:10.1016/j.ijleo.2016.05.010 

clear
close
clc

load("TheAkgulHussainPehlivanAttractor.mat")

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
title('The Akgul---Hussain---Pehlivan Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Akgul_Hussain_Pehlivan_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Akgul_Hussain_Pehlivan_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Akgul_Hussain_Pehlivan_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Akgul_Hussain_Pehlivan_Attractor.svg", "-dsvg")
% save("workspace/TheAkgulHussainPehlivanAttractor.mat")