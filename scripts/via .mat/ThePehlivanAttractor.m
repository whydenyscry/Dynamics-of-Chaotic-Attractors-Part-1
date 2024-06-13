% Pehlivan, I. (2011). Four-scroll stellate new chaotic system. Optoelectronics and Advanced Materials - Rapid Communications - OAM-RC - INOE 2000. https://oam-rc.inoe.ro/articles/four-scroll-stellate-new-chaotic-system/
clear
close
clc

load("ThePehlivanAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-245.3 24.3])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Pehlivan Attractor', 'FontSize', 16);

% exportgraphics(gcf, "images_png/The_Pehlivan_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Pehlivan_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Pehlivan_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Pehlivan_Attractor.svg", "-dsvg")
% save("workspace/ThePehlivanAttractor.mat")