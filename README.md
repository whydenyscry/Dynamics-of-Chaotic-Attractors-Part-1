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

![The Lorenz Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Lorenz_Attractor.png)

## The Lotka—Volterra Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=x-xy+\varsigma x^2-\alpha z x^2, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-y+xy, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=-\beta z +\alpha z x^2,
\end{cases}
$$
 
$$
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
\end{bmatrix}=
		\begin{bmatrix}
			2.9851\\
			3\\
			2
\end{bmatrix}.
$$

![The Lotka—Volterra Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Lotka_Volterra_Attractor.png)

## The Aizawa Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = (z - \beta)x - \delta y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = \delta x + (z - \beta)y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \varsigma + \alpha z - \frac{z^3}{3} - \left(x^2 + y^2\right)\left(1 + \varepsilon z\right) + \xi zx^3,
\end{cases}
$$
 
$$
\begin{bmatrix}
			\alpha \\
			\beta \\
			\varsigma \\
			\delta \\
			\varepsilon \\
			\xi
\end{bmatrix}=
		\begin{bmatrix}
			0.95 \\
			0.7 \\
			0.6 \\
			3.5 \\
			0.25 \\
			0.1
\end{bmatrix}.
$$

![The Aizawa Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Aizawa_Attractor.png)

## The Tamari Attractor
 
$$ \begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =\left(x-\alpha y\right)\cos z-\beta y \sin z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = \left(x+\gamma y\right)\sin z +\delta y\cos z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \varepsilon +\kappa z+\xi\arctan\left(\dfrac{1-\varsigma}{1-\omega}xy\right),
	\end{cases} 
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\gamma\\
			\delta\\
			\varepsilon\\
			\kappa\\
			\xi\\
			\varsigma\\
			\omega
\end{bmatrix}=
		\begin{bmatrix}
			1.013\\
			-0.011\\
			0.02\\
			0.96\\
			0\\
			0.01\\
			1\\
			0.05\\
			0.05
\end{bmatrix}.
$$

![The Tamari Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Tamari_Attractor.png)