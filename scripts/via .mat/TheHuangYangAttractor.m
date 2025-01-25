% Huang, Y., & Yang, X.-S. (2005). Chaoticity of some chemical attractors: a computer assisted proof. Journal of Mathematical Chemistry, 38(1), 107–117. doi:10.1007/s10910-005-4537-2 
% Vaidyanathan, S. (2015). A Novel Chemical Chaotic Reactor System and its Adaptive Control. International Journal of ChemTech Research, 8(11), 654–668.https://www.researchgate.net/profile/Sundarapandian-Vaidyanathan/publication/289124616_Adaptive_Control_Design_for_the_Anti-synchronization_of_Novel_3-D_Chemical_Chaotic_Reactor_Systems/links/5689416c08ae051f9af750d2/Adaptive-Control-Design-for-the-Anti-synchronization-of-Novel-3-D-Chemical-Chaotic-Reactor-Systems.pdf

clear
close
clc

load("TheHuangYangAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([131.9 18.4])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title(["The Huang---Yang Attractor" "(Chemical Chaotic Reactor)"], 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Huang_Yang_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Huang_Yang_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Huang_Yang_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Huang_Yang_Attractor.svg", "-dsvg")
% save("workspace/TheHuangYangAttractor.mat")