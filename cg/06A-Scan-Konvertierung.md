# Scan Konvertierung

## Wie könnte ein Algorithmus zum Zeichnen einer Linie aussehen?
```
Brute Force Version            Inkrementell Version
---------------------------    ---------------------------
for x = x0 to x1 do            y = B
    y = m * x + B              for x = x0 to x1 do
    WritePixel(x, Round(y))        y += m
end                                WritePixel(x, Round(y))
                               end
```

## Was ist ein  DDA?
Digital Differential Analyzer

## Was sind die Nachteile von DDA?
* es wird mit Gleitkommazahlen gerechnet
* die Rundungsoperation ist aufwendig

## Welche Arten gibt es um eine Gerade zu definiern?
* explizit (Geradengleichung)
* implizit (Mittelpunktschema)
* Parameterdarstellung

## Was ist die Definition des Mittelpunktschema?
* Implizite Darstellung einer Linie:
    * $F(x,y) = ax + by + c$
* Ist der Punkt (x,y) auf der Linie, so gilt:
    * $F(x,y) = 0$,
* Ist der Punkt (x,y) unterhalb oder oberhalb der Linie so ist:
    * $F(x,y) = d \neq 0$

## Wie wird beim Runden entschieden wo ein Punkt gezeichnet werden soll?
* Bei einer Liniensteigung gibt es zwei Möglichkeiten
    * $E = (x_i + 1, y_i)$
    * $NE = (x_i + 1, y_i + 1)$
* Um zu entscheiden betrachten wir den Mittelpunkt
    * $M = (x_i + 1, y_i + 1/2)$
* Liegt M unterhalb der Linie, so nehmen wir NE, andernfalls E
* Um zu entscheiden auf welcher Seite M liegt, betrachten wir
    * $d = F(M) = a(x_i + 1) + b(y_i + 1/2) + c = \Delta y (x_i + 1) - \Delta x (y_i + 1/2) + c$

## Wie könnte der Mittelpunktschema-Algorithmus implementiert werden?
```
// Initialisierung      // Berechnung
Dx = x1 - x0;           WritePixel(x0, y0)
Dy = y1 - y0;           for x = x0+1 to x1 do
DE = 2 * Dy;                if d <= 0 then
DNE = 2 * (Dy - Dx);            d = d + DE;
d = 2 * Dy - Dx;            else
y = y0;                         d = d + DNE;
                                y = y + 1;
                            end
                            WritePixel(x,y);
                        end
```

## Wie kann das Mittelpunktschema für Kreise angewandt werden?
$d = F(M) = (x_i + 1)^2 (y_i - 1/2)^2 - R^2$

## Wie könnte der Mittelpunktschema-Algorithmus für Kreise implementiert werden?
```
// Initialisierung      // Berechnung
x = 0;                  WritePixel(x,y);
y = R;                  while y > x do
d = 1 -R;                   if d < 0 then
                                d = d + 2*x + 3;
                            else
                                d = d +2*(x-y) + 5;
                                y = y -1;
                            end
                            x = x + 1;
                            WritePixel(x,y);
                        end
```

## Wie könnte ein Algorithmus zum Füllen von Regionen implementiert werden?
```
proc FloodFill(int x, int y, Color oldColor, Color newColor)
    if ReadPixel(x, y) == oldColor then
        WritePixel(x, y, newColor);
        FloodFill(x, y-1, oldColor, newColor);
        FloodFill(x-1, y, oldColor, newColor);
        FloodFill(x, y+1, oldColor, newColor);
        FloodFill(x+1, y, oldColor, newColor);
    end
end
```

## Wie werden gefüllten Polygonen gezeichnet?
* Effizient mit dem Scanlinien-Algorithmus
* Dabei werden Spans entlang der y Koordinate des Fensters gezeichnet
* Die Kanten werden dabei vorsortiert und die aktuellen zu zeichnenden Spans verwaltet

## Welche Tabellen benötigt der Scanlinien-Algorithmus?
* Kantentabelle (ET):
    * enthält alle Kanten nach minimaler $y$ Koordinate sortiert
    * innerhalb gleicher $y_{min}$ wird nach $x$ sortiert
* Tabelle aktiver Kanten (AET):
    * enthält alle Kanten die von der aktuellen Scanlinie geschnitten werden
    * sortiert nach $x$
* Informationen pro Kante:
    * $x, 1/m, y_{min}, y_{max}$

## Wie könnte ein Scanlinienalgorithmus implementiert werden?
```
Erzeuge ET
Initialisiere AET = empty
y = 0

Repeat
    Addiere alle Kanten ET(y) zu AET
    Sortiere AET nach x
    Zeichne Spans
    y = y + 1
    Entferne Kanten mit ymax = y aus AET
    Aktualisiereden x Wert aller Kanten in AET
Until AET == empty
```

## Welche Ansätze gibt es für das Zeichnen von Dreiecken?
* "Brute Force" Algorithem:
    * für alle Pixel-Kandidaten (innerhalb Bounding-Box)
    * berechne ob sich der Pixel innerhalb des Dreiecks befindet
* Baryzentrische Koordinaten
    * Darstellung eines Punktes P im Dreieck ABC
    * $P = \alpha A + \beta B + yC$, $\alpha + \beta + y = 1$
    * $\alpha$, $\beta$ und $y$ heissen baryzentrische Koordinaten
    * Werte zwischen 0 und 1 falls Punkt innerhalb ABC
* Unterteilung der Ebene mit 3 Geraden (Dreieckskanten)
    * jeweils prüfen ob Punkt links/recht oder oben/unten der Gerade ist

## Was ist Anti-Aliasing?
* beim Zeichnen von Linien und Polygonen entsteht ein Treppenmuster
* zum Verhindern von Aliasing werden Anti-Aliasing Techniken verwendet
    * beispielsweise Prefiltering oder Supersampling

## Wie funktioniert Prefiltering?
* arbeitet beispielsweise mit Graustufen
* bestimme die Fläche der Linie auf dem Pixel
* wähle die Farbintensität proportional zur Fläche

## Wie funktioniert Supersampling?
* Bild in $n$ Mal grössere Auflösung berechnen
* immer $n$x$n$ Pixel zu einem Zusammenfassen
* als Farbwert den Mittelwert der Pixel nehmen

