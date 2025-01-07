function [t, xsol] = odeRKB7(odefun, tspan, tau, incond)
% Coefficients of the Runge—Kutta—Butcher method of the 7th order.

c_vector = [0 1/6 1/3 1/2 2/11 2/3 6/7 0 1]';

A_matrix = [0 0 0 0 0 0 0 0 0;
            1/6 0 0 0 0 0 0 0 0;
            0 1/3 0 0 0 0 0 0 0;
            1/8 0 3/8 0 0 0 0 0 0;
            148/1331 0 150/1331 -56/1331 0 0 0 0 0;
            -404/243 0 -170/27 4024/1701 10648/1701 0 0 0 0;
            2466/2401 0 1242/343 -19176/16807 -51909/16807 1053/2401 0 0 0;
            5/154 0 0 96/539 -1815/20384 -405/2464 49/1144 0 0;
            -113/32 0 -195/22 32/7 29403/3584 -729/512 1029/1408 21/16 0];

b_vector = [0 0 0 32/105 1771561/6289920 243/2560 16807/74880 77/1440 11/270]';

[t, xsol] = odeExplicitGeneral(c_vector, A_matrix, b_vector, odefun, tspan, tau, incond);
end