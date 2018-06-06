# Segmentierung

## Welche Regionen basierte Segmentierung Verfahrengibt es?
* Region Growing
* Split and Merge
* Watershed
* kMeans Clustering
* Mean Shift
* Graph-Cuts
* Neural Networks 

## Was ist das Ziel von Region Growing?
* Objekte sollten anhand der Eigenschaften der Region erkannt werden
* Eigenschaften können zum Beispiel die Farbe sein
* aber auch Mittelwert und Abweichung der Farbe innerhalb einer Region sein

## Wie funktioniert Region Growing?
* es wird ein Ausgangspunkt oder eine Ausgangsregion gewählt 
* und damit die Eigenschaften der Region festgelegt
* benachbarte Pixel der Region werden solange hinzugefügt, wie sie die Eigenschaft erfüllen

## Wie funktioniert Split und Merge?
* Inhomogene Regionen im Bild werden rekursiv aufgeteilt bis sie homogen sind (Split)
* Nachbarregionen mit passenden Eigenschaften werden zusammengefügt (Merge)

## Was ist der Vorteil von Split und Merge?
es ist kein Anfangspunkt notwendig

## Was ist die Idee hinter dem Watershed Algorithmus?
* Interpretiere das Bild als Höhe
* Fülle das Bild gleichmässig
* Berechne "Watersheds"

## Wie funktioniert der K-Means Algorithmus?
* finde $k$ Clusters in einem n-Dimensionalen Raum
* $k$ ist dabei gegeben
* dabei wird das Zentrum für jeden der $k$ Clusters gesucht
* jeder Punkt gehört zu demjenigen Cluster, der das nächste Zentrum hat

## Was ist das Optimierungskriterieum bei kMeans?
Summe der Abstände zwischen allen Punkten innerhalb des Clusters soll minimal sein

## Wie funktioniert Lloyds Algorithmus?
* Initalisiere Cluster Zentren (z.B. zufällig)
    1. Berechne die Zugehörigkeit der Punkte zu den Clustern
    2. Berechne die Mittelpunkte der Cluster als neue Zentren
* Iteriere bis sich keine Cluster Zugehörigkeit mehr ändert

## Was ist die Idee eines Mean Shifts?
Form der Cluster sollte nicht vorgegeben werden (wie bei kMeans oder anderen Verfahren)

## Wie läuft der Mean Shift Algorithmus ab?
* Suche Maxima der Verteilung von einem Punkt aus
* Bestimme Clusters als Punkte die auf das gleiche Maximum konvergiere

