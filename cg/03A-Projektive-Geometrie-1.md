# Projektive Geometrie 1

## Wie werden zwei Vektoren addiert?
$\vec{a} + \vec{b} = \begin{bmatrix} a_1 \\ a_2 \end{bmatrix} + \begin{bmatrix} b_1 \\ b_2 \end{bmatrix} = \begin{bmatrix} a_1 + b_1 \\ a_2 + b_2 \end{bmatrix}$

## Wie wird ein Vektor mit einem Skalar multipliziert?
$\lambda \vec{a} = \lambda \begin{bmatrix} a_1 \\ a_2 \end{bmatrix} = \begin{bmatrix} \lambda a_1 \\ \lambda a_2 \end{bmatrix}$

## Was ist das Inverse eines Vektors?
$-\vec{a} = - \begin{bmatrix} a_1 \\ a_2 \end{bmatrix} = \begin{bmatrix} -a_1 \\ -a_2 \end{bmatrix}$

## Was ist der Nullvektor?
$\vec{0} = \begin{bmatrix}0 \\ 0 \end{bmatrix}$

## Wie werden zwei Vektoren subtrahiert?
$\vec{a} - \vec{b} = \vec{a} + (- \vec{b})$

## Wann sind zwei Vektoren gleich?
wenn ihre Komponenten gleich sind

## Was ist der Unterschied zwischen einem Rechtssystem und einem Linkssystem?
* Rechtssystem $\Rightarrow$ von X nach Y im Gegenuhrzeigersinn
* Linksssystem $\Rightarrow$ von X nach Y im Uhrzeigersinn

## Wie kann man sich den Unterschied zwischen den beiden Systemen merken?
* Daumen = Z, Zeigefinger = X, Mittelfinger = Y
* Rechte Hand $\Rightarrow$ Rechtssystem, Linke Hand $\Rightarrow$ Linksssystem

## Wie ist ein Vektor im Kartesisches Koordinatensystem definiert?
$\vec{a} = a_x \vec{e_x} + a_y \vec{e_y} = \begin{bmatrix} a_x \\ a_y \end{bmatrix}$

## Was muss bei der Schreibweise im Kartesisches Koordinatensystem beachtet werden?
* $\vec{e_x}$ wird manchmal auch als $\vec{i}$ bezeichnet
* $\vec{e_y}$ wird manchmal auch als $\vec{j}$ bezeichnet

## Wie wird die Länge eines 2D-Vektors bestimmt?
$a = |\vec{a}| = \sqrt{a_x^2 + a_y^2}$

## Welche Rechenregeln gelten für Vektoren?
* $\vec{a} + \vec{b} = \vec{b} + \vec{a}$ _(Kommutativgesetz)_
* $\vec{a} + (\vec{b} + \vec{c}) = (\vec{a} + \vec{b}) + \vec{c}$ _(Assoziativgesetz)_
* $\lambda (\vec{a} + \vec{b}) = \lambda \vec{a} + \lambda \vec{b}$
* $(\lambda + u) \vec{a} = \lambda \vec{a} + u \vec{a}$
* $(\lambda u) \vec{a} = \lambda (u \vec{a}) = u (\lambda \vec{a})$

## Wie ist das Skalarprodukt definiert?
$\vec{a} \odot \vec{b} = |\vec{a}| |\vec{b}| \cos \phi$

## Wie kann das Skalarprodukt im kartesischen Koordinatensystem berechnet werden?
$\vec{a} \odot \vec{b} = \begin{bmatrix} a_1 \\ a_2 \end{bmatrix} \odot \begin{bmatrix} b_1 \\ b_2 \end{bmatrix} = a_1 b_1 + a_2 b_2$

## Wie wird das Skalarprodukt im allgemeinen Fall berechnet?
* $\vec{a} = a_1 \vec{e_1} + a_2 \vec{e_2} + a_3 \vec{e_3} = [a_1 a_2 a_3]^T$
* $\vec{b} = b_1 \vec{e_1} + b_2 \vec{e_2} + b_3 \vec{e_3} = [b_1 b_2 b_3]^T$
* $\vec{a} \odot \vec{b} = \sum_{i=1}^3 \sum_{j=1}^3 g_{ij} a_i b_j = [a_1 a_2 a_3] \begin{bmatrix} g_{11} & g_{12} & g_{13} \\ g_{21} & g_{22} & g_{23} \\ g_{31} & g_{32} & g_{33} \end{bmatrix} \begin{bmatrix} b_1 \\ b_2 \\ b_3 \end{bmatrix} = a^T G b$

