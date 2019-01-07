# Farbe

## Durch welche Charakteristiken kann eine Farbe beschrieben werden?
* Farbton / Farbe
* Farbstich / Sättigung
* Helligkeit

## In welche Bereiche kann das sichtbare Licht aufgeteilt werden?
* Ultraviolett (weniger als 380nm)
* Violett (380–420nm)
* Blau (420–490nm)
* Grün (490–575)
* Gelb (575–585nm)
* Orange (585–650nm)
* Rot (650–750nm)
* Infrarot (mehr als 750nm)

## Wie entsteht die Farbe einer Fläche?
* Lichtquelle bescheint ein Objekt
* Oberfläche des Objekt reflektiert das Licht in Abhängigkeit des Normalenvektor
* Kamera fängt die Strahlen der Reflexion ein

## Aus welchen zwei Bestandteilen setzt sich die Farbe eines Objekts zusammen?
* Beleuchtung
* Reflexion

## Wie kann ein Auge mit einer Kamera verglichen werden?
* __Iris:__ Kreisring mit radialen Muskeln
* __Pupille:__ Öffnung, durch Iris kontrolliert
* __Linse:__ erlaubt Fokussieren
* __Photorezeptoren:__ Nehmen das Licht wahr

## Wie viele Stäbchen und Zäpfchen hat ein Mensch?
* 75 - 100*10^6 - Stäbchen für Intensität
* 6 - 7*10^6 - Zäpfchen für Farbe

## Was ist die Fovea?
Gebiet im Zentrum des Sichtfeldes mit grosser Zäpfchendichte, aber ohne Stäbchen

## Welche Arten von Zäpfchen gibt es?
* 3 Arten von Zäpfchen:
    * S - blau (440nm)
    * M - grün (530nm)
    * L - rot (560nm)
* Verhältnis: L : M : S = 10 : 5 : 1

## Wie sehen wir Farbe?
* Spektrale Strahlungsverteilung wird durch das Auge eingefangen
* Stäbchen und Zäpfchen reagieren auf diese Strahlungsverteilung
* Im Kopf wird aus diesen Komponenten dann die "Farbe" gebildet

## Was ist der unterschied der Helligkeitswahrnehmung bei Stäbchen und Zäpfchen?
* Stäbchen
    * Scoptic Vision
    * 400nm - 600nm
    * besser bei weniger Licht
* Zäpfchen
    * Photopic Vision
    * 430nm - 680nm
    * besser bei mehr Licht

## Können alle Farben durch 3 Farben gemischt werden?
* Nein, weil teilweise negative Teile benötigt werden

## Wie sehen die Spektralwertkurven im CIE Farbsystem aus?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/01B-cie-spektralwertkurven.png}
\end{figure}

## Wie setzten sich die Anteile im CIE Farbsystem zusammen?
* $X = k \int P(\lambda) \overline{x}_{\lambda} d \lambda$
* $Y = k \int P(\lambda) \overline{y}_{\lambda} d \lambda$
* $Z = k \int P(\lambda) \overline{z}_{\lambda} d \lambda$

## Was ist die Normfarbtafel und wie sieht sie aus?
Ebene im X, Y, Z Farbraum die durch (1,0,0), (0,1,0) und (0,0,1) geht

\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/01B-cie-normfarbtafel.png}
\end{figure}

## Welche Farbmodelle gibt es?
* Hardware orientierte Farbmodelle:
    * RGB für Monitore
    * CMY und CMYK für die Drucktechnik
    * YIQ fürFernsehen
* Intuitive Farbmodelle:
    * HSV
    * Munsellsystem
    * CIE Lab

## Was sind die Eigenschaften des RGB Farbmodell?
* Additives Farbmodell
* 3 Grundfarben (Rot, Grün, Blau)
* Wertebereich der Komponenten von 0 bis 1

## Welche Werte haben die "einfachen" RGB Farben?
```
(0, 0, 0) = Schwarz      (0, 1, 1) = Cyan
(1, 0, 0) = Rot          (0, 0, 1) = Blau
(1, 1, 0) = Gelb         (1, 0, 1) = Magenta
(0, 1, 0) = Grün         (1, 1, 1) = Weiss
```

## Was sind die Eigenschaften des CMY Farbmodell?
* Farbsystemfürdie subtraktive Farbmischung
* 3 Grundfarben (Cyan, Magenta, Gelb)
* Grundfarben sind Komplementärfarben von RGB
* Wertebereich der Komponenten von 0 bis 1

## Wie ist der mathematische Zusammenhang zwischen RGB und CMY?
```
C = 1 - R
M = 1 - G
Y = 1 - B
```

## Was bedeutet CMYK?
C = cyan, M = magenta, Y = yellow, K = black

## Wie lässt sich CMYK aus CMY berechnen?
```
CMY => C'M'Y'K

K = min(C, M, Y)
C' = C - K
M' = M - K
Y' = Y - K
```

## Was sind die Eigenschaften des HSV Farbmodell?
* Empfindungsmässig bedeutsame Dimensionen
* Setzt sich ebenfalls aus 3 Grundkomponenten zusammen
    * Hue(Farbton, Farbe),
    * Saturation (Sättigung, Reinheit)
    * Value (Intensität)

## Welche Gradwerte von HSV werden den RGB Grundfarben zugeordnet?
```
xxx = Schwarz     xxx = Weiss
000 = Rot         060 = Gelb
120 = Grün        180 = Cyan
240 = Blau        300 = Magenta
```

## Was ist YUV?
* wird gebraucht für Composite Video
* Y: Helligkeit
* UV: Farbkodierung, häufig mit 1/4  der Auflösung

## Wie kann YUV aus RGB berechnet werden?
```
Y = 0.299 * R + 0.587 * G + 0.114 * B
U = 0.436 * (B - Y) / (1 - 0.114)
V = 0.615 * (R - Y) / (1 - 0.299)
```

## Für was stehen die Begriffe Tints und Shades?
* Tints:
    * Verringern der Sättigung
    * Von "reiner" Farbe zu Weiss
* Shades:
    * Verringen der Helligkeit
    * Von "reiner" Farbe zu Schwarz

## Was ist das CIE Lab System?
* L: Helligkeit
* a: rot - grün Achse
* b: gelb - blau Achse
* absolutes Farbsystem
* gleiche Abstände für gleich empfundene Farbunterschiede

## Was passiert bei einer Gammakorrektur?
* Anpassen einer oder mehren Farbkurven im Bild
* Ziel ist die Helligkeit im Bild besser zu verteilen

## Was ist das spezielle von Helligkeit und Kontrast?
werden beide logarithmisch wahrgenommen

## Was ist Kontrast?
Unterschied zwischen zwei Helligkeitswerte

## Was ist HDR?
* High Dynamic Range
* Hoher Kontrast

## Was ist der Grund, dass viele Farbsysteme 3 Grundfarben verwenden?
Farben werden durch 3 Typen von Zellen wahrgenommen.

## Wie viele Spektralfarben können durch Mischen von 2 Spektralfarben erzeugt werden?
Keine

## Welche Farbe ist auch bei sehr wenig Licht noch gut sichtbar?
grün-blau

## Welche Farben kann ein Monitor darstellen?
Alle Farben die im Innern des Dreiecks RGB liegen

## In welcher Farbe erscheint ein gelber Tennisball?
* wenn er von einer blauen Lichtquelle beschienen wird?
    * => schwarz
* wenn er von einer roten Lichtquelle beleuchtet wird?
    * => rot

