# Supervised Machine Learning

## Welche Diszipline gibt es bei Machine Learning?
1. Supervised Learning
    * dem Algorithmus werden gelabelte Trainingsdaten gegeben
    * der Algorithmus lernt Labels von unbekannten Daten vorherzusagen
2. Unsupervised Learning
    * dem Algorithmus werden nicht gelabelte Trainingsdaten gegeben
    * der Algorithmus entdeckt selbständig die Struktur der Daten
3. Semi-Supervised Learning
    * eine Mischung zwischen Supervised und Unsupervised Learning
    * wird meistens benutzt wenn eine kleine Anzahl an gelabelten Daten zur Verfügung stehen
4. Reinforcement Learning
    * Keine Daten stehen zur Verfügung
    * der Algorithmus wird durch eine Reward Funktion geleitet
    * das ideale Verhalten wird gesucht um die Reward Funktion zu maximieren

## Was können die Gründe für eine schlechte Datenqualität sein?
* schlecht designet, mangelhafte oder inkonsistente Datenformate
* Programmierfehler oder technische Probleme
* Alter der Daten (z.B. ungültige E-Mail Adressen)
* schlechte Dateneingabemasken (fehlende Validierung)
* menschliche Fehler bei der Daten Exportierung
* ungültige oder falsche Informationen

## Welche Möglichkeiten gibt es die Qualität von Daten festzustellen?
* Datenquellen und deren Zuverlässigkeit überprüfen
* Statistische Kennzahlen interpretieren und überprüfen
* Visuelles überprüfen eines Datenauszug
* manuell Datenbereiche überprüfen (z.B. negative Löhne)
* Plausibilität von Zusammenhänge überprüfen
* Redundanz der Daten messe
* Abweichungen in Syntax und Semantik der Daten
* NULL-Werte und doppelte Daten untersuchen

## Wie läuft eine ganz einfaches Machine Learning ab?
* Daten in Testdaten und Trainingsdaten aufteilen
* Klassifikator auf den Trainingsdaten trainieren
* Klassifikator anhand der Testdaten bewerten

_=> funktioniert nur mit vielen Daten und wenn die Hyperparameter festgelegt sind_

## Wie sollten die Daten in einem Data Pool aufgeteilt werden?
* ca. 70% - 80% Trainingdaten
* ca. 20% - 30% Testdaten

## Wie sollte beim Aufteilen der Daten vorgegangen werden?
* Daten zufällig mischen
* Daten aufteilen in Training und Test
* Training und Testdaten müssen disjunkt sein

## Was bedeutet Training?
Minimierung einer Kostenfunktion auf den Trainingsdaten durch Anpassen der Modellparameter

## Was bedeutet Testing?
Leistung des Modells durch eine Auswertungsfunktion auf unbekannten Daten berechnen

## Wie kann das Modell überprüft werden?
Nur eine Auswertung auf unbekannten Daten ermöglicht es die Leistung des Modells festzustellen

## Was ist k-NN?
* steht für K-Nearest Neighbors
* ist ein sehr einfach Machine Learning Algorithmus
* bei k=1 wird das Label des nächstgelegenen Trainingspunkt verwendet
* bei k>1 findet ein Mehrheitsbeschluss der nächsten k Nachbarn statt

## Was sind Hyperparameter?
* Entscheidung die vom Menschen getroffen werden
* Beispielsweise Angleichung an eine lineare Funktion

## Was sind Beispiele für Hyperparameter?
* Anzahl Nachbarn bei k-NN
* Regularisierung der Paramater
* Kernel einer Support Vektoren Maschine
* Baumtiefe und selection-policy im Entscheidungsbaum
* Anzahl Layers, Neuronen, Aktivierungsfunktion, Dropout bei Deep Learning

## Wie sieht ein komplizierter Auswertungsvorgang aus?
* Daten aufteilen in 60% Train, 20% Validation und 20% Test
* Über alle interessanten Hyperparameter-Konfigurationen iterieren
* Modell anhand der ausgewählten Hyperparameter auf den Trainingsdaten trainieren
* Modell auf dem Validation-Set überprüfen und Leistung messen
* Modell mit der besten Leistung auswählen und auf den Testdaten Leistung messen

_=> Dieser Variante benötigt recht viele Daten_

## Was ist das Ziel von Cross Validation?
* Falls zu wenig Daten vorhanden
* Aufteile in 80% Training und 20% Test
* Training aufteilen in k Folds (z.B 10)
* jeder Fold ist einmal das Validation-Set
* die restlichen Folds werden als Trainingsdaten verwendet
* schlussendlich Mittelwert über alle Folds

## Was ist das Ziel bei der Aufteilung in Test- und Trainings-Set?
gleiche Verteilungen über Test und Trainings-Set

## Was sollte man über Learning Curves wissen?
* wenn Kurven weit auseinander, dann hilft es wenn man mehr Daten nutzt
* wenn Kurven parallel sind, dann bringt es ziemlich sicher nichts

## Welche Möglichkeiten gibt es bei einer Confusion Matrix für einen Binary Classifiers?
```
TN = true-negative  +-----------------+
FP = false-positive |   Vorhersage    |
FN = false-negative +-----------------+
TP = true-positive  |  Wahr  | Falsch |
+----------+--------+-----------------+
|          | Wahr   |   TP   |   FN   |
| Realität +--------+-----------------+
|          | Falsch |   FP   |   TN   |
+----------+--------------------------+

```

## Wie wird die Accuracy and Error Rate berechnet?
```
Accuracy = (TP + TN) / Total
Error Rate = (FP + FN) / Total = 1 - Accuracy
```

