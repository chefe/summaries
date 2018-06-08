# Einführung

## Für welche Zwecke wird Bilderkennung eingesetzt?
* Gesichtserkennung
* Robotersteuerungen
* Medizinische Anwendungen
* Selbstfahrende Autos

## Was ist der Unterschied zwischen Computergrafik und Bildverarbeitung?
* Computergrafik
    * Erzeugung von realistischen Bildern aus der Beschreibung von Objekten
* Bildverarbeitung
    * Erkennung von Objekten oder Szenen aus Bildern

## Was ist der Unterschied zwischen High und Low Level Vision?
* High Level Vision
    * Computer Vision
    * Interpretation des Bildes
    * Erkennen von Objekten
* Low Level Vision
    * Image Processing
    * Bildverbesserungen (z.B. Kontrast, Rascuhunterdrückung)
    * Erkennen von Low Level Features (Kanten, Linien, ...)

## Was versteht man unter der Vorverarbeitung von Bildern?
* Informationen verstärken (z.B. Wertebereich skalieren)
* Reduktion von Störungen (z.B. Rauschen, Artefakte, ...)

## Zwischen welchen zwei Bildverarbeitungs-Methoden unterscheidet man?
* Punktoperatoren
    * Operation auf einem Punkt
    * der Grau- oder Farbwert wird transformiert
* Nachbarschaftsoperatoren
    * Ergebnis hängt von der Umgebung des Punktes ab
    * z.B. 3x3 Filteroprtationen auf Umgebung

## Was ist eine Punktbildfunktion?
Veränderungen der Intensitätswerte eines Pixels durch eine Funktion

Mathematisch: $i_{neu} = f(i_{alt})$

## Was sind Beispiele für Punktbildfunktionen?
* Schwellwert
* Helligkeitsveränderung
* Kontrast Korrektur
* Gamma Korrektur

## Wie sieht die Punktbildfunktion bei einer Helligkeitsveränderung aus?
\begin{figure}[H]
    \includegraphics[width=0.3\textwidth]{images/01A-helligkeitsveraenderung.png}
\end{figure}

## Wie sieht die Punktbildfunktion bei einer Kontrastveränderung aus?
\begin{figure}[H]
    \includegraphics[width=0.3\textwidth]{images/01B-kontrastveraenderung.png}
\end{figure}

## Wie sieht die Punktbildfunktion bei einer Gamma-Korrektur aus?
\begin{figure}[H]
    \includegraphics[width=0.3\textwidth]{images/01C-gamma-korrektur.png}
\end{figure}

## Was ist ein Histogramm?
Farbverteilung des Bilde, Wie häufig kommt welche Farbe / Helligkeit vor?

Mathematisch: 

* Formel: $H(k) = |\{x_i | v_k <= I(x_i) < v_{k+1} \}|$
* $k$: Anzahl "Bins" des Histogramms
* $v_k$: Werte der Bins

## Wie verändert sich das Histogramm bei  anwenden einer Punktbildfunktion?
$H_{neu}(i) = H_{alt}(i) * \frac{1}{f'(i)}$

## Was ist das Ziel eines Histogrammausgleich?
Transformation der Grauwerte, so dass das Histogramm 
des neuen Bildes möglich ausgeglichen ist

## Wie lässt sich der Histogrammausgleich berechnen?
$f'(i) = \frac{1}{c} H_{alt}(i)$

$f(i) = \frac{1}{c} \int_0^i H_{alt}(i) dj$

## Wie sieht der Histogrammausgleich aus für das gegebene Bild?
```
                0 1 1 2 2
                2 1 1 2 2
Ausgangsbild:   4 5 6 7 7   Formel: f(i) = x/c * cdf(i)
                8 8 7 7 7
                8 8 9 9 9

  Pixelwert: i          0    1    2    3    4    5    6    7    8    9
 Histogramm: H(i)       1    4    5    0    1    1    1    5    4    3
 Kum Häufig: cdf(i)     1    5   10   10   11   12   13   18   22   25
  Ausgleich: f(i)    0.36 1.80 3.60 3.60 3.96 4.32 4.68 6.48 7.92 9.00
  Runden: H_neu(i)      0    2    4    4    4    4    5    6    8    9
```

## Was ist eine Morphologische Operation?
* werden zur Bearbeitung von Binärbildern verwendet
* entstehenden Regionen müssen jedoch häufig weiterverarbeitet werden
* können durch Mengenoperation dargestellt werden 

## Welche Morphologische Operationen gibt es?
* __Dilate__: Verdickt das Objekt
* __Erode__: Verdünnt das Objekt
* __Closing__: Dilate gefolgt von Erode; eliminiert Löcher
* __Opening__: Erode gefolgt von Dilate; separiert Objekte

## Welche Fragen können mit Connected Component Labeling beantwortet werden?
* Wie viele Objekte sind auf einem (binären) Bild zu sehen?
* Wie gross (Anzahl Pixel) sind die Objekte?
* Welche Regionen sind zusammenhängend?

## Was versteht man unter 4er / 8er Zusammenhang?
\begin{figure}[H]
    \includegraphics[width=0.3\textwidth]{images/01D-nachbarschaft.png}
\end{figure}

## Wie funktioniert Connected component labeling?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/01E-connected-component-labeling.png}
\end{figure}

