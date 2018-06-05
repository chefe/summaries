# Faltung

## Wie wird die 1D Faltung berechnet?
* Gegeben: $x[k] = [1, 2, 3, 1, 2, 3, \dots]$ und $y[k] = [1, 3, 1, 3, 3, 1]$
* Faltung: $(x \star y)[k] = (x \star y)_k = \sum_{i=-\infty}^{\infty} x_i y_{k-i} = \sum_{i=-\infty}^{\infty} x_{k-i} y_i$

## Was sind die Eigenschaften der Faltung?
* ist symmetrisch $\Rightarrow (x \star y)_k = (y \star x)_k$
* ist distributiv $\Rightarrow ((x + y) \star z)_k = (x \star z)_k + (y \star z)_k$
* ist assoziativ  $\Rightarrow ((x \star y) \star z)_k = (x \star (y \star z))_k$

## Wie ist die Delta-Folge definiert?
* Normale Delta-Folge: $\delta_k = 1$ falls $k = 0$, sonst $\delta_k = 0$
* Verschobene Delta-Folge: $\delta_k = 1$ falls $k = l$, sonst $\delta_k = 0$

## Wie wird die 1D Faltung anhand eines Beispiels berechnet?
__Gegeben:__ $f = \{0, 0, 0, 1, 1, 0, 0, 0\}$, $w = \{1, 2, 3, 2, 1\}$, $n = 7$

| $k$       | -3 | -2 | -1 | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|-----------|----|----|----|---|---|---|---|---|---|---|---|---|---|----|----|----|
| $f_k$     | 0  | 0  | 0  | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0  | 0  | 0  |
| $w_{7-k}$ | 0  | 0  | 0  | 0 | 0 | 0 | 1 | 2 | 3 | 2 | 1 | 0 | 0 | 0  | 0  | 0  |

$z_7 = \sum_{k=-3}^{12} f_k w_{7-k} = 1 * 1 + 1 * 2 = 3$

| $k$       | -3 | -2 | -1 | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|-----------|----|----|----|---|---|---|---|---|---|---|---|---|---|----|----|----|
| $z_k$     | 0  | 0  | 0  | 0 | 0 | 0 | 1 | 3 | 5 | 5 | 3 | 1 | 0 | 0  | 0  | 0  |


## Wie wird die Faltung in 2D berechnet?
__Gegeben:__ Pixelwert des ursprünglichen Bildes $I(u, v)$, Filtermatrix $\tilde{H}(i, j)$

$\\I'(u,v) = I(x, y) \star H(x, y) \\ = \sum_{i=-m}^m \sum_{i=-n}^n I(u - i, v - j) \tilde{H}(i, j) \\ = \sum_{i=-m}^m \sum_{i=-n}^n I(u + i, v + j) \tilde{H}(-i, -j)$

## Was ist die Korrelation?
* die Korrelation zweier Zahlenfolgen $x_k$ und $y_k$ ist ein Mass für die Ähnlichkeit zweier Signale
* die Definition ist ähnlich der Faltung (hier ist die Differenz und nicht die Summe der Indizes k)

## Wie wird die Korrelation berechnet?
* Normale Form: $(x \otimes y)_k = \sum_{i=-\infty}^{\infty} x_i y_{k + i}$
* Normierte Form: $(\widehat{x \otimes y})_k = \frac{\sum_{i=-\infty}^{\infty} x_i y_{k + i}}{\sqrt{\sum_{i=-\infty}^{\infty} x_i^2 \sum_{i=-\infty}^{\infty} x_{k + i}^2}}$

## Was sind die Eigenschaften der Korrelation?
* sind die Signale für irgend ein $k$ gleich, dann ist $corr(x, y)_k = 1$
* sind die Signale für irgend ein $k$ gegenphasig, dann ist $corr(x, y)_k = -1$
* verschwindet die Korrelation für jedes $k$, dann sind die Signale unkorrelier
* Es gilt: $0 \leq (\widehat{x \otimes y})_k \leq 1$

## Wie wird die 1D-Korrelation berechnet?
__Gegeben:__ Muster: 376 und Bild: 324138403232

| k         | -2 | -1 | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |
|-----------|----|----|---|---|---|---|---|---|---|---|---|---|----|----|
| $f_k$     | 0  | 0  | 3 | 2 | 4 | 1 | 3 | 8 | 4 | 0 | 3 | 2 | 3  | 2  |
| $w_k$     | 0  | 0  | 3 | 7 | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0  | 0  |
| $w_{k+1}$ | 0  | 3  | 7 | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0  | 0  |
| $w_{k+2}$ | 3  | 7  | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0  | 0  |
| $w_{k-1}$ | 0  | 0  | 0 | 3 | 7 | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0  | 0  |
| $w_{k-2}$ | 0  | 0  | 0 | 0 | 3 | 7 | 5 | 0 | 0 | 0 | 0 | 0 | 0  | 0  |
| $w_{k-3}$ | 0  | 0  | 0 | 0 | 0 | 3 | 7 | 5 | 0 | 0 | 0 | 0 | 0  | 0  |
| $w_{k-4}$ | 0  | 0  | 0 | 0 | 0 | 0 | 3 | 7 | 5 | 0 | 0 | 0 | 0  | 0  |
| $w_{k-5}$ | 0  | 0  | 0 | 0 | 0 | 0 | 0 | 3 | 7 | 5 | 0 | 0 | 0  | 0  |
| $w_{k-6}$ | 0  | 0  | 0 | 0 | 0 | 0 | 0 | 0 | 3 | 7 | 5 | 0 | 0  | 0  |
| $w_{k-7}$ | 0  | 0  | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 3 | 7 | 5 | 0  | 0  |

