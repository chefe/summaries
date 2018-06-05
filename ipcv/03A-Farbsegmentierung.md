# Farbsegmentierung

## Wie kann ein Objekt erkannt werden, wenn es aus verschiedenen Farben besteht?
* Farbhistogramm als Modell des Objekts
* Vergleich der Histogramme 

## Welche Berechnungen braucht es um Histogramme zu vergleichen?
* Histogrammüberschneidung: $I(H_1, H_2) = \sum_{i \in I} min(H_1(i), H_2(i))$
* Bhattacharyya Koeffizienten: $BC(H_1, H_2) = \sum_{i \in I} \sqrt{H_1(i) H_2(i)}$
* Bhattacharyya Distanz: $D_{Bhatta}(H_1, H_2) = -ln(B_{Coeff}(H_1, H_2))$
* Hellinger Distanz: $D_{Hellinger}(H_1, H_2) = \sqrt{1 - B_{Coeff}(H_1, H_2)}$

