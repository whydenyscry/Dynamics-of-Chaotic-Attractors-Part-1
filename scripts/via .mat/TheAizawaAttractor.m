clear
close
clc

load('TheAizawaAttractor.mat')

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