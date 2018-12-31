# Projektive Geometrie 2

## Wieso wird die Projektive Ebene benutzt?
* In der Projektiven Ebene haben zwei Geraden immer einen Schnittpunkt
* Dadurch lassen sich viele geometrische Phänomene knapper beschreiben
* Jeder Punkt hat eine Darstellung als Vektor mit drei homogenen Komponenten
* Diesem Vektor entspricht natürlich ein Punkt im dreidimensionalen Euklidischen Raum $\mathbb{R}^3$

## Wie wird ein Punkt homogenisiert?
$\begin{bmatrix}x\\y\end{bmatrix} \Rightarrow \begin{bmatrix}x\\y\\1\end{bmatrix} \approx$
$\lambda \begin{bmatrix}x\\y\\1\end{bmatrix}$

## Wie wird ein Punkt dehomogenisiert / realisiert?
$\begin{bmatrix}x_1\\x_2\\x_3\end{bmatrix} \Rightarrow \begin{bmatrix}x_1 / x_3\\x_2 / x_3\end{bmatrix}$

## Was sind die Eigenschaften einer Projektive Transformationen?
* ist eineindeutig (bijektive) und daher umkehrbar
* bildet Geraden auf Geraden ab (ist also geradentreu)

## Wie ist die allgemeine Skalierungs-Matrix definiert?
$S = \begin{bmatrix} s_x & 0 & 0 \\ 0 & s_y & 0 \\ 0 & 0 & 1 \end{bmatrix}$

## Wie ist die allgemeine Translations-Matrix definiert?
$T = \begin{bmatrix} 1 & 0 & t_x \\ 0 & 1 & t_y \\ 0 & 0 & 1 \end{bmatrix}$

## Wie ist die allgemeine Rotations-Matrix definiert (Rotation um den Nullpunkt)?
$R = \begin{bmatrix} \cos{\phi} & - \sin{\phi} & 0 \\ \sin{\phi} & \cos{\phi} & 0 \\ 0 & 0 & 1 \end{bmatrix}$

## Wie ist die allgemeine Spiegelungs-Matrix definiert (Spiegelung durch den Ursprung)?
$R = \begin{bmatrix} \cos{2\delta} & \sin{2\delta} & 0 \\ \sin{2\delta} & -\cos{2\delta} & 0 \\ 0 & 0 & 1 \end{bmatrix}$

## Wie ist die Matrix für die Rotation um einen beliebigen Punkt definiert?
$R_a = T^{-1} R_0 T = \begin{bmatrix} \cos{\phi} & -\sin{\phi} & -t_x \cos{\phi} + t_x \sin{\phi} + t_x \\ \sin{\phi} & \cos{\phi} & -t_y \cos{\phi} - t_x \sin{\phi} + t_x \\ 0 & 0 & 1 \end{bmatrix}$

## Welche Arten von Transformationen gibt es?
* Euklidischer Transformation _(siehe R)_
    * Zusammensetzungen von Translation, Drehung und Spiegelung
    * Abstand zwischen zwei Punkten und alle Winkel bleiben gleich
* Ähnlichkeitstransformation _(siehe S)_
    * Euklid + Skalierung
    * Winkel zwischen zwei Geraden und Verhältnis von Abständen bleiben gleich
* affiner Transformation _(siehe A)_
    * Parallelität von Geraden und Verhältnis zwischen Flächeninhalten bleiben erhalten
    * Form der Figuren wird verzerrt
* allg. Transformation _(siehe H)_
    * alles erlaubt
    * Geraden bleiben Geraden

$R = \begin{bmatrix}R & t \\ 0^T & 1 \end{bmatrix} \hspace{5mm}$
$S = \begin{bmatrix}k * M & t \\ 0^T & 1 \end{bmatrix} \hspace{5mm}$
$A = \begin{bmatrix}C & t \\ 0^T & 1 \end{bmatrix} \hspace{5mm}$
$H = \begin{bmatrix}h_{11} & h_{12} & h_{13} \\ h_{21} & h_{22} & h_{23} \\ h_{31} & h_{32} & h_{33} \end{bmatrix}$
