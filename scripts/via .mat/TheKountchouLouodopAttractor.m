% Kountchou, M., Louodop, P., Bowong, S., Fotsin, H., & Kurths, J. (2016). Optimal Synchronization of a Memristive Chaotic Circuit. International Journal of Bifurcation and Chaos, 26(06), 1650093. doi:10.1142/s0218127416500930
clear
close
clc

load("TheKountchouLouodopAttractor.mat")

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