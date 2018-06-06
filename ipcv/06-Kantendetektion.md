# Kantendetektion

## Welche zwei Ansätze werden bei der Detektion von Objekten unterschieden?
* Kantenbasierte Verfahren: Objekte werden durch Kanten begrenzt
* Regionenbasierte Verfahren: Objekte werden durch ihr Inneres bestimmt

## Woher kommen Kanten?
* Änderung der Oberflächen
* Farbänderung
* Tiefenänderung
* Beleuchtungsänderung

## Wie können Kanten im Bild gefunden werden?
* Ableitung der Intensitätswerte
* optimaler Filter durch Gütekriterien (Canny Filter)
* Matched Filtering

## Was sollen die Eigenschaften eines guten Kantendetektors sein?
* gute Detektion: hohe Antwort des Filters
* gute Lokalisierung der Kante: gefundene Kante ist nahe bei der korrekten Kante
* Eindeutigkeit: es werden keine anderen Kanten in der Nähe gefunden

## Welche Funktion ist der optimale Kantenfilter?
die erste Ableitung einer Gaussfunktion

## Wie wird bei der Kantendetektion in 2D vorgegangen?
* Anwendung des Filters in verschiedene Richtungen
* Suchen der maximalen Filterantwort

## Welche Schritte werden bei der Kantendetektion in 2D abgearbeite?
* Filterung mit 2D Gaussfunktion
* Numerische Berechnung der $x$- und $y$-Ableitung 
* Kantenstärke an $(x,y) = \sqrt{DX^2 + DY^2}$
* Grössen des Gaussfilters kann angepasst werden um feinere oder gröbere Kanten detektieren

## Was ist das Ziel des Canny Kantenfilter?
* das Ziel ist eine nur 1 Pixel breite Kante
* Suchen von lokalen Maxima senkrecht zur Kantenrichtung
* wird üblicherweise als Non-Maxima Supression bezeichnet

## Wie funktioniert das Hysteresis Thresholding im Canny-Algorithmus?
* Verwendung von 2 Schwellwerten $T_{high}$ und $T_{low}$
* Pixel über $T_{high}$ gehören zu einer Kante
* Pixel unter $T_{low}$ gehören nicht zur Kante 
* Pixel über $T_{low}$ gehören nur dann zu einer Kante, 
* wenn sie über andere $T_{low}$ Pixel direkt mit einem $T_{high}$ Pixel verbunden sind

## Was ist das Ziel einer Hough-Transformation?
Detektion von Bildstrukturen die durch Parameter beschrieben werden

## Was ist das Problem bei einer Hough-Transformation für Geraden?
* Darstellung der Geraden ($y = ax + b$) ist ungünstig, da $a \rightarrow \infty$
* Darstellung durch Polarkoordinaten ($x cos \varphi + y sin \varphi = r$)

## Welche Schritte werden bei einer Hough Transformation durchlaufen?
* initialisiere Akkumulator
* für jedes detektierte Kantenelement: 
    * für jede Richtung $\varphi$
        * berechne $r = x cos \varphi + y sin \varphi$
        * inkrementiere Akkumulator ($\varphi$, r)
* Suche Maxima im Akkumulator

