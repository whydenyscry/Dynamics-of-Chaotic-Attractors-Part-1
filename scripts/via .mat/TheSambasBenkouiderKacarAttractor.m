% Sambas, A., Benkouider, K., Kaçar, S., Ceylan, N., Vaidyanathan, S., Sulaiman, I. M., Mohamed, M. A., Ayob, A. F. M., & Muni, S. S. (2024). Dynamic Analysis and Circuit Design of a New 3D Highly Chaotic System and its Application to Pseudo Random Number Generator (PRNG) and Image Encryption. SN Computer Science, 5(4). https://doi.org/10.1007/s42979-024-02766-9

clear
close
clc

load("TheSambasBenkouiderKacarAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([-133 32])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sambas---Benkouider---Ka\c{c}ar Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Sambas_Benkouider_Kacar_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sambas_Benkouider_Kacar_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sambas_Benkouider_Kacar_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sambas_Benkouider_Kacar_Attractor.svg", "-dsvg")
% save("workspace/TheSambasBenkouiderKacarAttractor.mat")