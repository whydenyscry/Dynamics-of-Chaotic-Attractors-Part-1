# Dynamics of Chaotic 3D Attractors: Part 1

Gallery of more than 100 three-dimensional attractors plotted by me in MATLAB based on [General Algorithm of The Explicit Runge—Kutta Method](https://github.com/whydenyscry/General-algorithm-of-the-explicit-Runge-Kutta-method).

A fair number of attractors I found on [Jürgen Mayer's personal website](http://www.3d-meier.de/), you can find references to primary sources there, so if some attractors lack references, those attractors were found there.
For attractors that have been found already by me, I will leave a reference to the primary source. 

The plots are also available on Pinterest and Behance:

<a href="https://www.pinterest.com/whydenyscry/when-math-and-art-came-face-to-face/" target="_blank"><img src="https://brandslogos.com/wp-content/uploads/images/large/pinterest-logo-black-and-white-4.png" style="width: 50px; height: 50px;"></a>
<a href="https://www.behance.net/whydenyscry" target="_blank"><img src="https://www.iconsdb.com/icons/preview/white/behance-5-xxl.png" style="width: 50px; height: 50px;"></a>

P.S. _I give the title of attractors as the surnames of the authors of the paper where the attractor was found. For papers with a large number of authors, I take only the first 3 surnames._


## Relevant Repositories:
- [Dynamics of Chaotic 3D Attractors: Part 2](https://github.com/whydenyscry/Dynamics-of-Chaotic-Attractors-Part-2)
- [Dynamics Of Hyperchaotic High-Dimensional Attractors](https://github.com/whydenyscry/Dynamics-of-Hyperchaotic-Attractors)

## The Lorenz Attractor
 
 $$ 
\begin{cases}
    \dot{x} = \sigma(y - x), \\
    \dot{y} = x(\rho - z) - y, \\
    \dot{z} = xy - \beta z,
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
		\dfrac{8}{3}
	\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Lorenz_Attractor.png"/>
</p>

## The Lorenz Mod 1 Attractor
 
$$ 
\begin{cases}
			\dot{x}=-\alpha x+y^2-z^2+\alpha\varsigma, \\
			\dot{y}=x\left(y-\beta z\right)+\delta, \\
			\dot{z}=-z+x\left(\beta y+z\right),
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

<p align="center">
  <img src="images_png/The_Lorenz_Mod_1_Attractor.png"/>
</p>

## The Lorenz Mod 2 Attractor
 
$$ 
\begin{cases}
			\dot{x}=-\alpha x+y^2-z^2+\alpha\varsigma, \\
			\dot{y}=x\left(y-\beta z\right)+\delta, \\
			\dot{z}=-z+x\left(\beta y+z\right),
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

<p align="center">
  <img src="images_png/The_Lorenz_Mod_2_Attractor.png"/>
</p>

## The Lotka—Volterra Attractor
 
$$ 
\begin{cases}
			\dot{x}=x-xy+\varsigma x^2-\alpha z x^2, \\
			\dot{y}=-y+xy, \\
			\dot{z}=-\beta z +\alpha z x^2,
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

<p align="center">
  <img src="images_png/The_Lotka_Volterra_Attractor.png"/>
</p>

## The Aizawa Attractor
 
$$ 
\begin{cases}
			\dot{x} = (z - \beta)x - \delta y, \\
			\dot{y} = \delta x + (z - \beta)y, \\
			\dot{z} = \varsigma + \alpha z - \dfrac{z^3}{3} - \left(x^2 + y^2\right)\left(1 + \varepsilon z\right) + \xi zx^3,
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

<p align="center">
  <img src="images_png/The_Aizawa_Attractor.png"/>
</p>

## The Tamari Attractor
 
$$ \begin{cases}
			\dot{x} =\left(x-\alpha y\right)\cos z-\beta y \sin z, \\
			\dot{y} = \left(x+\gamma y\right)\sin z +\delta y\cos z, \\
			\dot{z} = \varepsilon +\kappa z+\xi\arctan\left(\dfrac{1-\varsigma}{1-\omega}xy\right),
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

<p align="center">
  <img src="images_png/The_Tamari_Attractor.png"/>
</p>

## The Halvorsen Attractor
 
$$ 
\begin{cases}
			\dot{x} = -\alpha x-4y-4z-y^2, \\
			\dot{y} =-\alpha y-4z-4x-z^2, \\
			\dot{z} = -\alpha z-4x-4y-x^2,
\end{cases} 
$$

$$ 
\alpha=1.4.
$$

<p align="center">
  <img src="images_png/The_Halvorsen_Attractor.png"/>
</p>

## The Thomas Attractor
 
$$ 
\begin{cases}
			\dot{x} =-\beta x+\sin y,\\
			\dot{y} = -\beta y + \sin z, \\
			\dot{z} = -\beta z + \sin x,
\end{cases}
$$

$$ 
\beta=0.19.
$$

<p align="center">
  <img src="images_png/The_Thomas_Attractor.png"/>
</p>

## The ACT Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha\left(x-y\right), \\
			\dot{y} = -4\alpha y +xz+\varsigma x^3, \\
			\dot{z} = -\delta\alpha z +xy+\beta z^2,
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

<p align="center">
  <img src="images_png/The_ACT_Attractor.png"/>
</p>

## The Hindmarsh—Rose Attractor
 
$$ 
\begin{cases}
			\dot{x} = -\alpha x^3 +\beta x^2+y -z+\iota, \\
			\dot{y} =-\delta x^2-y+\varsigma, \\
			\dot{z} = \rho\left(\xi\left(x-\chi\right)-z\right),
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

<p align="center">
  <img src="images_png/The_Hindmarsh_Rose_Attractor.png"/>
</p>

## The Rucklidge Attractor
 
$$ 
\begin{cases}
			\dot{x} =-\kappa x+\alpha y -yz, \\
			\dot{y} = x, \\
			\dot{z} = -z+y^2,
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

<p align="center">
  <img src="images_png/The_Rucklidge_Attractor.png"/>
</p>

## The Arneodo Attractor
 
$$ 
\begin{cases}
			\dot{x} =y, \\
			\dot{y} = z, \\
			\dot{z} = -\alpha x -\beta y -z+\varsigma x^3,
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

<p align="center">
  <img src="images_png/The_Arneodo_Attractor.png"/>
</p>

## The 3-Cells CNN Attractor
 
$$ 
\begin{cases}
			\dot{x} = -x+\alpha f(x)-\delta f(y)- \delta f(z), \\
			\dot{y} = -y-\delta f(x)+\beta f(y)-\varsigma f(z), \\
			\dot{z} = -z -\delta f(x)+\varsigma f(y) + f(z),
		\end{cases}
$$

$$
f\left(\omega\right)=\dfrac{1}{2}\left(\left|\omega+1\right|-\left|\omega-1\right|\right),
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

<p align="center">
  <img src="images_png/The_3_Cells_CNN_Attractor.png"/>
</p>

## The Dadras Attractor
 
$$ 
\begin{cases}
			\dot{x} =y-\rho x+\sigma yz,\\
			\dot{y} = \xi y-xz+z, \\
			\dot{z} = \varsigma xy-\varepsilon z,
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

<p align="center">
  <img src="images_png/The_Dadras_Attractor.png"/>
</p>

## The Rössler Attractor
 
$$ 
\begin{cases}
			\dot{x} =-y-z,\\
			\dot{y} = x+\alpha y, \\
			\dot{z} = \beta+z\left(x-\varsigma\right),
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

<p align="center">
  <img src="images_png/The_Rossler_Attractor.png"/>
</p>

## The Finance Attractor
 
$$ 
\begin{cases}
			\dot{x} = \left(\dfrac{1}{\beta}-\alpha\right)x+z+xy, \\
			\dot{y} = -\beta y-x^2, \\
			\dot{z} = -x -\varsigma z,
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

<p align="center">
  <img src="images_png/The_Finance_Attractor.png"/>
</p>

## The Chen—Celikovsky Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha\left(y-x\right), \\
			\dot{y}=-xz+\varsigma y, \\
			\dot{z}= xy-\beta z,
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

<p align="center">
  <img src="images_png/The_Chen_Celikovsky_Attractor.png"/>
</p>

## The Hadley Attractor
 
$$ 
\begin{cases}
			\dot{x} = -y^2-z^2-\alpha x+\alpha\varsigma, \\
			\dot{y} =xy -\beta xz-y+\delta, \\
			\dot{z} =\beta xy+xz-z,
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

<p align="center">
  <img src="images_png/The_Hadley_Attractor.png"/>
</p>

## The Wang Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha\left(x-y\right)-yz, \\
			\dot{y} = -\beta y+xz, \\
			\dot{z} =-\varsigma z+\delta x+xy,
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

<p align="center">
  <img src="images_png/The_Wang_Attractor.png"/>
</p>

## The Wimol—Banlue Attractor
 
$$ 
\begin{cases}
			\dot{x} =y-x, \\
			\dot{y} = -z\tanh x, \\
			\dot{z} = -\alpha+xy+|y|,
		\end{cases}
$$

$$ 
\alpha = 2.
$$

<p align="center">
  <img src="images_png/The_Wimol_Banlue_Attractor.png"/>
</p>

## The Deng Attractor
 
$$ 
\begin{cases}
			\dot{x} = z (\lambda x - \mu y )+ (2-z) \left[ \alpha x  \left( 1-\dfrac{x^2+y^2}{\rho^2} \right) -\beta y \right], \\
			\dot{y} = z ( \mu x +\lambda y) + (2-z) \left[ \alpha y \left(  1- \dfrac{x^2+y^2}{\rho^2} \right)+\beta x \right], \\
			\dot{z}= \dfrac{1}{\varepsilon} \left[z ( (2-z) \left( \varphi (z-2)^2+\psi \right) - \delta x)\left(z+\xi \left( x^2+y^2 \right)-\eta \right)-\varepsilon \varsigma(z-1) \right],
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

<p align="center">
  <img src="images_png/The_Deng_Attractor.png"/>
</p>

## The Shimizu—Morioka Attractor
 
$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=\left(1-z\right)x-\alpha y, \\
			\dot{z}=x^2-\beta z,
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

<p align="center">
  <img src="images_png/The_Shimizu_Morioka_Attractor.png"/>
</p>

## The Nose—Hoover Attractor
 
$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=-x+yz, \\
			\dot{z}=\alpha-y^2,
		\end{cases}
$$

$$ 
\alpha=1.5.
$$

<p align="center">
  <img src="images_png/The_Nose_Hoover_Attractor.png"/>
</p>

## The Wang—Sun Attractor
 
$$ 
\begin{cases}
			\dot{x} =\alpha x +\varsigma yz,\\
			\dot{y} = \beta x +\delta y -xz, \\
			\dot{z} = \varepsilon z +\xi xy,
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

<p align="center">
  <img src="images_png/The_Wang_Sun_Attractor.png"/>
</p>

## The Xing—Yun Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha\left(y-x\right)+yz^2, \\
			\dot{y}=\beta\left(x+y\right)-xz^2, \\
			\dot{z}=-\varsigma z+\varepsilon y +xyz,
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

<p align="center">
  <img src="images_png/The_Xing_Yun_Attractor.png"/>
</p>

## The Lü—Chen Attractor
 
$$ 
\begin{cases}
			\dot{x}=- \dfrac{\alpha\beta}{\alpha+\beta}x -yz+\varsigma, \\
			\dot{y}=\alpha y +xz, \\
			\dot{z}=\beta z+xy,
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

<p align="center">
  <img src="images_png/The_Lu_Chen_Attractor.png"/>
</p>

## The Burke—Shaw Attractor
 
$$ 
\begin{cases}
			\dot{x}=-\alpha\left(x+y\right), \\
			\dot{y}=-y-\alpha xz, \\
			\dot{z}=\alpha xy +\beta,
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

<p align="center">
  <img src="images_png/The_Burke_Shaw_Attractor.png"/>
</p>

## The Zhou—Chen Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha x+\beta y +yz, \\
			\dot{y} =\varsigma y-xz+\delta yz, \\
			\dot{z} =\varepsilon z-xy,
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

<p align="center">
  <img src="images_png/The_Zhou_Chen_Attractor.png"/>
</p>

## The Genesio—Tesi Attractor
 
$$ 
\begin{cases}
			\dot{x} = y, \\
			\dot{y} = z, \\
			\dot{z} = -\varsigma x-\beta y-\alpha z+x^2,
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

<p align="center">
  <img src="images_png/The_Genesio_Tesi_Attractor.png"/>
</p>

## The Yu—Wang Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha\left(y-x\right), \\
			\dot{y} =\beta x-\varsigma xz, \\
			\dot{z} = \exp{(xy)}-\delta z,
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

<p align="center">
  <img src="images_png/The_Yu_Wang_Attractor.png"/>
</p>

## The Sakarya Attractor
 
$$ 
\begin{cases}
			\dot{x} = -x+y+yz, \\
			\dot{y} =-x-y+\alpha xz, \\
			\dot{z} = z-\beta xy,
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

<p align="center">
  <img src="images_png/The_Sakarya_Attractor.png"/>
</p>

## The Chua Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha\left(y-x-\left(\varsigma x + \dfrac{1}{2}\left(\delta-\varsigma\right)\left(\left|x+1\right|-\left|x-1\right|\right)\right)\right), \\
			\dot{y}=x-y+z, \\
			\dot{z}=-\beta y,
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
			\dfrac{78}{5}\\
			\dfrac{1279}{50}\\
			-\dfrac{5}{7}\\
			-\dfrac{8}{7}
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Chua_Attractor.png"/>
</p>

## The Chua Cubic Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha\left(y-x^3-\varsigma x\right), \\
			\dot{y} = x-y+z, \\
			\dot{z} = -\beta y,
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

<p align="center">
  <img src="images_png/The_Chua_Cubic_Attractor.png"/>
</p>

## The Modified Chua Attractor
 
$$ 
\begin{cases}
			\dot{x} =\alpha\left(y+\delta\sin{\left(\dfrac{\pi x}{2\varsigma}+\varepsilon\right)}\right), \\
			\dot{y} = x-y+z, \\
			\dot{z} = -\beta y,
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

<p align="center">
  <img src="images_png/The_Modified_Chua_Attractor.png"/>
</p>

## The Muthuswamy—Chua Attractor
 
$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=-\dfrac{x}{3}+\dfrac{y}{2}-\dfrac{yz^2}{2}, \\
			\dot{z}=y-\alpha z-yz,
		\end{cases}
$$

$$ 
\alpha=0.6.
$$

<p align="center">
  <img src="images_png/The_Muthuswamy_Chua_Attractor.png"/>
</p>

## The Moore—Spiegel Attractor
 
$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=z, \\
			\dot{z}=-z-\left(\beta-\alpha+\alpha x^2\right)y-\beta x,
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

<p align="center">
  <img src="images_png/The_Moore_Spiegel_Attractor.png"/>
</p>

## The Coullet Attractor
 
$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=z, \\
			\dot{z}=\alpha x + \beta y + \varsigma z + \delta x^3,
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

<p align="center">
  <img src="images_png/The_Coullet_Attractor.png"/>
</p>

## The Sprott A Attractor
 
$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=-x+yz, \\
			\dot{z}=1-y^2
		\end{cases}
$$

<p align="center">
  <img src="images_png/The_Sprott_A_Attractor.png"/>
</p>

## The Sprott B Attractor
 
$$ 
\begin{cases}
			\dot{x}=yz, \\
			\dot{y}=x-y, \\
			\dot{z}=1-xy
		\end{cases}
$$

<p align="center">
  <img src="images_png/The_Sprott_B_Attractor.png"/>
</p>

## The Sprott C Attractor
 
$$ 
\begin{cases}
			\dot{x}=yz, \\
			\dot{y}=x-y, \\
			\dot{z}=1-x^2
		\end{cases}
$$

<p align="center">
  <img src="images_png/The_Sprott_C_Attractor.png"/>
</p>

## The Sprott D Attractor
 
$$ 
\begin{cases}
			\dot{x}=-y, \\
			\dot{y}=x+z, \\
			\dot{z}=xz + \alpha y^2,
		\end{cases}
$$

$$ 
\alpha=3.
$$

<p align="center">
  <img src="images_png/The_Sprott_D_Attractor.png"/>
</p>

## The Sprott E Attractor
 
$$ 
\begin{cases}
			\dot{x}=yz, \\
			\dot{y}=x^2-y, \\
			\dot{z}=1-\alpha x,
		\end{cases}
$$

$$ 
\alpha=4.
$$

<p align="center">
  <img src="images_png/The_Sprott_E_Attractor.png"/>
</p>

## The Sprott F Attractor
 
$$ 
\begin{cases}
			\dot{x}=y+z, \\
			\dot{y}=-x+\alpha y, \\
			\dot{z}=x^2-z,
		\end{cases}
$$

$$ 
\alpha=\dfrac{1}{2}.
$$

<p align="center">
  <img src="images_png/The_Sprott_F_Attractor.png"/>
</p>

## The Sprott G Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha x + z, \\
			\dot{y}=xz-y, \\
			\dot{z}=-x+y,
		\end{cases}
$$

$$ 
\alpha=\dfrac{2}{5}.
$$

<p align="center">
  <img src="images_png/The_Sprott_G_Attractor.png"/>
</p>

## The Sprott H Attractor
 
$$ 
\begin{cases}
			\dot{x}=-y+z^2, \\
			\dot{y}=x+\alpha y, \\
			\dot{z}=x-z,
		\end{cases}
$$

$$ 
\alpha=\dfrac{1}{2}.
$$

<p align="center">
  <img src="images_png/The_Sprott_H_Attractor.png"/>
</p>

## The Sprott I Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha y, \\
			\dot{y}=x+z, \\
			\dot{z}=x+y^2-z,
		\end{cases}
$$

$$ 
\alpha=-\dfrac{1}{5}.
$$

<p align="center">
  <img src="images_png/The_Sprott_I_Attractor.png"/>
</p>

## The Sprott J Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha z, \\
			\dot{y}=-\alpha y +z, \\
			\dot{z}= -x+y+y^2,
		\end{cases}
$$

$$ 
\alpha=2.
$$

<p align="center">
  <img src="images_png/The_Sprott_J_Attractor.png"/>
</p>

## The Sprott K Attractor
 
$$ 
\begin{cases}
			\dot{x}=xy-z, \\
			\dot{y}=x-y, \\
			\dot{z}=x+\alpha z,
		\end{cases}
$$

$$ 
\alpha=\dfrac{3}{10}.
$$

<p align="center">
  <img src="images_png/The_Sprott_K_Attractor.png"/>
</p>

## The Sprott L Attractor
 
$$ 
\begin{cases}
			\dot{x}=y+\alpha z, \\
			\dot{y}=\beta x^2 - y, \\
			\dot{z}=1-x,
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

<p align="center">
  <img src="images_png/The_Sprott_L_Attractor.png"/>
</p>

## The Sprott M Attractor
 
$$ 
\begin{cases}
			\dot{x}=-z, \\
			\dot{y}=-x^2-y, \\
			\dot{z}=\alpha + \alpha x+y,
		\end{cases}
$$

$$ 
\alpha=\dfrac{17}{10}.
$$

<p align="center">
  <img src="images_png/The_Sprott_M_Attractor.png"/>
</p>

## The Sprott N Attractor
 
$$ 
\begin{cases}
			\dot{x}=-\alpha y, \\
			\dot{y}=x+z^2, \\
			\dot{z}=1+y-\alpha z,
		\end{cases}
$$

$$ 
\alpha=2.
$$

<p align="center">
  <img src="images_png/The_Sprott_N_Attractor.png"/>
</p>

## The Sprott O Attractor
 
$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=x-z, \\
			\dot{z}=x+xz+\alpha y,
		\end{cases}
$$

$$ 
\alpha=\dfrac{27}{10}.
$$

<p align="center">
  <img src="images_png/The_Sprott_O_Attractor.png"/>
</p>

## The Sprott P Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha y + z, \\
			\dot{y}=-x+y^2, \\
			\dot{z}=x+y,
		\end{cases}
$$

$$ 
\alpha=\dfrac{27}{10}.
$$

<p align="center">
  <img src="images_png/The_Sprott_P_Attractor.png"/>
</p>

## The Sprott Q Attractor
 
$$ 
\begin{cases}
			\dot{x}=-z, \\
			\dot{y}=x - y, \\
			\dot{z}=\alpha x +y^2+\beta z,
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

<p align="center">
  <img src="images_png/The_Sprott_Q_Attractor.png"/>
</p>

## The Sprott R Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha -y, \\
			\dot{y}=\beta +z, \\
			\dot{z}=xy-z,
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

<p align="center">
  <img src="images_png/The_Sprott_R_Attractor.png"/>
</p>

## The Sprott S Attractor
 
$$ 
\begin{cases}
			\dot{x}=-x+\alpha y, \\
			\dot{y}=x +z^2, \\
			\dot{z}=1+x,
		\end{cases}
$$

$$ 
\alpha=4.
$$

<p align="center">
  <img src="images_png/The_Sprott_S_Attractor.png"/>
</p>

## The TSUCS1 Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha\left(y-x\right)+\varsigma xz, \\
			\dot{y} = \varepsilon y-xz, \\
			\dot{z} = \beta z+xy-\delta x^2,
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

<p align="center">
  <img src="images_png/The_TSUCS1_Attractor.png"/>
</p>

## The TSUCS2 Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha\left(y-x\right)+\delta xz, \\
			\dot{y} = \varsigma x-xz+\xi y, \\
			\dot{z} = \beta z+xy-\varepsilon x^2,
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

<p align="center">
  <img src="images_png/The_TSUCS2_Attractor.png"/>
</p>

## The Rikitake Attractor
 
$$ 
\begin{cases}
			\dot{x}=-\beta x + zy, \\
			\dot{y}=-\beta y + \left(z-\alpha\right)x, \\
			\dot{z}=1-xy,
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

<p align="center">
  <img src="images_png/The_Rikitake_Attractor.png"/>
</p>

## The Newton—Leipnik Attractor
 
$$ 
\begin{cases}
			\dot{x}=-\alpha x+y+10yz, \\
			\dot{y}=-x-0.4y+5xz, \\
			\dot{z}=\beta z-5xy,
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

<p align="center">
  <img src="images_png/The_Newton_Leipnik_Attractor.png"/>
</p>

## The Four—Wing 1 Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha x -\beta yz, \\
			\dot{y} = -\varsigma y +xz, \\
			\dot{z} = \varepsilon x -\delta z +xy,
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

<p align="center">
  <img src="images_png/The_Four_Wing_1_Attractor.png"/>
</p>

## The Four—Wing 2 Attractor
 
$$ 
\begin{cases}
			\dot{x} = \alpha x+\beta y+\varsigma yz \\
			\dot{y} = \delta y - xz \\
			\dot{z}= \varepsilon z +\xi x y,
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

<p align="center">
  <img src="images_png/The_Four_Wing_2_Attractor.png"/>
</p>

## The Four—Wing 3 Attractor
 
$$ 
\begin{cases}
			\dot{x}=x+y+yz, \\
			\dot{y}=yz-xz, \\
			\dot{z}=1-\alpha xy -z
		\end{cases}
$$

$$ 
\alpha = 1.
$$

<p align="center">
  <img src="images_png/The_Four_Wing_3_Attractor.png"/>
</p>

## The Zhou Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha\left(y-x\right), \\
			\dot{y}=\beta x - xz, \\
			\dot{z}=xy+\varsigma z,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			10 \\
			16\\
			-1
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Zhou_Attractor.png"/>
</p>

## The Elhadj—Sprott Attractor
 
$$ 
\begin{cases}
			\dot{x}=\alpha\left(y-x\right), \\
			\dot{y}=-\alpha x -\beta yz, \\
			\dot{z}=-\varsigma+y^2,
		\end{cases}
$$

$$ 
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			40 \\
			33\\
			10
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Elhadj_Sprott_Attractor.png"/>
</p>

## The Sprott—Jafari Attractor
**Reference:**\
[Jafari, S., Sprott, J. C., & Nazarimehr, F. (2015). Recent new examples of hidden attractors. The European Physical Journal Special Topics, 224(8), 1469–1476.](https://doi.org/10.1140/epjst/e2015-02472-1)

$$ 
\begin{cases}
			\dot{x} = y,	\\
			\dot{y} = -x+yz, \\
			\dot{z}= z+\alpha x^2-y^2-\beta,
		\end{cases}
$$

$$
\begin{bmatrix}
			\alpha\\
			\beta
		\end{bmatrix}=
		\begin{bmatrix}
			8.888\\
			4
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Jafari_Attractor.png"/>
</p>

## The Sprott Strange Multifractal Attractor
**Reference:**\
[Sprott, J. (2020). Do We Need More Chaos Examples?. Chaos Theory and Applications, 2(2), 49-51.](https://dergipark.org.tr/en/pub/chaos/issue/54264/735400)

$$ 
\begin{cases}
			\dot{x}=y, \\
			\dot{y}=-x-\text{sgn}(z) y, \\
			\dot{z}=y^2-\exp\left(-x^2\right)
		\end{cases}
$$

<p align="center">
  <img src="images_png/The_Sprott_Strange_Multifractal_Attractor.png"/>
</p>

## The Liu Attractor
**Reference:**\
[Liu, C. (2009). A novel chaotic attractor. Chaos, Solitons & Fractals, 39(3), 1037–1045.](https://doi.org/10.1016/j.chaos.2007.04.025)

$$ 
\begin{cases}
			\dot{x} = \alpha\left(y-x+yz\right),	\\
			\dot{y} = \beta y - \varepsilon xz, \\
			\dot{z}= \varsigma y-\delta z,
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
			1\\
			2.5\\
			1\\
			4\\
			1
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Liu_Attractor.png"/>
</p>

## The Sundarapandian—Pehlivan Attractor
**Reference:**\
[Sundarapandian, V., & Pehlivan, I. (2012). Analysis, control, synchronization, and circuit design of a novel chaotic system. Mathematical and Computer Modelling, 55(7-8), 1904–1915.](https://doi.org/10.1016/j.mcm.2011.11.048)

$$ 
\begin{cases}
			\dot{x} = \alpha y -x,	\\
			\dot{y} = -\beta x - z, \\
			\dot{z}= \varsigma z + xy^2-x,
		\end{cases}
$$

$$
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			1\\
			0.46\\
			0.46
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sundarapandian_Pehlivan_Attractor.png"/>
</p>

## The Sundarapandian Attractor
**Reference:**\
[Sundarapandian, V. (2013). Analysis and anti - synchronization of a novel chaotic system via active and adaptive controllers. Journal of Engineering Science and Technology Review, 6(4), 45–52.](https://doi.org/10.25103/jestr.064.06)

$$ 
\begin{cases}
			\dot{x} = \alpha\left(y -x\right)+yz,	\\
			\dot{y} = \beta x +\varsigma y -xz, \\
			\dot{z}= -\delta z +x^2,
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
			21.5\\
			20.6\\
			11\\
			6.4
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sundarapandian_Attractor.png"/>
</p>

## The Pehlivan Attractor
**Reference:**\
[Pehlivan, I. (2011). Four-scroll stellate new chaotic system. Optoelectronics and Advanced Materials - Rapid Communications - OAM-RC - INOE 2000.](https://oam-rc.inoe.ro/articles/four-scroll-stellate-new-chaotic-system/)

$$ 
\begin{cases}
			\dot{x} = -\alpha x + y + yz,	\\
			\dot{y} = x-\alpha y +\beta xz, \\
			\dot{z}= \varsigma z - \beta x y,
		\end{cases}
$$

$$
\begin{bmatrix}
			\alpha\\
			\beta\\
			\varsigma
		\end{bmatrix}=
		\begin{bmatrix}
			4\\
			0.5\\
			0.6
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Pehlivan_Attractor.png"/>
</p>

## The Vaidyanathan Hyperbolic Sinusoidal Attractor
**Reference:**\
[Vaidyanathan, S. (2013). Analysis and Adaptive Synchronization of Two Novel Chaotic Systems with Hyperboli c Sinusoidal and Cosinusoidal Nonlinearity and Unknown Parameters. Journal of Engineering Science and Technology Review, 6(4), 53–65. ](https://doi.org/10.25103/jestr.064.07)

$$ 
\begin{cases}
			\dot{x} = \alpha\left(y-x\right)+yz,	\\
			\dot{y} = \beta x - \varsigma xz, \\
			\dot{z}=-\delta z + \sinh\left(xy\right),
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
			92\\
			2\\
			10
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Vaidyanathan_Hyperbolic_Sinusoidal_Attractor.png"/>
</p>

## The Vaidyanathan Hyperbolic Cosinusoidal Attractor
**Reference:**\
[Vaidyanathan, S. (2013). Analysis and Adaptive Synchronization of Two Novel Chaotic Systems with Hyperboli c Sinusoidal and Cosinusoidal Nonlinearity and Unknown Parameters. Journal of Engineering Science and Technology Review, 6(4), 53–65. ](https://doi.org/10.25103/jestr.064.07)

$$ 
\begin{cases}
			\dot{x} = \alpha\left(y-x\right)+yz,	\\
			\dot{y} = \beta x - \varsigma xz, \\
			\dot{z}=-\delta z + \cosh\left(xy\right),
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
			98\\
			2\\
			10
		\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Vaidyanathan_Hyperbolic_Cosinusoidal_Attractor.png"/>
</p>

## The Neamah—Shukur Attractor
**Reference:**\
[Neamah, A. A., & Shukur, A. A. (2023). A novel conservative chaotic system involved in hyperbolic functions and its application to design an efficient colour image encryption scheme. Symmetry, 15(8), 1511.](https://doi.org/10.3390/sym15081511)

$$ 
\begin{cases}
	\dot{x} = y,	\\
	\dot{y} =-x-yz, \\
	\dot{z}= \cosh y-1-\alpha\cos x^2-\beta\cos y,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	1\\
	0.3
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Neamah_Shukur_Attractor.png"/>
</p>

## The Li—Ou Attractor
**Reference:**\
[Li, X., & Ou, Q. (2010). Dynamical properties and simulation of a new Lorenz-like chaotic system. Nonlinear Dynamics, 65(3), 255–270.](https://doi.org/10.1007/s11071-010-9887-z)

$$ 
\begin{cases}
	\dot{x} = \alpha\left(y-x\right),	\\
	\dot{y} = \varsigma y-xz, \\
	\dot{z}=-\beta z + \delta x^2 +\varepsilon xy,
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
	10\\
	3\\
	6\\
	1\\
	0
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Li_Ou_Attractor.png"/>
</p>

## The Sprott—Li Chaotic Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = 1+yz,	\\
	\dot{y} = -xz, \\
	\dot{z}= y^2+\alpha yz,
\end{cases}
$$

$$
\alpha=2.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_Chaotic_Attractor.png"/>
</p>

## The Sprott—Li SL$`_1`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = -x+\alpha y^2 - xy,	\\
	\dot{y} = xz, \\
	\dot{z}= z^2 -\beta xy,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	2\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_1_Attractor.png"/>
</p>

## The Sprott—Li SL$`_2`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = -\alpha x + xy,	\\
	\dot{y} = z^2 + xz, \\
	\dot{z}= y^2 -\beta yz,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	2\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_2_Attractor.png"/>
</p>

## The Sprott—Li SL$`_3`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = x + \alpha y^2-z^2,	\\
	\dot{y} = x^2-\beta y^2, \\
	\dot{z}= xz,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	2.4\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_3_Attractor.png"/>
</p>

## The Sprott—Li SL$`_4`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = -x + \beta y^2 + xz,	\\
	\dot{y} = xz, \\
	\dot{z}= -\alpha xy + yz,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	0.1\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_4_Attractor.png"/>
</p>

## The Sprott—Li SL$`_5`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = -x+\alpha z^2,	\\
	\dot{y} = z^2 - \beta xz, \\
	\dot{z}= xy - yz,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	1\\
	2
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_5_Attractor.png"/>
</p>

## The Sprott—Li SL$`_6`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = y - z^2,	\\
	\dot{y} = -\alpha xz, \\
	\dot{z}= x^2 - yz,
\end{cases}
$$

$$
\alpha=0.9.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_6_Attractor.png"/>
</p>

## The Sprott—Li SL$`_7`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = -y-yz,	\\
	\dot{y} = x^2+\alpha xz, \\
	\dot{z}= z^2 + \beta yz,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	14\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_7_Attractor.png"/>
</p>

## The Sprott—Li SL$`_8`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = y - y^2,	\\
	\dot{y} = \alpha z^2  + xy, \\
	\dot{z}= -x^2 - \beta xy,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	0.3\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_8_Attractor.png"/>
</p>

## The Sprott—Li SL$`_9`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = y,	\\
	\dot{y} = \alpha y^2 - xz, \\
	\dot{z}= x^2 +xy-\beta xz,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	0.4\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_9_Attractor.png"/>
</p>

## The Sprott—Li SL$`_{10}`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = y + \alpha xz,	\\
	\dot{y} = xy - xz, \\
	\dot{z}= x^2 +\beta xy,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	0.2\\
	3
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_10_Attractor.png"/>
</p>

## The Sprott—Li SL$`_{11}`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = y + y^2 - \alpha yz,	\\
	\dot{y} = -z^2+\beta yz, \\
	\dot{z}= xy,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	0.9\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_11_Attractor.png"/>
</p>

## The Sprott—Li SL$`_{12}`$ Attractor
**Reference:**\
[Li, C., & Sprott, J. C. (2014). Chaotic flows with a single nonquadratic term. Physics Letters A, 378(3), 178–183.](https://doi.org/10.1016/j.physleta.2013.11.004)

$$ 
\begin{cases}
	\dot{x} = -y+x^2-y^2,	\\
	\dot{y} = -xz, \\
	\dot{z}= \alpha x + \beta xy,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	0.3\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sprott_Li_SL_12_Attractor.png"/>
</p>

## The Zhang—Liao Attractor
**Reference:**\
[Zhang, J., & Liao, X. (2017). Synchronization and chaos in coupled memristor-based FitzHugh-Nagumo circuits with memristor synapse. AEU - International Journal of Electronics and Communications, 75, 82–90.](https://doi.org/10.1016/j.aeue.2017.03.003)

$$ 
\begin{cases}
	\dot{x} = y - x\left(\beta+0.5\left(\alpha-\beta\right)\left(\text{sgn}\left(z+1\right)-\text{sgn}\left(z-1\right)\right)\right)+\dfrac{\varepsilon}{\vartheta}\cos\left(\vartheta t\right),	\\
	\dot{y} = -\varsigma y-\varsigma x, \\
	\dot{z}= \delta x,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma\\
	\delta\\
	\varepsilon\\
	\vartheta
\end{bmatrix}=
\begin{bmatrix}
	-1.03\\
	-0.5\\
	0.98\\
	1\\
	0.15\\
	0.75
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Zhang_Liao_Attractor.png"/>
</p>

## The Kountchou—Louodop Attractor
**Reference:**\
[Kountchou, M., Louodop, P., Bowong, S., Fotsin, H., & Kurths, J. (2016). Optimal Synchronization of a Memristive Chaotic Circuit. International Journal of Bifurcation and Chaos, 26(06), 1650093.](https://doi.org/10.1142/s0218127416500930)

$$ 
\begin{cases}
	\dot{x} = \cos\left(\beta t\right)+\alpha y\left(1+z^2-z^4\right),	\\
	\dot{y} = x-y\cos\left(\beta t\right), \\
	\dot{z}= -\varsigma y,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma
\end{bmatrix}=
\begin{bmatrix}
	2\\
	2.5\\
	6
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Kountchou_Louodop_Attractor.png"/>
</p>

## The Sambas—Vaidyanathan—Zhang Attractor
**Reference:**\
[Sambas, A., Vaidyanathan, S., Zhang, S., Zeng, Y., Mohamed, M. A., & Mamat, M. (2019). A New Double-Wing Chaotic System with Coexisting Attractors and Line Equilibrium: Bifurcation Analysis and Electronic Circuit Simulation. IEEE Access, 1–1.](https://doi.org/10.1109/access.2019.2933456)

$$ 
\begin{cases}
	\dot{x} =yz,	\\
	\dot{y} = x-y, \\
	\dot{z}= \alpha\left|x\right|-\beta x^2,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	5\\
	2
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sambas_Vaidyanathan_Zhang_Attractor.png"/>
</p>

## The Kingni—Jafari—Simo Attractor
**Reference:**\
[Kingni, S. T., Jafari, S., Simo, H., & Woafo, P. (2014). Three-dimensional chaotic autonomous system with only one stable equilibrium: Analysis, circuit design, parameter estimation, control, synchronization and its fractional-order form. The European Physical Journal Plus, 129(5).](https://doi.org/10.1140/epjp/i2014-14076-4)

$$ 
\begin{cases}
	\dot{x} = -z,	\\
	\dot{y} = -x-z, \\
	\dot{z}= 3x-\alpha y + x^2-z^2-yz+\beta,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix}=
\begin{bmatrix}
	1.3\\
	1.01
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Kingni_Jafari_Simo_Attractor.png"/>
</p>

## The Nazarimehr—Sprott Attractor
**Reference:**\
[Nazarimehr, F., & Sprott, J. C. (2020). Investigating chaotic attractor of the simplest chaotic system with a line of equilibria. The European Physical Journal Special Topics, 229(6-7), 1289–1297.](https://doi.org/10.1140/epjst/e2020-900216-x)

$$ 
\begin{cases}
	\dot{x} = \alpha y,	\\
	\dot{y} = xz, \\
	\dot{z}= y-z-y^2,
\end{cases}
$$

$$
\alpha=289.
$$

<p align="center">
  <img src="images_png/The_Nazarimehr_Sprott_Attractor.png"/>
</p>

## The Sun—Tian—Fu Attractor
**Reference:**\
[Sun, M., Tian, L., & Fu, Y. (2007). An energy resources demand–supply system and its dynamical analysis. Chaos, Solitons & Fractals, 32(1), 168–180.](https://doi.org/10.1016/j.chaos.2005.10.085)

$$ 
\begin{cases}
	\dot{x} = \alpha x\left(1 - \dfrac{x}{\varphi}\right) - \beta\left(y + z\right), \\
	\dot{y} = -\varsigma y - \delta z + \xi x\left[\vartheta - \left(x - z\right)\right], \\
	\dot{z} = \eta z\left(\zeta x - \varepsilon\right),
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
	\zeta \\
	\varepsilon\\
	\varphi\\
	\vartheta
\end{bmatrix} =  \begin{bmatrix}
	0.09\\ 
	0.15\\ 
	0.06\\ 
	0.082\\ 
	0.07\\ 
	0.2\\ 
	0.5\\ 
	0.4\\ 
	1.8\\ 
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sun_Tian_Fu_Attractor.png"/>
</p>

## The Wang—Sun—Cang Signum Attractor
**Reference:**\
[Wang, Z., Sun, Y., & Cang, S. (2011). Acta Physica Polonica B, 42(2), 235.](https://doi.org/10.5506/aphyspolb.42.235)\
[Herrera-Charles, R., Afolabi, O. M., Núñez-Pérez, J. C., & Ademola, V. A. (2024). Secure communication based on chaotic spherical 3D attractors. In Applications of Digital Image Processing XLVII (Vol. 13137, pp. 78-89).](https://doi.org/10.1117/12.3028430)

$$ 
\begin{cases}
	\dot{x} = \alpha x - 	\beta y + \varsigma z + 2\text{sgn}\left(\sin y\right),	\\
	\dot{y} = -\delta xz+\xi+	\eta x, \\
	\dot{z}= \zeta xy + \varepsilon yz + \varphi z + \vartheta,
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
	\zeta \\
	\varepsilon\\
	\varphi\\
	\vartheta
\end{bmatrix} =  \begin{bmatrix}
	-4.1\\ 
	1.2\\ 
	13.45\\ 
	1.6\\ 
	0.161\\ 
	0\\ 
	2.76\\ 
	0.6\\ 
	13.13\\ 
	3.5031
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Wang_Sun_Cang_Signum_Attractor.png"/>
</p>

## The Akgul—Hussain—Pehlivan Attractor
**Reference:**\
[Akgul, A., Hussain, S., & Pehlivan, I. (2016). A new three-dimensional chaotic system, its dynamical analysis and electronic circuit applications. Optik - International Journal for Light and Electron Optics, 127(18), 7062–7071.](https://doi.org/10.1016/j.ijleo.2016.05.010)

$$ 
\begin{cases}
	\dot{x} = \alpha \left(x-y\right),	\\
	\dot{y} = -4\alpha y + xz+\varsigma x^3, \\
	\dot{z}=\alpha\delta z + x^3y+\beta z^2,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma\\
	\delta\\
\end{bmatrix}=
\begin{bmatrix}
	1.8\\
	-0.07\\
	0.12\\
	1.5
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Akgul_Hussain_Pehlivan_Attractor.png"/>
</p>

## The Wang—Sun—Cang Hyperbolic Tangent Attractor
**Reference:**\
[Wang, Z., Sun, Y., & Cang, S. (2011). Acta Physica Polonica B, 42(2), 235.](https://doi.org/10.5506/aphyspolb.42.235)\
[Herrera-Charles, R., Afolabi, O. M., Núñez-Pérez, J. C., & Ademola, V. A. (2024). Secure communication based on chaotic spherical 3D attractors. In Applications of Digital Image Processing XLVII (Vol. 13137, pp. 78-89).](https://doi.org/10.1117/12.3028430)

$$ 
\begin{cases}
	\dot{x} = \alpha x - 	\beta y + \varsigma z + 2\tanh\left(100\sin y\right),	\\
	\dot{y} = -\delta xz+\xi+	\eta x, \\
	\dot{z}= \zeta xy + \varepsilon yz + \varphi z + \vartheta,
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
	\zeta \\
	\varepsilon\\
	\varphi\\
	\vartheta
\end{bmatrix} =  \begin{bmatrix}
	-4.1\\ 
	1.2\\ 
	13.45\\ 
	1.6\\ 
	0.161\\ 
	0\\ 
	2.76\\ 
	0.6\\ 
	13.13\\ 
	3.5031
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Wang_Sun_Cang_Hyperbolic_Tangent_Attractor.png"/>
</p>

## The Huang—Yang Attractor (Chemical Chaotic Reactor)
**Reference:**\
[Huang, Y., & Yang, X.-S. (2005). Chaoticity of some chemical attractors: a computer assisted proof. Journal of Mathematical Chemistry, 38(1), 107–117.](https://doi.org/10.1007/s10910-005-4537-2)\
[Vaidyanathan, S. (2015). A Novel Chemical Chaotic Reactor System and its Adaptive Control. International Journal of ChemTech Research, 8(11), 654–668.](https://www.researchgate.net/profile/Sundarapandian-Vaidyanathan/publication/289124616_Adaptive_Control_Design_for_the_Anti-synchronization_of_Novel_3-D_Chemical_Chaotic_Reactor_Systems/links/5689416c08ae051f9af750d2/Adaptive-Control-Design-for-the-Anti-synchronization-of-Novel-3-D-Chemical-Chaotic-Reactor-Systems.pdf)

$$ 
\begin{cases}
	\dot{x} = \alpha x-\delta x^2-xy-xz,	\\
	\dot{y} = xy-\varsigma y, \\
	\dot{z}=\beta z-xz-\varepsilon z,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma\\
	\delta\\
	\varepsilon
\end{bmatrix} = \begin{bmatrix}
	30\\
	16.5\\
	10\\
	0.5\\
	0.5
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Huang_Yang_Attractor.png"/>
</p>

## The Wang—Hu—Tian Attractor
**Reference:**\
[Wang, Q., Hu, C., Tian, Z., Wu, X., Sang, H., & Cui, Z. (2023). A 3D memristor-based chaotic system with transition behaviors of coexisting attractors between equilibrium points. Results in Physics, 56, 107201.](https://doi.org/10.1016/j.rinp.2023.107201)

$$ 
\begin{cases}
	\dot{x} = \alpha y +\beta\left(0.1 + 0.5y^2\right)z,	\\
	\dot{y} = z, \\
	\dot{z}=x-\varsigma y -z - 2.682\cdot10^{-4}\sinh\left(4.0485x\right),
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma
\end{bmatrix} = \begin{bmatrix}
	2\\
	2.5\\
	2
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Wang_Hu_Tian_Attractor.png"/>
</p>

## The Qiu—Xu—Jiang Attractor
**Reference:**\
[Qiu, H., Xu, X., Jiang, Z., Sun, K., & Cao, C. (2023). Dynamical behaviors, circuit design, and synchronization of a novel symmetric chaotic system with coexisting attractors. Scientific Reports, 13(1).](https://doi.org/10.1038/s41598-023-28509-z)

$$ 
\begin{cases}
	\dot{x} = y-2xz,	\\
	\dot{y} = -x+0.5\left(1-x^2\right)y-0.5yz, \\
	\dot{z}=0.1xy+\alpha x^2-0.8,
\end{cases}
$$

$$
\alpha = 0.21.
$$

<p align="center">
  <img src="images_png/The_Qiu_Xu_Jiang_Attractor.png"/>
</p>

## The Vaidyanathan—Volos Attractor
**Reference:**\
[Vaidyanathan, S., & Volos, C. (2015). Analysis and adaptive control of a novel 3-D conservative no-equilibrium chaotic system. Archives of Control Sciences, 25(3), 333–353.](https://doi.org/10.1515/acsc-2015-0022)

$$ 
\begin{cases}
	\dot{x} = \alpha  y + xz,	\\
	\dot{y} = -\beta x + yz, \\
	\dot{z} = 1 - x^2 - y^2,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix} = \begin{bmatrix}
	0.05\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Vaidyanathan_Volos_Attractor.png"/>
</p>