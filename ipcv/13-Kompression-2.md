# Kompression II

## Was ist RLE?
* Run Length Encoding (Lauflängenkodierung)
* komprimieren klappt nur, wenn diese eine Regelmässigkeit aufweisen
* haben die Daten eine hohe Entropie, lassen sie sich nur schwer, bzw. gar nicht komprimieren

## Wie funktioniert RLE?
* __Gegeben:__ $000000000000000001111111111111111111000000000000011111111$
* __Komprimiert:__ $(17, 0, 19, 1, 13, 0, 8, 1)$

## Wie heissen bekannte Lempel-Ziv Kompressions Techniken?
* LZ77 (Sliding Window)
* LZ78 (Basiert auf einem vollständigen Wörterbuch)
* LZW (Variante von LZ78, Wörterbuch dynamisch)

* verwendet zwei Fenster: einen Puffer (buffer) und ein Vorschaufenster (look-ahead buffer)
* Idee: suche gleiche Textteile im Puffer und im Vorschaufenster.

## Wie funktioniert LZ77?
_In diesem Beispiel ein Puffer mit der Länge 7 und ein Vorschaufenster mit der Länge 4_

| 7 | 6 | 5 | 4 | 3 | 2 | 1 |   |   |   |   |               | Code      |
|---|---|---|---|---|---|---|---|---|---|---|---------------|-----------|
|   |   |   |   |   |   |   | B | A | N | A | $\rightarrow$ | $(0,0,B)$ |
|   |   |   |   |   |   | B | A | N | A | N | $\rightarrow$ | $(0,0,A)$ |
|   |   |   |   |   | B | A | N | A | N | E | $\rightarrow$ | $(0,0,N)$ |
|   | B | A | N | A | N | E |   |   |   |   | $\rightarrow$ | $(2,2,E)$ |

## Wie funktioniert LZ78?
* Ausgangslage: $ABBCBCABABCAABCAAB$
* Komprimierte Meldung: $(0,A),(0,B),(2,C),(3,A),(2,A),(4,A),(6,B)$

| output | index | string |
|--------|-------|--------|
| (0,A)  | 1     | A      |
| (0,B)  | 2     | B      |
| (2,C)  | 3     | BC     |
| (3,A)  | 4     | BCA    |
| (2,A)  | 5     | BA     |
| (4,A)  | 6     | BCAA   |
| (6,B)  | 7     | BCAAB  |

## Wie funktioniert LZW?
\begin{figure}[H]
    \includegraphics[width=0.8\textwidth]{images/13A-LZW.png}
\end{figure}

## Wie funktioniert die Huffmann-Kodierung?
1. Erstelle eine Wald von Bäumen indem für jedes Zeichen ein Baum erstellt wird
2. suche die beiden Bäume im Wald, die für die Zeichen mit der kleinsten Wahrscheinlichkeit stehen
3. kombiniere diese durch Einführung einer gemeinsamen Wurzel zu einem neuen Baum 
4. die Wahrscheinlichkeit dieser Wurzel ist die Summe der Wahrscheinlichkeiten der Einzelbäume
5. Springe zu 2 bis nur noch ein einziger Baum vorhanden ist

## Wie funktioniert die Arithmetische Kodierung?
* Gegeben: Text "ABCDA" und $p(A)=0.4, p(B)=0.2, p(C)=0.1, p(D)=0.3$
* Irgend ein Wert aus dem letzten Intervall kann als Code für ABCDA verwendet werden
* z.B. .21376 kann mit möglichst wenig Bits dargestellt werden

\begin{figure}[H]
    \includegraphics[width=0.4\textwidth]{images/13B-Arithmetische-Kodierung.png}
\end{figure}

## Wie ist der Informationsgehalts eines Ereigniss definiert?
$I(p) = -log_2 p$ wobei $p$ die Wahrscheinlichkeit für das Ereignis ist

## Wie kann die Entropie eines Codes berechnet werden?
$H(X) = - \displaystyle\sum_{i=1}^n p(x_i) log_2 p(x_i) = E[I(X)]$

