# Dynamics of Nonlinear Attractors
This is where I'll post attractors I've plotted using [explicit Runge-Kutta methods](https://github.com/whydenyscry/General-algorithm-of-the-explicit-Runge-Kutta-method). 
The vast majority of attractors I've learned about on [Jürgen Mayer's personal website](http://www.3d-meier.de/).

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

## The Lorenz Mod 1 Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-\alpha x+y^2-z^2+\alpha\varsigma, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x\left(y-\beta z\right)+\delta, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=-z+x\left(\beta y+z\right),
		\end{cases}
$$
 
$$
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			0.1\\
			4\\
			14\\
			0.08
		\end{bmatrix}.
$$

![The Lorenz Mod 1 Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Lorenz_Mod_1_Attractor.png)

## The Lorenz Mod 2 Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-\alpha x+y^2-z^2+\alpha\varsigma, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x\left(y-\beta z\right)+\delta, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=-z+x\left(\beta y+z\right),
		\end{cases}
$$
 
$$
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			0.9\\
			5\\
			9.9\\
			1
		\end{bmatrix}.
$$

![The Lorenz Mod 2 Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Lorenz_Mod_2_Attractor.png)

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
			\frac{\mathrm{d}z}{\mathrm{d}t} = \varepsilon +\kappa z+\xi\arctan\left(\frac{1-\varsigma}{1-\omega}xy\right),
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

## The Halvorsen Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = -\alpha x-4y-4z-y^2, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} =-\alpha y-4z-4x-z^2, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\alpha z-4x-4y-x^2,
\end{cases} 
$$

$$ 
\alpha=1.4.
$$

![The Halvorsen Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Halvorsen_Attractor.png)

## The Thomas Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =-\beta x+\sin y,\\
			\frac{\mathrm{d}y}{\mathrm{d}t} = -\beta y + \sin z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\beta z + \sin x,
\end{cases}
$$

$$ 
\beta=0.19.
$$

![The Thomas Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Thomas_Attractor.png)

## The ACT Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(x-y\right), \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = -4\alpha y +xz+\varsigma x^3, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\delta\alpha z +xy+\beta z^2,
\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\delta\\
			\varsigma
		\end{bmatrix}=
\begin{bmatrix}
			1.8\\
			-0.07\\
			1.5\\
			0.02
\end{bmatrix}.
$$

![The ACT Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_ACT_Attractor.png)

## The Hindmarsh—Rose Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = -\alpha x^3 +\beta x^2+y -z+\iota, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} =-\delta x^2-y+\varsigma, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \rho\left(\xi\left(x-\chi\right)-z\right),
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\iota\\
			\rho\\
			\xi\\
			\chi
\end{bmatrix}=
		\begin{bmatrix}
			1\\
			3\\
			1\\
			5\\
			3.25\\
			0.006\\
			4\\
			-1.6
		\end{bmatrix}.
$$

![The Hindmarsh—Rose Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Hindmarsh_Rose_Attractor.png)

## The Rucklidge Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =-\kappa x+\alpha y -yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = x, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -z+y^2,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\kappa
		\end{bmatrix}=
		\begin{bmatrix}
			6.7\\
			2
		\end{bmatrix}.
$$

![The Rucklidge Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Rucklidge_Attractor.png)

## The Arneodo Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\alpha x -\beta y -z+\varsigma x^3,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			-5.5\\
			3.5\\
			-1
		\end{bmatrix}.
$$

![The Arneodo Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Arneodo_Attractor.png)

## The 3-Cells CNN Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = -x+\alpha f(x)-\delta f(y)- \delta f(z), \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = -y-\delta f(x)+\beta f(y)-\varsigma f(z), \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -z -\delta f(x)+\varsigma f(y) + f(z),
		\end{cases}
$$

$$
f\left(\omega\right)=\frac{1}{2}\left(\left|\omega+1\right|-\left|\omega-1\right|\right),
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			1.24\\
			1.1\\
			4.4\\
			3.21
		\end{bmatrix}.
$$

![The 3-Cells CNN Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_3_Cells_CNN_Attractor.png)

## The Dadras Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =y-\rho x+\sigma yz,\\
			\frac{\mathrm{d}y}{\mathrm{d}t} = \xi y-xz+z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \varsigma xy-\varepsilon z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\rho\\
			\sigma\\
			\xi\\
			\varsigma\\
			\varepsilon
\end{bmatrix}=
	\begin{bmatrix}
			3\\
			2.7\\
			1.7\\
			2\\
			9
	\end{bmatrix}.
$$

![The Dadras Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Dadras_Attractor.png)

## The Rössler Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =-y-z,\\
			\frac{\mathrm{d}y}{\mathrm{d}t} = x+\alpha y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \beta+z\left(x-\varsigma\right),
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=\begin{bmatrix}
		0.1\\
		0.1\\
		14
		\end{bmatrix}.
$$

![The Rössler Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Rossler_Attractor.png)

## The Finance Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \left(\frac{1}{\beta}-\alpha\right)x+z+xy, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = -\beta y-x^2, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -x -\varsigma z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=\begin{bmatrix}
			0.001\\
			0.2\\
			1.1
		\end{bmatrix}.
$$

![The Finance Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Finance_Attractor.png)

## The Chen—Celikovsky Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha\left(y-x\right), \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-xz+\varsigma y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}= xy-\beta z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=\begin{bmatrix}
			36\\
			3\\
			20
		\end{bmatrix}.
$$

![The Chen—Celikovsky Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Chen_Celikovsky_Attractor.png)

## The Hadley Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = -y^2-z^2-\alpha x+\alpha\varsigma, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} =xy -\beta xz-y+\delta, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} =\beta xy+xz-z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			0.2\\
			4\\
			8\\
			1
		\end{bmatrix}.
$$

![The Hadley Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Hadley_Attractor.png)

## The Wang Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(x-y\right)-yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = -\beta y+xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} =-\varsigma z+\delta x+xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			0.977\\
			10\\
			4\\
			0.1
		\end{bmatrix}.
$$

![The Wang Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Wang_Attractor.png)

## The Wimol—Banlue Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =y-x, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = -z\tanh x, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\alpha+xy+|y|,
		\end{cases}
$$

$$ 
\alpha = 2.
$$

![The Wimol—Banlue Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Wimol_Banlue_Attractor.png)

## The Deng Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = z (\lambda x - \mu y )+ (2-z) \left[ \alpha x  \left( 1-\frac{x^2+y^2}{\rho^2} \right) -\beta y \right], \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = z ( \mu x +\lambda y) + (2-z) \left[ \alpha y \left(  1- \frac{x^2+y^2}{\rho^2} \right)+\beta x \right], \\
			\frac{\mathrm{d}z}{\mathrm{d}t}= \frac{1}{\varepsilon} \left[z ( (2-z) \left( \varphi (z-2)^2+\psi \right) - \delta x)\left(z+\xi \left( x^2+y^2 \right)-\eta \right)-\varepsilon \varsigma(z-1) \right],
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\xi \\
			\eta\\
			\rho \\
			\varepsilon\\
			\lambda\\
			\mu\\
			\varphi\\
			\psi
		\end{bmatrix}=
		\begin{bmatrix}
			2.8\\
			5\\
			1\\
			0.1\\
			0.05\\
			3.312\\
			10\\
			0.1\\
			-2\\
			1.155\\
			3\\
			0.8
		\end{bmatrix}.
$$

![The Deng Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Deng_Attractor.png)

## The Shimizu—Morioka Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=\left(1-z\right)x-\alpha y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=x^2-\beta z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			0.75\\
			0.45
		\end{bmatrix}.
$$

![The Shimizu—Morioka Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Shimizu_Morioka_Attractor.png)

## The Nose—Hoover Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-x+yz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=\alpha-y^2,
		\end{cases}
$$

$$ 
\alpha=1.5.
$$

![The Nose—Hoover Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Nose_Hoover_Attractor.png)

## The Wang—Sun Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =\alpha x +\varsigma yz,\\
			\frac{\mathrm{d}y}{\mathrm{d}t} = \beta x +\delta y -xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \varepsilon z +\xi xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\delta\\
			\varepsilon\\
			\xi\\
			\varsigma
		\end{bmatrix}=\begin{bmatrix}
			0.2\\
			-0.01\\
			-0.4\\
			-1\\
			-1\\
			1
		\end{bmatrix}.
$$

![The Wang—Sun Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Wang_Sun_Attractor.png)

## The Xing—Yun Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha\left(y-x\right)+yz^2, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=\beta\left(x+y\right)-xz^2, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=-\varsigma z+\varepsilon y +xyz,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\varepsilon
		\end{bmatrix}=
		\begin{bmatrix}
			50\\
			10\\
			13\\
			6
		\end{bmatrix}.
$$

![The Xing—Yun Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Xing_Yun_Attractor.png)

## The Lü—Chen Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=- \frac{\alpha\beta}{\alpha+\beta}x -yz+\varsigma, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=\alpha y +xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=\beta z+xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			-10\\
			-4\\
			18.1
		\end{bmatrix}.
$$

![The Lü—Chen Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Lu_Chen_Attractor.png)

## The Burke—Shaw Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-\alpha\left(x+y\right), \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-y-\alpha xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=\alpha xy +\beta,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			10\\
			4.272
		\end{bmatrix}.
$$

![The Burke—Shaw Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Burke_Shaw_Attractor.png)

## The Zhou—Chen Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha x+\beta y +yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} =\varsigma y-xz+\delta yz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} =\varepsilon z-xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\varepsilon
	\end{bmatrix}=
		\begin{bmatrix}
			2.97\\
			0.15\\
			-3\\
			1\\
			-8.78
		\end{bmatrix}.
$$

![The Zhou—Chen Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Zhou_Chen_Attractor.png)

## The Genesio—Tesi Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\varsigma x-\beta y-\alpha z+x^2,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			0.44\\
			1.1\\
			1
		\end{bmatrix}.
$$

![The Genesio—Tesi Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Genesio_Tesi_Attractor.png)

## The Yu—Wang Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(y-x\right), \\
			\frac{\mathrm{d}y}{\mathrm{d}t} =\beta x-\varsigma xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \exp{(xy)}-\delta z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			10\\
			40\\
			2\\
			2.5
		\end{bmatrix}.
$$

![The Yu—Wang Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Yu_Wang_Attractor.png)

## The Sakarya Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = -x+y+yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} =-x-y+\alpha xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = z-\beta xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			0.4\\
			0.3
		\end{bmatrix}.
$$

![The Sakarya Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sakarya_Attractor.png)

## The Chua Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha\left(y-x-\left(\varsigma x + \frac{1}{2}\left(\delta-\varsigma\right)\left(\left|x+1\right|-\left|x-1\right|\right)\right)\right), \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x-y+z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=-\beta y,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			\frac{78}{5}\\
			\frac{1279}{50}\\
			-\frac{5}{7}\\
			-\frac{8}{7}
		\end{bmatrix}.
$$

![The Chua Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Chua_Attractor.png)

## The Chua Cubic Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(y-x^3-\varsigma x\right), \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = x-y+z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\beta y,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			10\\
			16\\
			-0.143
		\end{bmatrix}.
$$

![The Chua Cubic Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Chua_Cubic_Attractor.png)

## The Modified Chua Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} =\alpha\left(y+\delta\sin{\left(\frac{\pi x}{2\varsigma}+\varepsilon\right)}\right), \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = x-y+z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = -\beta y,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\varepsilon
		\end{bmatrix}=
		\begin{bmatrix}
			10.82\\
			14.286\\
			1.3\\
			0.11\\
			0
		\end{bmatrix}.
$$

![The Modified Chua Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Modified_Chua_Attractor.png)

## The Muthuswamy—Chua Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-\frac{x}{3}+\frac{y}{2}-\frac{yz^2}{2}, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=y-\alpha z-yz,
		\end{cases}
$$

$$ 
\alpha=0.6.
$$

![The Muthuswamy—Chua Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Muthuswamy_Chua_Attractor.png)

## The Moore—Spiegel Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=-z-\left(\beta-\alpha+\alpha x^2\right)y-\beta x,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			100\\
			26
		\end{bmatrix}.
$$

![The Moore—Spiegel Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Moore_Spiegel_Attractor.png)

## The Coullet Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=\alpha x + \beta y + \varsigma z + \delta x^3,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta
		\end{bmatrix}=
		\begin{bmatrix}
			0.8\\
			-1.1\\
			-0.45\\
			-1
		\end{bmatrix}.
$$

![The Coullet Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Coullet_Attractor.png)

## The Sprott—Linz A Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-x+yz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1-y^2
		\end{cases}
$$

![The Sprott—Linz A Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_A_Attractor.png)

## The Sprott—Linz B Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x-y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1-xy
		\end{cases}
$$

![The Sprott—Linz B Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_B_Attractor.png)

## The Sprott—Linz C Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x-y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1-x^2
		\end{cases}
$$

![The Sprott—Linz C Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_C_Attractor.png)

## The Sprott—Linz D Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x+z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=xz + \alpha y^2,
		\end{cases}
$$

$$ 
\alpha=3.
$$

![The Sprott—Linz D Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_D_Attractor.png)

## The Sprott—Linz E Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x^2-y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1-\alpha x,
		\end{cases}
$$

$$ 
\alpha=4.
$$

![The Sprott—Linz E Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_E_Attractor.png)

## The Sprott—Linz F Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y+z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-x+\alpha y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=x^2-z,
		\end{cases}
$$

$$ 
\alpha=\frac{1}{2}.
$$

![The Sprott—Linz F Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_F_Attractor.png)

## The Sprott—Linz G Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha x + z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=xz-y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=-x+y,
		\end{cases}
$$

$$ 
\alpha=\frac{2}{5}.
$$

![The Sprott—Linz G Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_G_Attractor.png)

## The Sprott—Linz H Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-y+z^2, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x+\alpha y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=x-z,
		\end{cases}
$$

$$ 
\alpha=\frac{1}{2}.
$$

![The Sprott—Linz H Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_H_Attractor.png)

## The Sprott—Linz I Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x+z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=x+y^2-z,
		\end{cases}
$$

$$ 
\alpha=-\frac{1}{5}.
$$

![The Sprott—Linz I Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_I_Attractor.png)

## The Sprott—Linz J Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-\alpha y +z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}= -x+y+y^2,
		\end{cases}
$$

$$ 
\alpha=2.
$$

![The Sprott—Linz J Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_J_Attractor.png)

## The Sprott—Linz K Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=xy-z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x-y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=x+\alpha z,
		\end{cases}
$$

$$ 
\alpha=\frac{3}{10}.
$$

![The Sprott—Linz K Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_K_Attractor.png)

## The Sprott—Linz L Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y+\alpha z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=\beta x^2 - y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1-x,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			3.9 \\
			0.9
		\end{bmatrix}.
$$

![The Sprott—Linz L Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_L_Attractor.png)

## The Sprott—Linz M Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-x^2-y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=\alpha + \alpha x+y,
		\end{cases}
$$

$$ 
\alpha=\frac{17}{10}.
$$

![The Sprott—Linz M Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_M_Attractor.png)

## The Sprott—Linz N Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-\alpha y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x+z^2, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1+y-\alpha z,
		\end{cases}
$$

$$ 
\alpha=2.
$$

![The Sprott—Linz N Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_N_Attractor.png)

## The Sprott—Linz O Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x-z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=x+xz+\alpha y,
		\end{cases}
$$

$$ 
\alpha=\frac{27}{10}.
$$

![The Sprott—Linz O Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_O_Attractor.png)

## The Sprott—Linz P Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha y + z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-x+y^2, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=x+y,
		\end{cases}
$$

$$ 
\alpha=\frac{27}{10}.
$$

![The Sprott—Linz P Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_P_Attractor.png)

## The Sprott—Linz Q Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-z, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x - y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=\alpha x +y^2+\beta z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			3.4 \\
			0.5
		\end{bmatrix}.
$$

![The Sprott—Linz Q Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_Q_Attractor.png)

## The Sprott—Linz R Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=\alpha -y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=\beta +z, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=xy-z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			0.9 \\
			0.4
		\end{bmatrix}.
$$

![The Sprott—Linz R Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_R_Attractor.png)

## The Sprott—Linz S Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-x+\alpha y, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=x +z^2, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1+x,
		\end{cases}
$$

$$ 
\alpha=4.
$$

![The Sprott—Linz S Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Sprott_Linz_S_Attractor.png)

## The TSUCS1 Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(y-x\right)+\varsigma xz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = \varepsilon y-xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \beta z+xy-\delta x^2,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\varepsilon
		\end{bmatrix} = 
		\begin{bmatrix}
			40\\
			0.833\\
			0.5\\
			0.65\\
			20
		\end{bmatrix}.
$$

![The TSUCS1 Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_TSUCS1_Attractor.png)

## The TSUCS2 Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(y-x\right)+\delta xz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = \varsigma x-xz+\xi y, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \beta z+xy-\varepsilon x^2,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\varepsilon\\
			\xi
		\end{bmatrix} = 
		\begin{bmatrix}
			40\\
			1.833\\
			55\\
			0.16\\
			20\\
			0.65
		\end{bmatrix}.
$$

![The TSUCS2 Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_TSUCS2_Attractor.png)

## The Rikitake Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-\beta x + zy, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-\beta y + \left(z-\alpha\right)x, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=1-xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			5 \\
			2
		\end{bmatrix}.
$$

![The Rikitake Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Rikitake_Attractor.png)

## The Newton—Leipnik Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t}=-\alpha x+y+10yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t}=-x-0.4y+5xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t}=\beta z-5xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			0.4 \\
			0.175
		\end{bmatrix}.
$$

![The Newton—Leipnik Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Newton_Leipnik_Attractor.png)

## The Four—Wing 1 Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha x -\beta yz, \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = -\varsigma y +xz, \\
			\frac{\mathrm{d}z}{\mathrm{d}t} = \varepsilon x -\delta z +xy,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\varepsilon
		\end{bmatrix}=
		\begin{bmatrix}
			4\\
			6\\
			10\\
			5\\
			1
		\end{bmatrix}.
$$

![The Four—Wing 1 Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Four_Wing_1_Attractor.png)

## The Four—Wing 2 Attractor
 
$$ 
\begin{cases}
			\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha x+\beta y+\varsigma yz \\
			\frac{\mathrm{d}y}{\mathrm{d}t} = \delta y - xz \\
			\frac{\mathrm{d}z}{\mathrm{d}t}= \varepsilon z +\xi x y,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma\\
			\delta\\
			\varepsilon\\
			\xi
		\end{bmatrix}=
		\begin{bmatrix}
			-14\\
			5\\
			1\\
			16\\
			-43\\
			1
		\end{bmatrix}.
$$

![The Four—Wing 2 Attractor](https://github.com/whydenyscry/Dynamics-of-Nonlinear-Attractors/blob/main/images_png/The_Four_Wing_2_Attractor.png)
