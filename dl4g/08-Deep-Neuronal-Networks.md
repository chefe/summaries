# Deep Neuronal Networks

## Was ist ein neuronales Netzwerk?
* besteht aus mathematischen Knoten
* Knoten haben Inputs und Outputs
* Knoten sind organisiert in Layers
* Knoten berechnen aus Input und Parameter einen  Output
* Knoten haben lineare Funktion (Gewicht, Bias, Input)
* auf Funktion wird Aktivierungsfunktion angwendet (sigmoid, relu)

## Wie berechnet eine neuronales Netzwerk das Resultat?
* Parameter werden während dem Training definiert
* danach nur noch Layer für Layer durchrechnen

## Was ist eine Loss Funktion?
* grundsätzlich eine Fehlerfunktion
* die Funktion, welche während dem Training minimiert werden soll

## Wie wird ein neuronales Netzwerk trainiert?
* Differenz zwischen berechnetem Wert und gegebenem Label
* Differenzen werden versucht zu minimieren

## Wie kann das Training auf seine Wirksamkeit überprüft werden?
* benötigt eine Metrik und Testdaten
* beispielsweise überprüfen der Accurency

## Was ist der Vorteil eines Deep neuronal networks?
* Features werden automatisch berechnet

## Was ist das Problem mit der optimalen Kapazität?
* mit mehr Trainingsdaten wird der Fehler kleiner
* der Fehler der Testdaten wird dann jedoch immer grössere

## Welche 3 Klassen gibt es bei VOC challenges?
* __Klassifizierung:__ Enthält das Bild ein Objekt einer Klasse?
* __Erkennung:__ Welche Klasse haben die Objekte eines Bildes?
* __Sementierung:__ zu welcher Klasse gehört ein einzelnes Pixel?

## Was ist die Funktion einer Support Vector Maschine?
* berechnet Features und Deskriptoren
* berechnet eine Art Fingerabdruck auf dem Bild

## Was ist die Idee hinter einem Residual Network?
* Layer darf das Ergebniss nicht verschlechtern
* falls Layer nichts bewirkt einfach ignorieren

## Welche Layer-Typen gibt es?
* Dense / Fully-Connected
    * jeder Knoten ist mit jedem Knoten aus dem Layer davor verbunden
    * jede Verbindung hat ein Gewicht
* Convolutional
    * Knoten ist nur mit einem Teil der vorherigen Knoten verbunden
    * immer die gleichen Gewichtungen verwenden
* Polling
    * Berechnet das Maximum oder den Durchschnitt einer Region
    * macht das Bild kleiner

## Was ist Regularisierung?
* zur loss-Funktion wird eine penatly-Funktion addiert
* penatly-Funktion ist abhängig von den Gewichten

## Was ist L2 Regularisierung?
* Quadrat der Gewichte zur loss-Funktion addieren

## Welche anderen Regularisierungens-Methoden gibt es?
* Ensemble method: 
    * Abstimmung von mehreren separat trainierten Netzwerken
* Dropout: 
    * Zufällig Knoten mit 0 multiplizieren
    * Netzwerk muss mehrere Wege finden
* Early stopping:
    * Stoppen wenn Fehler des Validation-Sets beginnt zu wachsen
    * Lernen der benötigten Anzahl Trainingsschritte (Hyperparameter)

