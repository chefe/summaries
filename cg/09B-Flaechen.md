# Flächen

## Wie wird eine Ellipsoid in 3D beschreiben?
Gegeben: Halbmessern $a, b, c$ und Zentrum in $(x_o, y_0, z_0)$ \newline

$(\dfrac{x - x_0}{a})^2 + (\dfrac{y - y_0}{b})^2 + (\dfrac{z - z_0}{c})^2 = 1$

## Wie funktioniert die Umrechnung in Zylinderkoordinaten?
_Zylinderkoordinaten:_ $(r, \theta, z) \in [0,\infty) \times [0, 2 \pi) \times (-\infty,\infty)$ \newline

$\begin{array}{lcl}
    x = r \cos \theta & & r = \sqrt{x^2 + y^2} \\
    y = r \sin \theta & \iff & \tan \theta = \dfrac{y}{x} \hspace{5mm} \theta = \arctan (\dfrac{y}{x}) \pm 180\\
    z = z & & z = z
\end{array}$

\begin{figure}[H]
    \includegraphics[width=0.3\textwidth]{images/09B-zylinderkoordinaten.png}
\end{figure}

## Wie funktionieren Kugel- oder sphärische Koordinaten?
_Kugelkoordinaten:_ $(\rho, \phi, \theta) \in [0,\infty) \times [0, 2 \pi) \times [0, 2 \pi)$ \newline

$\begin{array}{lcl}
    x = \rho \sin \phi \cos \theta & & \rho = \sqrt{x^2 + y^2 + z^2} \\
    y = \rho \sin \phi \sin \theta & \iff & \tan \theta = \frac{y}{x} \\
    z = \rho \cos \phi & & \cos \phi = \frac{z}{\rho}
\end{array}$

\begin{figure}[H]
    \includegraphics[width=0.3\textwidth]{images/09B-kugelkoordinaten.png}
\end{figure}

## Wie wird eine Rotationsflächen um die $x$-Achse beschrieben?
$x = u, \hspace{5mm} y = f(x) \cos v, \hspace{5mm} z = f(x) \sin v$ \newline

wobei $a \leq u \leq b$ und $0 \leq v \leq 2\pi$

## Wie werden die Vektoren des Dreibein einer Rotationsflächen berechnen?
$t(u) = \dfrac{\dot{x}(u)}{|\dot{x}(u)|}$ _Tangentenvektor_ \newline

$n(u) = \dfrac{\dot{t}(u)}{|\dot{t}(u)|}$ _Hauptnormalenvektor_ \newline

$b(u) = t(u) \times n(u)$ _Binormalenvektor_

## Was ist eine Regelfläche?
Eine Fläche $S$ ist eine Regelfläche falls durch jeden ihrer Punkte
eine Gerade existiert, die vollständig in $S$ liegt

## Was ist eine doppelte Regelfläche?
Eine Fläche $S$ ist eine doppelte Regelfläche falls durch jeden
ihrer Punkte zwei unterschiedliche Geraden existieren, die
vollständig innerhalb von $S$ liegen

## Wie wird eine Freiformflächen beschrieben?
* polynomiale Kurve $F(u)$ vom Grad $n$
    * $F(u) = \sum_{i=0}^n C_i N_i(u), \hspace{5mm} 0 \leq u \leq 1$
* polynomiale Kurve $G(v)$ vom Grad $m$
    * $G(v) = \sum_{j=0}^m C_j N_j(v), \hspace{5mm} 0 \leq v \leq 1$
* Tensorproduktfläche $S(u, v)$
    * $S(u, v) = \sum_{i=0}^n \sum_{j=0}^m C_i C_j N_i(u) N_j(v), \hspace{5mm} 0 \leq u, v \leq 1$

## Wie werden Bézierflächen berechnet?
$Q(u, v) = \sum_{i=0}^n \sum_{j=0}^m B_i^n(v) B_j^m(u) P_{i,j}$ \newline

$B_i^n(v) = \binom{n}{i} (1-v)^{n-i} v^i, \hspace{5mm} 0 \leq i \leq n$ \newline

$B_j^m(u) = \binom{m}{j} (1-u)^{m-j} u^j, \hspace{5mm} 0 \leq j \leq m$

## Wie wird die Flächennormale einer Bézier-Fläche berechnet?
$\dfrac{\partial P(u,v)}{\partial u} = [0, 1, 2u, 3u^2]MGM^TV^T$ \newline

$\dfrac{\partial P(u,v)}{\partial v} = UMGM^T[0, v, 2v, 3v^2]^T$ \newline

$N(u,v) = \dfrac{\partial P(u,v)}{\partial u} \times \dfrac{\partial P(u,v)}{\partial v}$