## Welche Rechenregeln gelten für das Skalarprodukt?
* $\vec{a} \odot \vec{b} = \vec{b} \odot \vec{a}$ _(Kommutativgesetz)_
* $\vec{a} \odot (\vec{b} + \vec{c}) = \vec{a} \odot \vec{b} + \vec{a} \odot \vec{c}$ _(Distributivgesetz)_
* $\lambda (\vec{a} + \vec{b}) = (\lambda \vec{a}) \odot \vec{b} = \vec{a} \odot (\lambda \vec{b})$

## Was sind zwei Vektoren orthogonal?
$\vec{a} \odot \vec{b} = 0 \iff \vec{a} \perp \vec{b}$

## Wie ist eine Linearkombination definiert?
$\vec{c} = \lambda \vec{a} + \mu \vec{b}$ wobei $\lambda, \mu \in \mathbb{R}$

## Wie ist lineare Unabhängigkeit definiert?
$\lambda_1 \vec{a_1} + \lambda_2 \vec{a_2} + \dots + \lambda_n \vec{a_n} = \vec{0} \iff \lambda_1 = \lambda_2 = \dots = \lambda_n = 0$

## Auf welche Arten kann eine Gerade beschrieben werden?
* Punkt-Punktform mit Vektoren
    * $\vec{r} = \vec{r_0} + t(\vec{r_1} - \vec{r_0}), t \in \mathbb{R}$
* Punkt-Richtungsform mit Vektoren
    * $\vec{r} = \vec{r_0} + t\vec{r_1}, t \in \mathbb{R}$
* Achsenabschnitt-Steigungsform
    * $y = mx + b$
* Punkt-Richtungsform
    * $(y - y_0) = m(x - x_0)$
* Allgemeine Geradengleichung
    * $ax + by + c = 0, a \in \mathbb{R}, b \in \mathbb{R}, c \in \mathbb{R}$

## Wie ist die Hessesche Normalform (HNF) der Gerade definiert?
$\vec{n} = \begin{bmatrix}n_x\\n_y\end{bmatrix} \hspace{5mm}$
$\vec{x} = \begin{bmatrix}x\\y\end{bmatrix} \hspace{5mm}$
$\vec{x_0} = \begin{bmatrix}x_0\\y_0\end{bmatrix} \hspace{1cm}$
$\vec{n} \odot (\vec{x} - \vec{x_0}) = \begin{bmatrix}n_x\\n_y\end{bmatrix} \odot \begin{bmatrix}x - x_0\\y - y_0\end{bmatrix} = 0$ da $\vec{n} \bot (\vec{x} - \vec{x_0}) \newline$

$\vec{n} \odot (\vec{x} - \vec{x_0}) = n_x(x-x_0) + n_y(y-y_0) = n_x x + n_y y-(n_x x_0 + n_y y_0)$

## Wie kann der Abstand einer Gerade zum Ursprung berechnet werden?
* $d = n_x x_0 + n_y y_0 = \vec{n} \odot \vec{x_0}$
* $d \textgreater 0 \iff (0,0) \in -HE$ _(negative Halbebene)_
* $d \textless 0 \iff (0,0) \in +HE$ _(positive Halbebene)_

## Wie kommt man von der 2D-Koordinatengleichung zur HNF?
$ax + by + c = 0$

$n_x = \dfrac{a}{\sqrt{a^2 + b^2}} \hspace{5mm}$
$n_y = \dfrac{b}{\sqrt{a^2 + b^2}} \hspace{5mm}$
$d = -\dfrac{c}{\sqrt{a^2 + b^2}}$

$n_x x + n_y y - d = 0$

## Wie ist der normierter Normalenvektor in 2D definiert?
$\vec{n} = \begin{bmatrix}n_x\\n_y\end{bmatrix} = \dfrac{1}{\sqrt{a^2 + b^2}} \begin{bmatrix}a\\b\end{bmatrix}$

## Wie kommt man von der 3D-Koordinatengleichung zur HNF?
$ax + by + cz + d = 0$

