# Clipping

## Was ist die Definition von 2D Clipping?
Die zu zeichnenden Grafikobjekte werden typischerweise in
einem Bereich spezifiziert der grösser als das dargestellte
Fenster ist

## Was ist die Definition von 3D Clipping?
Objekte die sich ausserhalb des Viewing Bereichs befinden,
müssen nicht mehr weiterverarbeitet werden:

## Was kann durch 3D Clipping verhindert werden?
* unnötige Rasterisierung
* Rechenproblemen bei sehr grossen z-Koordinaten

## Welche Clipping Verfahren gibt es?
* Scissering:
    * es werden alle Pixel berechnet
    * aber nur diejenigen gezeichnet die im Fenster liegen
* Temporärer Buffer
    * das ganze Objekt wird in einen temporären Buffer gezeichnet
    * der Buffer wird kopiert
* Analytische Berechnung
    * derjenigen Teile, die im Innern des Fensters liegen

## Wie funktioniert das Clipping von Linien nach Cohen-Sutherland?
1. Die ganze Ebene wird in Bereiche unterteilt
2. Durch Vergleichen der Bereiche in denen die Endpunkte liegen
    \newline wird entschieden ob die Linie einfach akzeptiert oder abgelehnt werden kann
3. Ist dies nicht der Fall wird die Linie in zwei Teile geteilt,
    \newline wovon eines abgelehnt wird und mit dem anderen wird zu Schritt 2 zurückgekehrt

## Wie funktioniert die Bereichsunterteilung beim Clipping?
```
1001 | 1000 | 1010      oberhalb (Bit 1)
-----+------+-----      unterhalb (Bit 2)
0001 | 0000 | 0010      rechts (Bit 3)
-----+------+-----      links (Bit 4)
0101 | 0100 | 0110
```

## Was ist der Vorteil des Algorithmus von Sutherland-Hodgeman?
Parallele Implementation möglich

## Wie funktioniert der Sutherland-Hodgman Algorithmus für Polygone?
_Der Algorithmus wird für jede Begrenzungslinie einmal durchlaufen_

* Betrachtet wird jeweils der aktuelle Punkt S, sowie der nächste Punkt P
* 4 Konfigurationen von S und P sind möglich
* Je nach Konfiguration werden 0-2 Eckpunkte des neuen Polygons ausgegeben

## Was ist die vier möglichen Ausgabe des Sutherland-Hodgman-Algorithmus?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/08A-sutherland-hodgman.png}
\end{figure}

## Was liegt der Punkt I beim Sutherland-Hodgman Algorithmus?
Schnittpunkt der Linie zwischen S und P mit der
Teilungsgerade zwischen aussen und innen

