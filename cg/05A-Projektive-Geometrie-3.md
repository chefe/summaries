# Projektive Geometrie 3

## Wie ändern sich die Koordinaten bei einer 2D-Transformation des Koordinatensystems?
$\begin{bmatrix}x'\\y'\\1\end{bmatrix} = 
\begin{bmatrix}
    1 & 0 & t_x \\
    0 & 1 & t_y \\
    0 & 0 & 1 \\
\end{bmatrix}
\begin{bmatrix}x\\y\\1\end{bmatrix}$

## Wie ändern sich die Koordinaten bei einer 2D-Rotation des Koordinatensystems?
$\begin{bmatrix}x'\\y'\\1\end{bmatrix} = 
\begin{bmatrix}
    \cos{\phi} & \sin{\phi} & 0 \\
    -\sin{\phi} & \cos{\phi} & 0 \\
    0 & 0 & 1 \\
\end{bmatrix}
\begin{bmatrix}x\\y\\1\end{bmatrix}$

## Wie kann diese Rotation auch gemacht werden?
Statt das Koordinatensystem um $\phi$ zu drehen, 
kann man das Objekt um $-\phi$ drehen und vice versa!

## Wie kann ein Raumpunkt in homogene Koordinaten umgerechnet werden?
$\vec{r} = [x_1, x_2, x_3, x_4]^T$

$(x, y, z) = \left(\dfrac{x_1}{x_4}, \dfrac{x_2}{x_4}, \dfrac{x_2}{x_4} \right)$

## Wie wird eine Ebenen im Raum definiert?
$\vec{q} \odot \vec{r} = w^T * r = \begin{bmatrix}a & b & c & d\end{bmatrix} 
\begin{bmatrix}x\\y\\z\\1\end{bmatrix} = ax + by + cz + d = 0$

## Wie sieht die allgemeine Translation-Matrix in 3D aus?
$\vec{t} = \begin{bmatrix}t_x\\t_y\\t_z\end{bmatrix}, 
T(\vec{t}) = \begin{bmatrix}
    1 & 0 & 0 & t_x  \\
    0 & 1 & 0 & t_y  \\
    0 & 0 & 1 & t_z  \\
    0 & 0 & 1 & 1  \\
\end{bmatrix}, 
T^{-1}(\vec{t}) = T(-\vec{t}) = \begin{bmatrix}
    1 & 0 & 0 & -t_x  \\
    0 & 1 & 0 & -t_y  \\
    0 & 0 & 1 & -t_z  \\
    0 & 0 & 1 & 1  \\
\end{bmatrix}$

## Wie sieht die Rotationsmatrix um die z-Achse aus?
_Rotation um den Winkel $\phi_z$ um die z-Achse im Gegenuhrzeigersinn_ \newline

$R_z(\phi_z) = \begin{bmatrix}
    \cos(\phi_z) & -\sin(\phi_z) & 0 & 0  \\
    \sin(\phi_z) & \cos(\phi_z) & 0 & 0  \\
    0 & 0 & 1 & 0  \\
    0 & 0 & 0 & 1  \\
\end{bmatrix}, 
R_z^{-1}(\phi_z) = R_z(-\phi_z)= \begin{bmatrix}
    \cos(\phi_z) & \sin(\phi_z) & 0 & 0  \\
    -\sin(\phi_z) & \cos(\phi_z) & 0 & 0  \\
    0 & 0 & 1 & 0  \\
    0 & 0 & 0 & 1  \\
\end{bmatrix}$

## Wie sieht die Rotationsmatrix um die y-Achse aus?
_Rotation um den Winkel $\phi_y$ um die y-Achse im Gegenuhrzeigersinn_ \newline

$R_y(\phi_y) = \begin{bmatrix}
    \cos(\phi_y) & 0 & \sin(\phi_y) & 0  \\
    0 & 1 & 0 & 0  \\
    -\sin(\phi_y) & 0 & \cos(\phi_y) & 0  \\
    0 & 0 & 0 & 1  \\
\end{bmatrix}, 
R_y^{-1}(\phi_y) = R_y(-\phi_y) =\begin{bmatrix}
    \cos(\phi_y) & 0 & -\sin(\phi_y) & 0  \\
    0 & 1 & 0 & 0  \\
    \sin(\phi_y) & 0 & \cos(\phi_y) & 0  \\
    0 & 0 & 0 & 1  \\
\end{bmatrix}$

## Wie sieht die Rotationsmatrix um die x-Achse aus?
_Rotation um den Winkel $\phi_x$ um die x-Achse im Gegenuhrzeigersinn_ \newline

$R_x(\phi_x) = \begin{bmatrix}
    1 & 0 & 0 & 0  \\
    0 & \cos(\phi_x) & -\sin(\phi_x) & 0  \\
    0 & \sin(\phi_x) & \cos(\phi_x) & 0  \\
    0 & 0 & 0 & 1  \\
\end{bmatrix}, 
R_x^{-1}(\phi_x) = R_x(-\phi_x) = \begin{bmatrix}
    1 & 0 & 0 & 0  \\
    0 & \cos(\phi_x) & \sin(\phi_x) & 0  \\
    0 & -\sin(\phi_x) & \cos(\phi_x) & 0  \\
    0 & 0 & 0 & 1  \\
\end{bmatrix}$

