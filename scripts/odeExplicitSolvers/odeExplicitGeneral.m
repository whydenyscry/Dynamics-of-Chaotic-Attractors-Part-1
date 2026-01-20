function [t, zsol, dzdt_eval] = odeExplicitGeneral(c_vector, A_matrix, b_vector, odefun, tspan, tau, incond)

c = c_vector(:);
A = A_matrix;
b = b_vector(:);
z_0 = incond(:);
dzdt = odefun;

s_stages = numel(c);
m = numel(z_0);

tol = 1e-10;

if numel(b) ~= s_stages
    error('b_vector must have the same length as c_vector.');
end
if ~isequal(size(A), [s_stages, s_stages])
    error('A_matrix must be of size s×s, where s = length(c_vector).');
end
if any(abs(triu(A, 0)) > tol, 'all')
    error('A_matrix must be strictly lower triangular for explicit Runge-Kutta method.');
end
if max(abs(A * ones(s_stages, 1) - c)) > tol
    warning('Butcher tableau inconsistent: c ≠ A * 1 (within tolerance).');
end
if abs(c(1)) > tol
    warning('c_vector(1) is not zero; first stage is assumed at c = 0.');
end

if numel(dzdt(tspan(1), z_0)) ~= m
    error('odefun must return a vector of the same size as incond.');
end

if tau == 0
    error('tau must be non-zero.');
end
if (tspan(2) - tspan(1)) * tau <= 0
    error('Sign of tau must match direction of tspan.');
end

t = (tspan(1) : tau : tspan(2)) .';
if t(end) ~= tspan(2)
    if (tau > 0 && t(end) < tspan(2)) || (tau < 0 && t(end) > tspan(2))
        t(end+1) = tspan(2);
    elseif abs(t(end) - tspan(2)) < tol
        t(end) = tspan(2);
    end
end

N = numel(t);
zsol = zeros(m, N);
K = zeros(m, s_stages);

zsol(:, 1) = z_0;

calc_dzdt = (nargout > 2);
if calc_dzdt
    dzdt_eval = zeros(N, m);
else
    dzdt_eval = [];
end

for n = 1:N - 1
    tau_n = t(n+1) - t(n);
    K(:, 1) = dzdt(t(n), zsol(:, n)); 
    
    if calc_dzdt
        dzdt_eval(n, :) = K(:, 1) .';
    end

    for i = 2:s_stages
        K(:, i) = dzdt( ...
            t(n) + tau_n * c(i), ...
            zsol(:, n) + tau_n * K(:, 1:i-1) * A(i, 1:i-1).' ...
        );
    end

    zsol(:, n+1) = zsol(:, n) + tau_n * K * b;

    if any(~isfinite(zsol(:, n+1)))
        warning('Integration stopped: solution contains NaN or Inf at step %d (t = %g).', n+1, t(n+1));
        t = t(1:n+1);
        zsol = zsol(:, 1:n+1);
        if calc_dzdt
            dzdt_eval = dzdt_eval(1:n+1, :);
        end
        break;
    end
end

if calc_dzdt
    dzdt_eval(end, :) = dzdt(t(end), zsol(:, end)) .';
end

zsol = zsol .';
end