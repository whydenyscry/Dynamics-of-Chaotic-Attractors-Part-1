function [t, xsol] = odeRKN5(odefun, tspan, tau, incond)
% Coefficients of the Runge—Kutta—Nyström method of the 5th order.

c_vector = [0 1/3 2/5 1 2/3 4/5]';

A_matrix = [0 0 0 0 0 0;
            1/3 0 0 0 0 0;
            4/25 6/25 0 0 0 0;
            1/4 -3 15/4 0 0 0;
            2/27 10/9 -50/81 8/81 0 0;
            2/25 12/25 2/15 8/75 0 0];

b_vector = [23/192 0 125/192 0 -27/64 125/192];

[t, xsol] = odeExplicitGeneral(c_vector, A_matrix, b_vector, odefun, tspan, tau, incond);
end