$n_x = \dfrac{a}{\sqrt{a^2 + b^2 + c^2}} \hspace{5mm}$
$n_y = \dfrac{b}{\sqrt{a^2 + b^2 + c^2}} \hspace{5mm}$
$n_z = \dfrac{c}{\sqrt{a^2 + b^2 + c^2}} \hspace{5mm}$
$D = -\dfrac{d}{\sqrt{a^2 + b^2 + c^2}}$

$n_x x + n_y y + n_z z - D = 0$

## Wie ist der normierter Normalenvektor in 3D definiert?
$\vec{n} = \begin{bmatrix}n_x\\n_y\\n_z\end{bmatrix} = \dfrac{1}{\sqrt{a^2 + b^2 + c^2}} \begin{bmatrix}a\\b\\c\end{bmatrix}$

## Wie wird die Projektion eines Vektors auf einen anderen Vektor berechnet?
Komponente von $\vec{b}$ in Richtung von $\vec{a}$:
$\hspace{5mm} \vec{b}_{\vec{a}} = \dfrac{\vec{a} \odot \vec{b}}{|\vec{a}|^2} \vec{a}$

## Was sind die Eigenschafen des Vektorprodukt?
* $a \times b$ steht senkrecht auf beiden Vektoren
* $| a \times b |$ entspricht der Fläche des aufgespannten Parallelogramms
* die Vektoren $a$, $b$ und $a \times b$ bilden in dieser Reihenfolge ein Rechtssystem

## Wie wird das Vektorprodukt berechnet?
$\vec{a} = \begin{bmatrix}a_1\\a_2\\a_3\end{bmatrix} \hspace{5mm}$
$\vec{b} = \begin{bmatrix}b_1\\b_2\\b_3\end{bmatrix} \hspace{5mm}$
$a \times b = (a_2b_3 - a_3b_2)e_1 + (a_3b_1 - a_1b_3)e_2 + (a_1b_2 - a_2b_1)e_3 \vspace{5mm}$

_Merkhilfe:_
\begin{figure}[H]
    \includegraphics[width=0.2\textwidth]{images/03A-vektorprodukt.png}
\end{figure}

## Was sind die Rechenregeln für das Vektorprodukt?
* $\vec{a} \times \vec{b} = - \vec{b} \times \vec{a}$ _(Anti-Kommutativgesetz)_
* $\vec{a} \times (\vec{b} + \vec{c}) = \vec{a} \times \vec{b} + \vec{a} \times \vec{c}$ _(Distributivgesetz)_
* $\lambda (\vec{a} \times \vec{b}) = (\lambda\vec{a}) \times \vec{b} = \vec{a} \times (\lambda \vec{b})$

## Wie wird das Spatprodukt berechnet?
$[\vec{a}, \vec{b}, \vec{c}] = \vec{a} \odot (\vec{b} \times \vec{c}) =$
$det(\begin{bmatrix}a_1&a_2&a_3\\b_1&b_2&b_3\\c_1&c_2&c_3\end{bmatrix})$

$= a_1b_2c_3+ a_2b_3c_1 + a_3b_1c_2 - a_3b_2c_1 - a_1b_3c_2 - a_2b_1c_3$

_Merkhilfe:_
\begin{figure}[H]
    \includegraphics[width=0.2\textwidth]{images/03A-spatprodukt.png}
\end{figure}

## Was sind die Rechenregeln für das Spatprodukt?
* Vertauschen von zwei bewirkt Vorzeichenwechsel
    * $[\vec{a}, \vec{b}, \vec{c}] = - [\vec{b}, \vec{a}, \vec{c}]$
* Zyklisches Vertauschen ändert nichts
    * $[\vec{a}, \vec{b}, \vec{c}] = [\vec{b}, \vec{c}, \vec{a}]$
* Multiplikation mit reellen Zahlen
    * $[\lambda \vec{a}, u \vec{b}, v \vec{c}] = \lambda u v [\vec{a}, \vec{b}, \vec{c}]$
* Addition zweier Vektoren
    * $[\vec{a} + \vec{b}, \vec{c}, \vec{d}] = [\vec{a}, \vec{c}, \vec{d}] + [\vec{b}, \vec{c}, \vec{d}]$

