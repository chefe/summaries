# Farbe

## Was ist Farbe?
* Elektromagnetische Strahlung
* von ca. 400nm (ultraviolett)
* bis ca. 700nm (infrarot)

## Wie lässt sich das Auge mit einer Kamera vergleichen?
* Iris: Kreisring mit radialen Muskeln
* Pupille: Öffnung, durch Iris kontrolliert
* Linse: Fokussieren
* Photorezeptoren: Nehmen das Licht wahr

## Für was sind die Stäbchen und Zäpfchen zuständig?
* Stäbchen 
    * Englisch: rods
    * für Intensität der Farbe verantwortlich
    * es gibt ca. $75 - 100 * 10^6$ Stäbchen
* Zäpfchen 
    * Englisch: cones
    * für Farbe verantwortlich
    * es gibt ca. $6 - 7 * 10^6$ Zäpfchen

## Was ist die Fovea?
Gebiet im Zentrum des Sichtfeldes mit grosser Zäpfchendichte, aber ohne Stäbchen

## Welche 3 Arten von Zäpfchen gibt es?
* S - ca. 440nm (blau)
* M - ca. 530nm (grün)
* L - ca. 560nm (rot)

## Wie ist das Verhältnis zwischen den 3 Zäpfchenarten?
L : M : S = 10 : 5 : 1

## Wie ist das CIE Farbsystem aufgebaut?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/02A-CIE.png}
\end{figure}

## Welche Farbmodelle gibt es?
RGB, CMY / CMYK, YUV, HSV, YCbCr, CIE Lab

## Wie ist das RGB Farbmodell aufgebaut?
* basiert auf dem Additives Farbmodell
* eine Farbe wird durch 3 Grundfarben rot, grün und blau dargestellt C = (r,g,b)
* der Wertebereich von r, g und b liegt zwischen 0 und 1
* wird für Monitore gebraucht

## Wie ist das CMY Farbmodell aufgebaut?
* Farbsystem für die subtraktive Farbmischung
* Grundfarben sind die Komplementärfarben von R, G, B
* C = cyan, M = magenta, Y = yellow
* Umrechnung: $(C, M, Y)^T = (1, 1, 1)^T - (R, G, B)^T$
* wird bei der Drucktechnik verwendet

## Wie ist das HSV Farbsystem aufgebaut?
* Empfindungsmässig bedeutsame Dimensionen
* Hue (Farbton, Farbe), Saturation (Sättigung, Reinheit), Value (Intensität)

## Wie ist das YUV Farbsystem aufgebaut?
* Y: Helligkeit, UV: Farbkodierung, häufig mit 1/4 der Auflösung
* wird für Composite Video erwendet
* Umrechnung von RGB:
    * $Y = 0.299 * R + 0.587 * G + 0.114 * B$
    * $U = 0.436 * (B - Y) / (1 - 0.114)$
    * $V = 0.615 * (R - Y) / (1 - 0.299)$

## Wie ist das CIE Lab Farbsystem aufgebaut?
* 3 Achsen (L: Helligkeit, a: rot – grün Achse,  b: gelb – blau Achse)
* absolutes Farbsystem
* gleiche Abstände für gleich empfundene Farbunterschiede

