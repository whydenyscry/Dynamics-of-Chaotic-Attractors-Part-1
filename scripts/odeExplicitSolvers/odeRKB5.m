function [t, xsol] = odeRKB5(odefun, tspan, tau, incond)
% Coefficients of the Runge—Kutta—Butcher method of the 5th order.

c_vector = [0 1/4 1/4 1/2 3/4 1] .';

A_matrix = [0 0 0 0 0 0;
            1/4 0 0 0 0 0;
            1/8 1/8 0 0 0 0;
            0 0 1/2 0 0 0;
            3/16 -3/8 3/8 9/16 0 0;
            -3/7 8/7 6/7 -12/7 8/7 0];

b_vector = [7/90 0 32/90 12/90 32/90 7/90] .';

[t, xsol] = odeExplicitGeneral(c_vector, A_matrix, b_vector, odefun, tspan, tau, incond);
end