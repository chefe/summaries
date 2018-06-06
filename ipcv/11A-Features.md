# Features

## Was ist Image Stitching und wie funktioniert es?
* Zusammensetzen von mehreren Bilder zu einem Gesamtbild
* Detektion von gemeinsamen Punkten in den Bildern
* Berechnung der für das Problem relevanten Informationen: Position, Drehung, Skalierung

## Wie funktioniert Feature Point Detektion?
* finde Keypoints
* finde Deskriptoren, die das Bild um den Keypoint beschreiben
* "Match" die Deskriptoren zwischen 2 Bildern

## Was sind die Anforderungen an die Keypoints?
* müssen invariant sein gegenüber
    * Translation (Verschiebung)
    * Rotation (Orientierung)
    * Skalierung (Grösse)

## Was bedeutet die Abkürzung SIFT?
Scale-Invariant Feature Transform

## Was sind gute Feature Points?
* Ecken
* Mittelpunkte von Kanten
* Endpunkte von Linien

## Wie funktioniert der DoG Filter?
* subtrahiert 2 Gauss gefilterte Bilder
* das Resultat ist ein Bild das vor allem Eckpunkte und Kanten enthält

## Wie geht der SIFT KeyPoint Detektor vor?
1. filtere das Bild mit Gauss Funktionen von verschiedenen $\sigma$
2. anweden des DoG Filters auf zwei gefilterte Bilder
3. finde lokale Extrema über x, y und $\sigma$
4. eliminiere schlechte Keypoints (zuwenig Kontrast, Verrauscht)
5. berechne die genaue (subpixel) Position des Keypoints (Taylor Expansion)
6. berechne die Richtung des Keypoints aus den Gradientenrichtungen der Nachbarpixel

## Was ist SURF?
* steht für Speeded up robust features
* gibt gute Resultate, ist aber etwas aufwendig in der Berechnung
* benützt auch Keypoints und Deskriptoren
* benützt ausserdem noch Haar Filters zur Berechnung

## Wie wird eine Kamera mathematisch beschrieben?
* Projektive Geometry, bzw. homogene Koordinaten
* Jeder Punkt in 2D ist gegeben durch $(x,y,w)$ bzw. in 3D durch $(x,y,z,w)$
* wobei die Kartesichen Koordinaten durch $(\frac{x}{w}, \frac{y}{w})$ dargestellt werden können
* damit können auch unendlich ferne Punkte dargestellt werden
* eine Kamera kann als 3x4 Matrix dargestellt werden, die 3D Punkte auf 2D abbildet

## Wie funktioniert RANSAC?
* Iterativer Algorithmus (RANdom SAmple Consensus)
* nimm ein Subset der Punkte um das Resultat zu berechnen
* Charakterisiere Punkte als Inlier oder Outlier
* prüft die Verteilung der Inliers
* iteriere bis eine stabile Lösung gefunden wird