## Welche Schritte sind für die Rotationen um eine beliebige Achse nötig?
1. Rotation um den Winkel $\phi$ um die z-Achse (mit der Matrix D)
2. Rotation um den Winkel $\theta \in [0, \pi]$ um die frühere x-, jetzt x'-Achse (mit der Matrix C)
3. Rotation um den Winkel $\psi$ um die frühere z-, jetzt z'-Achse (mit der Matrix B)

## Wie ist die Matrix für eine Rotationen um eine beliebige Achse definiert?
$c_{\alpha} = \cos{\alpha}, s_{\alpha} = \sin{\alpha}$ wobei $\alpha \in \{\phi, \theta, \psi\} \newline$

$D = \begin{bmatrix}
c_{\phi} & s_{\phi} & 0 & 0  \\
-s_{\phi} & c_{\phi} & 0 & 0 \\
0 & 0 & 1 & 0  \\
0 & 0 & 0 & 1  \\
\end{bmatrix}, 
C = \begin{bmatrix}
1 & 0 & 0 & 0  \\
0 & c_{\theta} & s_{\theta} & 0  \\
0 & -s_{\theta} & c_{\theta} & 0 \\
0 & 0 & 0 & 1  \\
\end{bmatrix}, 
B = \begin{bmatrix}
c_{\psi} & s_{\psi} & 0 & 0  \\
-s_{\psi} & c_{\psi} & 0 & 0 \\
0 & 0 & 1 & 0  \\
0 & 0 & 0 & 1  \\
\end{bmatrix} \newline$

$A = BCD = \begin{bmatrix}
    c_{\psi}c_{\phi} - c_{\theta}s_{\phi}s_{\psi} &
    c_{\psi}s_{\phi} + c_{\theta}c_{\phi}s_{\psi} &
    s_{\psi}s_{\theta} & 0 \\
    -s_{\psi}c_{\phi} - c_{\theta}s_{\phi}s_{\psi} &
    -s_{\psi}s_{\phi} + c_{\theta}c_{\phi}c_{\psi} &
    c_{\psi}s_{\theta} & 0 \\
    s_{\theta}s_{\phi} & -s_{\theta}c_{\phi} & c_{\theta} & 0 \\
    0 & 0 & 0 & 1  \\
\end{bmatrix}$

## Wie wird eine parallele Projektion beschrieben?
_Projektion in Richtung $v = [v_x , v_y , v_z ]^T$ auf die Ebene $ax + by + cz + d = 0$ wenn $a^2 + b^2 + c^2 = 1$_ \newline

$\begin{bmatrix}x*\\y*\\z*\\1\end{bmatrix} = 
H \begin{bmatrix}x_0\\y_0\\z_0\\1\end{bmatrix} = 
\frac{1}{\cos{\psi}}
\begin{bmatrix}
    (\cos{\psi} - av_x) & -bv_x & -cv_x & -dv_x \\
    -av_y & (\cos{\psi} - bv_y) & -cv_y & -dv_y \\
    -av_z & -bv_z & (\cos{\psi} - cv_z) & -dv_z \\
    0 & 0 & 0 & \cos{\psi} \\
\end{bmatrix}
\begin{bmatrix}x_0\\y_0\\z_0\\1\end{bmatrix}$

## Wie wird eine perspektivische Projektion beschrieben?
_perspektivische Projektion mit Zentrum im Nullpunkt und mit Bildebene $ax + by + cz + d = 0$_ \newline

$\begin{bmatrix}x*\\y*\\z*\\1\end{bmatrix} = 
H \begin{bmatrix}x_0\\y_0\\z_0\\1\end{bmatrix} = 
\begin{bmatrix}
    -d & 0 & 0 & 0 \\
    0 & -d & 0 & 0 \\
    0 & 0 & -d & 0 \\
    a & b & c & 0 \\
\end{bmatrix}
\begin{bmatrix}x_0\\y_0\\z_0\\1\end{bmatrix}$

## Wie wird eine Clipping-Transformation beschrieben?
$T = \begin{bmatrix}
    \frac{2a}{x_Q - x_P} & 0 & \frac{x_Q + x_P}{x_Q - x_P} & 0 \\
    0 & \frac{2a}{y_Q - y_P} & \frac{y_Q + y_P}{y_Q - y_P} & 0 \\
    0 & 0 & -\frac{b + a}{b - a} & -2 \frac{ba}{b - a} \\
    0 & 0 & -1 & 0 \\
\end{bmatrix} \newline$

$a$ = Abstand vom Nullpunkt, $P(x_p, y_P, -a)$ = Punkt unten links, $Q(x_Q, y_Q, -a)$ = Punkt oben rechts

## Wie sieht die allgemeine Skalierungs-Matrix aus?
$\vec{s} = \begin{bmatrix}s_x\\s_y\\s_z\end{bmatrix}, 
S(\vec{s}) = \begin{bmatrix}
    s_x & 0 & 0 & 0 \\
    0 & s_y & 0 & 0 \\
    0 & 0 & s_z & 0 \\
    0 & 0 & 0 & 1 \\
\end{bmatrix}, 
S^{-1}(\vec{s}) = \begin{bmatrix}
    -s_x & 0 & 0 & 0 \\
    0 & -s_y & 0 & 0 \\
    0 & 0 & -s_z & 0 \\
    0 & 0 & 0 & 1 \\
\end{bmatrix}$

