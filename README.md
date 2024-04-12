# Dynamics of Nonlinear Attractors
This is where I'll post attractors I've plotted using [explicit Runge-Kutta methods](https://github.com/whydenyscry/General-algorithm-of-the-explicit-Runge-Kutta-method). 
 
## The Lorenz Attractor
 
 $$ 
\begin{cases}
    \frac{\mathrm{d}x}{\mathrm{d}t} = \sigma(y - x), \\
    \frac{\mathrm{d}y}{\mathrm{d}t} = x(\rho - z) - y, \\
    \frac{\mathrm{d}z}{\mathrm{d}t} = xy - \beta z,
\end{cases}
 $$
 
$$
 \begin{bmatrix}
			\sigma\\
			\rho\\
			\beta
\end{bmatrix} = \begin{bmatrix}
		10 \\ 
		28 \\ 
		\frac{8}{3}
	\end{bmatrix}.
$$

![The Lorenz Attractor](images_eps/The Lorenz Attractor.eps)
