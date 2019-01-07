# Visibility

## Was sind Algorithmen für verdeckte Linien und Flächen?
* Backface Culling (WebGL)
* Tiefensortierung (Painters Algorithms)
* Z-Buffer (WebGL)
* Warnock Algorithmus
* Raycasting / Raytracing

## Wie funktioniert Backface Culling?
* bei geschlossenen Objekten sind die Rückseiten nie sichtbar
* dh. sie müssen nicht gezeichnet werden
* der Test erfolgt durch die Betrachtung des Normalenvektors
* falls dieser negative ist wird die Seite ignoriert

## Was ist die Idee hinter der Tiefensortierung?
* Sortiere Polygone in geeigneter Reihenfolge
* Zeichne Polygone in dieser Reihenfolge,
* die zuletzt gezeichneten Polygone überdecken die früheren

## Wie wird bei der Sortierung für die Tiefensortierung vorgegangen?
1. sortiere Polygone nach minimaler z-Koordinate
2. falls sich die Polygone in z überlagern, betrachte zusätzliche Bedingungen
3. falls keine der Bedingungen erfüllt ist,
    \newline vertausche die Polygone und überprüfe die Bedingungen nochmals

## Welche Bedingungen werden bei der Tiefensuche überprüft?
_Voraussetzung: Polygon P ist in der Sortierung vor Q_

1. Überlagern sich die x-Ausdehnungen nicht?
2. Überlagern sich die y-Ausdehnungen nicht?
3. Liegt P ganz auf der vom Betrachter abgewandten Seite von Q?
4. Liegt Q ganz auf der Betrachterseite von P?
5. überlappen sich die Polygone nicht auf der Projektion in die xy Ebene?

## Was ist wenn es keine gültige Reihenfolge für die Tiefensortierung gibt?
dann muss ein Polygon entlang der Ebene des anderen geschnitten werden

## Was sind die Vor- und Nachteile der Tiefensortierung?
* __Vorteile:__ auch für transparente Objekte möglich,  einfach für Spezialfälle (2.5D)
* __Nachteile:__ ineffizient für viele Objekte O(n^2),  nicht Hardware unterstützt

## Was ist die Idee des Z-Buffer Algorithmus?
* pro Pixel wird ausser der Farbe auch die Tiefe (z-Wert) gespeichert
* beim Zeichnen jedes Pixels wird geprüft of der neue Pixel näher liegt

## Wie könnte der Z-Buffer Algorithmus implementiert werden?
```
// Initialisierung                  // Polygone zeichnen
for y = 0 to YMAX do                for alle Polygone q do
    for x = 0 to XMAX do                for alle pixel p(x,y) in q do
        color[x,y] = Background             z = CalculateDepth(q,x,y);
        depth[x,y] = MAXDEPTH               if z > depth[x,y] then
    end                                         depth[x,y] = z;
end                                             color[x,y] = Color of q
                                            end
                                        end
                                    end
```

## Wie wird z berechnet?
$z = \dfrac{-D -Ax - By}{C}$, $Ax + By + Cz + D = 0$

$z_{neu} = \dfrac{-D -A(x_{alt} + 1) - By}{C} = z_{alt} - \dfrac{A}{C}$

## Was sind die Vorteile des z-Buffer Algorithmus?
* Hardware unterstützt
* Polygone können in beliebiger Reihenfolge gezeichnet werden
* Berechenzeit O(n), häufig konstant ab einer gewissen Anzahl Polygone

## Was sind die Nachteile des z-Buffer Algorithmus?
* Rundungsprobleme
* Gleiche z-Werte problematisch
* grosser Speicherbedarf

## Was ist die Idee des Warnock Algorithmus?
* rekursive Unterteilung des Bildbereichs
* falls ein Bereich "einfach" zu zeichnen ist, wird er gezeichnet
* sonst wird er in vier Bereiche geteilt.

## Was sind die Kriterien des Warnock Algorithmus für Einfachheit?
1. der Bereich kein Polygon enthält
2. der Bereich nur ein Polygon enthält
3. der Bereich ein Polygon enthält, das am nächsten liegt und den Bereich vollständig ausfüllt
4. der Bereich nur aus einem Pixel besteht

## Was ist der Unterschied zwischen Objektraum und Bildraum?
* Objektraum Algorithmus
    * iteriert über die zu zeichnenden Objekte und zeichnet diese
* Bildraum Algorithmus
    * iteriert über die zu zeichnenden Pixel und findet die relevanten Objekte

