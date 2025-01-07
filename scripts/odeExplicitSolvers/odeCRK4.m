function [t, xsol] = odeCRK4(odefun, tspan, tau, incond)
% Coefficients of the classical Runge—Kutta method of the 4th order.

c_vector = [0 1/2 1/2 1]'; 

A_matrix = [0 0 0 0; 
            1/2 0 0 0; 
            0 1/2 0 0; 
            0 0 1 0];

b_vector = [1/6 1/3 1/3 1/6]';

[t, xsol] = odeExplicitGeneral(c_vector, A_matrix, b_vector, odefun, tspan, tau, incond);
end