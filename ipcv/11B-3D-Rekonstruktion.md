# 3D Rekonstruktion

## Was sind homogene Koordinaten?
* Punkte in 3D werden mit 4D Koordinaten $(x, y, z, w)$ dargestellt
* Punkte in 2D werden mit 3D Koordinaten $(x, y, w)$ dargestellt
* Abbildungen in 3D, 2D oder von 3D nach 2D entsprechend mit 4x4, 3x3 oder 4x3 Matrizen

## Was sind die Eigenschaften der verschiedenen Transformationen?
* Euklidisch
    * Geraden, Strecken und Winkel bleiben erhalten
* Affin
    * Geraden und Parallelität bleiben erhalten
    * Verhältnisse bleiben erhalten
* Projektiv / Perspektivisch
    * Kollinearität bleibt erhalten

## Wie wird die Disparity Map berechnet?
* für jeden Pixel im linken Bild
    * betrachte Pixel auf der gleichen horizontalen Linie im rechten Bild
    * suche Pixel der am besten "matched"

## Was ist der allgemeine Fall bei zwei Kameras?
* Position der Kameras ist nicht bekannt
* Kamera Kalibration ist nicht bekannt
* 3D Szene ist nicht bekannt

## Was ist der Zweck der mathematische Darstellung mit der Epipolargeometrie?
alle möglichen Positionen des Punkts $x$ im einen Bild liegen auf der Epipolarlinie $l$ im anderen Bild

## Wie kann die Fundamentalmatrix F gefunden werden?
* finden von korrespondierenden Punkten auf beiden Bilde
* F ist eine 3x3 Matrix
* minimal 8 Punkte notwendig

