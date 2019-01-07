# Curves

## Welche Darstellungsmöglichkeiten gibt es für eine Kurve in der Ebene?
* Explizite Darstellung:
    * $\gamma: [a,b] \rightarrow \mathbb{R}, x \mapsto y = f(x)$
* Implizite Darstellung:
    * $F(x, y) = 0$
* Parameterdarstellung
    * $\gamma: [a, b] \rightarrow R^2, t \mapsto X(t) = \left[\begin{array}{c}x_1(t)\\x_2(t)\end{array}\right]$

## Wie wird ein Kreis auf einer Ebene dargestellt?
* Explizite Darstellung:
    * $\gamma: [-r,r] \rightarrow \mathbb{R}, x \mapsto y = \sqrt{r^2-x^2}$ \textit{(oberer Halbkreis)}
    * $\gamma: [-r,r] \rightarrow \mathbb{R}, x \mapsto y = -\sqrt{r^2-x^2}$ \textit{(unterer Halbkreis)}
* Implizite Darstellung:
    * $x^2 + y^2 - r^2 = 0$
* Parameterdarstellung
    * $\gamma: [0,2\pi] \rightarrow R^2, t \mapsto X(t) = \left[\begin{array}{c}r \cos t\\r \sin t\end{array}\right]$

## Wie wird eine Kurve im Raum beschrieben?
$\gamma: [a,b] \rightarrow R^3,t \mapsto X(t) = \left[\begin{array}{c}x_1(t)\\x_2(t)\\x_3(t)\end{array}\right]$

## In welche Gruppen werden Splines unterteilt?
```
- interpolierende Splines
    - kubische Splines
- approximierende Splines (B-Splines)
    - nicht rationale B-Splines
        - uniforme B-Splines
        - nicht uniforme B-Splines (klassische B-Splines)
    - rationale B-Splines
        - uniforme B-Splines
        - nicht uniformeB-Splines (NURBS)
```

## Was sind die Eigenschaften der beiden Spline-Arten?
* interpolierende Splines
    * spezifiziert werden Punkte, durch welche die Kurve gehen soll
    * gehen exakt durch vorgegebene Punkt
    * Verhalten ist nur schwer vorauszusagen (Überschiessen, Oszillationen)
    * Schwierig, schöne glatte Kurven zu erhalten
    * am Rand wird es immer ungenauer
* approximierende Splines (B-Splines)
    * gehen nicht direkt durch alle Punkte
    * einige Punkte sind Kontrollpunkte
    * Kontrollpunkte beeinflussen die Form der Kurve
    * wird häufig in der Praxis verwendet

## Wieso werden Kurven gebraucht?
* Begrenzung einer Fonts mit Hilfe von Bézier-Kurven
* Schwerpunkte von Objekten bewegen sich entlang von Kurven
* viele Objekte (wie Strassen, Räder, etc.) werden durch Kurven begrenzt
* Rotationsflächen werden durch eine Kurve erzeugt
* allgemeine Flächen werden durch zwei Kurvenscharen erzeugt

## Wie funktioniert die Methode der unbestimmten Koeffizienten?
Gesucht: $P_3(x) = c_0 + c_1 x + c_2 x^2 + c_3 x^3$ \newline

Punkte: $(0,1)$, $(1,1)$, $(2,0)$ und $(3,1)$ \newline

$\left[ \begin{array}{rrrr}
    1 & 0 & 0 & 0 \\
    1 & 1 & 1 & 1 \\
    1 & 2 & 4 & 8 \\
    1 & 3 & 9 & 27
\end{array} \right]
\left[ \begin{array}{c}
    c_0 \\ c_1 \\ c_2 \\ c_3
\end{array} \right] =
\left[ \begin{array}{c}
    1 \\ 1 \\ 0 \\ 1
\end{array} \right]$ \newline

$\Rightarrow P_3(x) = 1 + \frac{3}{2}x - 2x^2 + \frac{1}{2}x^3$

## Wie funktioniert die Methode nach Lagrange?
Gesucht ist ein Polynom 3. Grades durch die Punkte: \newline

$(x_0,f(x_0)) = (0,1), (x_1,f(x_1)) = (1,1), (x_2,f(x_2)) = (2,0), (x_3,f(x_3)) = (3,1)$ \newline

$L_0(x) = \dfrac{(x-x_1)(x-x_2)(x-x_3)}{(x_0-x_1)(x_0-x_2)(x_0-x_3)} \hspace{5mm}$
$L_1(x) = \dfrac{(x-x_0)(x-x_2)(x-x_3)}{(x_1-x_0)(x_1-x_2)(x_1-x_3)}$