| k     | -2 | -1 | 0  | 1 | 2 | 3 | 4  | 5  | 6  | 7  | 8 | 9 | 10 | 11 |
|-------|----|----|----|---|---|---|----|----|----|----|---|---|----|----|
| $f \otimes w$ | 15 | 31 | 43 | . | . | . | 85 | 52 | 27 | 31 | . | . |  . |  . |

## Wie ist die Normalized Cross-Correlation Function definiert?
$NCCF(u,v) = \frac{\sum_{(x, y)^T \in B} f(x, y) g(x + u, y + v)}{\sqrt{\sum_{(x, y)^T \in B} (f(x,y))^2 \sum_{(x, y)^T \in B} (g(x + u, y + v))^2}}$

## Was ist die Funktion eines linearen Filters?
* berechnet den neuen Pixelwert mit einer linearen Funktion aus den Werten benachbarter Pixel
* muss folgende Bedingung erfüllen: $f(x + y) = f(x) + f(y)$

## Was will man mit einem Tiefpassfilter erreichen?
* das Bild weicher (Hamilton-Effekt) machen
* Kanten verwischen
* Details und Rauschen abschwächen
* homogene Bereiche unverändert lassen

## Wie ist der 3x3 Mittelwertfilter und der 3x3 Gaussfilter definiert?
Mittelwertfilter: $T_R = \frac{1}{9} \left( \begin{array}{rrr}1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1\end{array} \right)$
und Gaussfilter: $T_R = \frac{1}{16} \left( \begin{array}{rrr}1 & 2 & 1 \\ 2 & 4 & 2 \\ 1 & 2 & 1\end{array} \right)$

## Wie geht man mit dem Rand um?
* am Rand kein Filter
* Wert ausserhalb auf einen konstanten Wert setzen (Zero- oder Grauwert-Padding)
* Wert am Rand auch ausserhalb des Bildes verwenden (Last-Value)
* Bild periodisch fortsetzen
* Bild am Rand spiegeln (symmetrische Fortsetzung)
* Extrapolation über den Rand
* Konstruktion spezieller Filtermasken

## Was will man mit einem Hochpassfilter erreichen?
* das Bild härter machen
* Kanten und finde Details hervorheben
* Übergänge wie Kanten verstärken
* homogene Bereiche eliminieren

## Was ist die Grundlage eines Hochpassfilters?
* partielle Ableitung in $x$-Richtung der Graustufenfunktion
* $\frac{\partial f}{\partial x} \approx \frac{f(x + \Delta x, y) - f(x - \Delta x, y)}{2 \Delta x}$

## Was ist die Aufgabe des Laplace-Filter?
findet Punkte mit der grössten Krümmung

## Wie ist der Laplace-Filter definiert?
$L = \frac{1}{4} [f(x + \Delta x, y) + f(x-\Delta x, y) + f(x, y+\Delta y) + f(x, y-\Delta y) - 4f(x,y)$

$\\ L = \left( \begin{array}{rrr}0 & -1 & 0 \\ -1 & 4 & -1 \\ 0 & -1 & 0\end{array} \right)$

## Was ist die Aufgabe des Prewitt- und des Sobel-Operators?
stabile Kanten in 8 verschiedene Richtungen finden (durch 8 Drehung um $25^{\circ}$)

## Wie ist der Prewitt- und des Sobel-Operator definiert?
$P_1 = \left( \begin{array}{rrr}-1 & -1 & -1 \\ 0 & 0 & 0 \\ 1 & 1 & 1\end{array} \right)$, 
$S_1 = \left( \begin{array}{rrr}-1 & -2 & -1 \\ 0 & 0 & 0 \\ 1 & 2 & 1\end{array} \right)$

## Was sind die Eigenschaften des Median-Filter?
* Ausreisser und grosse Störungen (wie Salt-/Pepper-Noise) werden eliminiert
* Kanten und lineare Grauwertabstufungen werden nicht verändert
* geeignet für den Entfernung von Pixelstörungen
* es findet eine Art Glättung statt, wobei Kanten nicht verwischt werden

## Wie wird bei der Kantenextraktion vorgegangen?
* kombiniere $G_x$ und $G_y$ zu $\sqrt{G_x^2 + G_y^2}$
* trenne anschliessend die Kantenregionen von homogenen Flächen mittels eines Schwellwertes

## Wie wird bei der Eckenextraktion vorgegangen?
* Ecken sind Grauwertbereiche mit grossen zweiten Ableitungen
* wende $x$- und $y$-Richtungsdetektoren (1. Ableitung, bzw. Gradient) an
* wende auf diesen nochmals an (2. Ableitung, bzw. Hessematrix)
* Determinante der Hessematrix $G_{xx} G_{yy} - G_{xy} G_{yx}$ liefert Mass für die 2. Ableitung
* mit Schwellwert Ecken isolieren

