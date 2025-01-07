function [t, xsol] = odeRKB6(odefun, tspan, tau, incond)
% Coefficients of the Runge—Kutta—Butcher method of the 6th order.

c_vector = [0 1/3 2/3 1/3 5/6 1/6 1]';

A_matrix = [0    0    0    0    0    0    0;
            1/3  0    0    0    0    0    0;
            0    2/3  0    0    0    0    0;
            1/12 1/3 -1/12 0    0    0    0;
            25/48 -55/24 35/48 15/8  0    0    0;
            3/20 -11/24 -1/8  1/2  1/10 0    0;
            -261/260 33/13 43/156 -118/39 32/195 80/39 0];

b_vector = [13/200 0 11/40 11/40 4/25 4/25 13/200]';

[t, xsol] = odeExplicitGeneral(c_vector, A_matrix, b_vector, odefun, tspan, tau, incond);
end