$L_2(x) = \dfrac{(x-x_0)(x-x_1)(x-x_3)}{(x_2-x_0)(x_2-x_1)(x_2-x_3)} \hspace{5mm}$
$L_3(x) = \dfrac{(x-x_0)(x-x_1)(x-x_2)}{(x_3-x_0)(x_3-x_1)(x_3-x_2)}$ \newline

$P_3(x) = L_0(x)f(x_0 ) + L_1 (x)f(x_1) + L_2(x)f(x_2 ) + L_3(x)f(x_3)$ \newline
$= L_0(x) * 1 + L_1 (x) * 1 + L_2 (x) * 0 + L_3 (x) * 1$ \newline
$= L_0(x) + L_1(x) + L_3(x)$

## Welche Arten von Bézier Splines gibt es?
* Lineare Interpolation (linear Bézier spline)
    * $P(t) = (1-t)P_0 + tP_1$
* Quadratic Bézier spline
    * $P(t) = (1-t)^2 P_0 + 2(1-t)tP_1 + t^2P_2$
* Cubic Bézier spline
    * $P(t) = (1-t)^3 P_0 + 3(1-t)^2 tP_1 + 3(1-t)t^2 P_2 + t^3 P_3$

## Wie sind die Bernsteinpolynome definiert?
$B_i^n(t) = \binom{n}{i} (1-t)^{n-i} t^i$ für $(0 \leq i \leq n)$

## Was sind die Eigenschaften von Bézier-Kurven?
* Beispiel für eine Kurve mit zwei Kontrollpunkten:
    * beginnt bei $P_0$ und verläuft dort in Richung $P_1$
    * endet in $P_3$ und ist dort tangential an $P_3 - P_2$
* Kurve liegt immer innerhalb der konvexen Hülle des Linienzuges
* Anzahl der Kontrollpunkte bestimmt den Grad $n$ der Kurve
* Änderung eines Kontrollpunktes bewirkt eine Änderung der gesamten Kurve

## Was sind die Eigenschaften von B-Spline-Kurven?
* verallgemeinerung von Bézier-Kurven
* basieren auf:
    * rekursiv definierten rationalen
    * oder nicht rationalen B-Spline-Funktionen
    * oder Basis-Funktionen
* Änderung der Kontrollpunkte haben nur lokalen Einfluss
* Grad ist abhängig von der Anzahl Kontrollpunkte
* falls Parameterwerte äquidistant sind hat man uniforme, sonst nicht uniforme B-Spline-Kurven

## Wie werden B-Spline-Kurven berechnet?
$B_{n,k}(t) = \sum_{j=0}^n N_{j,k}(t)P_j, \hspace{5mm}$
$(0 \leq t \leq n - k + 2)$ wobei $2 \leq k \leq n + 1$ \newline

$N_{j,1}(t) = \begin{cases}
    1 & für \hspace{1mm} t_j \leq t \leq t_{j+1} \\
    0 & sonst
\end{cases}$ \newline

$N_{j,m}(t) = \dfrac{t-t_j}{t_{j+m-1}-t_j} N_{j,m-1}(t) +
\dfrac{t_{j+m} - t}{t_{j+m}-t_{j+1}} N_{j+1,m-1}(t), \hspace{5mm} m=2,3,\dots,k$ \newline

$t_j = \begin{cases}
    0, & für \hspace{1mm} j < k \\
    j-k+1, & für \hspace{1mm} k \leq j \leq n, \hspace{2mm} 0 \leq j \leq n + k\\
    n-k+2, & für \hspace{1mm} j > n
\end{cases}$ \newline

$t = (t_o, t_1, \dots, t_{n+k}), \hspace{2mm} j = i, \dots, i + k, \hspace{2mm} für \hspace{1mm} i = 0, \dots, n$

## Wie werden rationale B-Splines-Kurven (NURBS) berechnet?
$P_j = (x_j, y_j, z_j) \equiv C_j = (x_j w_j, y_j w_j, z_j w_j, w_j)$ \newline

$P_H(t) = \sum_{j=0}^n N_{j,k}(t) C_j$ \newline

$P(t) = \dfrac{\sum_{j=0}^n N_{j,k}(t) w_j P_j}{\sum_{j=0}^n N_{j,k}(t) w_j}$

## Was sind NURBS-Kurven?
* Non Uniform Rational Basic Splines
* allgemeinste Form von Freiformkurven
* erweitern die Funktionalität der Bézier- und B-Spline-Kurven
    * durch zusätzliche Gewichte $w_i$
    * die homogene Koordinate, für die Koordinaten der Kontrollpunkte
* Bézier- und B-Spline-Kurven sind Spezialfälle von NURBS-Kurven
* NURBS sind invariant bei den Transformationen
    * Skalierung, Translation, Rotation, Scherung und den Parallel- und Perspektivprojektionen

