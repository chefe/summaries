# Objekt Tracking

## Welche Fragen möchte man mit Objekt Tracking beantworten?
* Wo ist das Objekt zu einem späteren Zeitpunkt?
* Wo befand sich das Objekt über die Zeit? 

## Was ist der Unterschied zwischen Detektion und Tracking?
* Detektion: 
    * Erkennung der Objekte unabhängig in jedem Frame
* Tracking: 
    * Benutzung der Dynamik der Objekte zur Voraussage, wo sich das Objekt befinden könnte

## Was braucht es um die nächste Position eines Objektes zu schätzen?
* Position und Geschwindigkeit des Objektes
* eine Berechnung des nächsten Zustands

## Was ist das Problem beim schätzen der nächsten Position?
* Ermittlung des aktuellen Zustands
* wir können im allgemeinen den kompletten Zustand des Objekts aber nicht messen

## Welche zwei Modelle werden benötigt um den Zustand zu ermitteln?
* ein __System-Modell__, das besagt, wie sich der Zustand ändert
* ein __Mess-Modell__, das beschreibt wie gemessene Grössen mit dem Zustand zusammenhängen

## Aus welchen drei Schritte besteht Tracking hauptsächlich?
* Voraussage der nächsten Position
* Messung der nächsten Position
* Korrektur des Modells

## Wie funktioniert der Kalman Filter?
* System und Messmodelle sind linear
* Rauschen ist Gauss verteilt
* berechneter Zustand wird durch Mittelwert und (Gauss) Verteilung dargestellt

## Wie funktioniert ein Partikel Filter (Sequential Monte Carlo Method)?
* die Zustandsverteilung wird durch einzelne Partikel (Samples) beschrieben
* die Propagation bewegt und verteilt die Partikel
* die Messung gewichtet die Partikel
* die neuen Samples werden proportional zu den gewichteten Partikel gezogen

## Was ist der Unterschied zwischen Kalman und Partikel Filter?
* Kalman Filter für lineare Modelle mit Gauss Rauschen
* Partikel Filter für nicht-lineare Modelle mit beliebigem Rauschen

