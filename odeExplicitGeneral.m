function [t, xsol] = odeExplicitGeneral(c_vector,A_matrix,b_vector,fun,timeint,tau,incond)

s_stages = length(c_vector);
m = length(incond);

c_vector = reshape(c_vector, [s_stages 1]);
b_vector = reshape(b_vector, [s_stages 1]);
incond = reshape(incond, [m 1]);
    

t = (timeint(1):tau:timeint(2))';
xsol = zeros(length(incond), length(t));
xsol(:, 1) = incond(:);

for n = 1:length(t)-1
    t_n = t(n);
    x_n = xsol(:, n);
    tau_n = tau;
    
    K_matrix = zeros(m, s_stages);
    K_matrix(:, 1) = fun(t_n, x_n);
    
        for i = 2:s_stages
            t_arg = t_n + tau_n * c_vector(i);
            a_vector = A_matrix(i, 1:i-1)';
            x_arg = x_n + tau_n * K_matrix(:, 1:i-1) * a_vector;
            K_matrix(:, i) = fun(t_arg, x_arg);
        end
    
    xsol(:, n+1) = x_n + tau_n * K_matrix * b_vector;
end
xsol = xsol';
end