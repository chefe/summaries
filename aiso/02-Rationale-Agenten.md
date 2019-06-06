# Rationale Agenten

## Was sind die Fähigkeiten eines Agenten?
* Umgebung wahrnehmen (Wahrnehmung)
* Umgebung analysieren (Erkenntnis)
* auf Umgebung einwirken (Aktion)

## Was sind die Komponenten eines Agenten?
* __Sensoren__, um Umgebung wahrzunehmen
* __Aktoren__, um Umgebung zu Manipulieren
* __Agenten-Funktion__, um anhand der Wahrnehmung eine Aktion auszuwählen
* __Agenten-Programm__, Implementation der Funktion auf Hardware

## Was heisst rational?
* das "richtige" machen
* nie die schlechtere Alternative wählen
* bzw. immer die beste Option wählen (falls es eine bessere gibt)

## Wie kann festgestellt werden ob ein Agent rational ist?
* haben die Aktionen zuverlässig den erwünschten Effekt
* Überprüfung durch eine Performance Measure

## Was ist eine Performance Measure?
* ermöglicht es die Qualität des Agenten zu überprüfen
* jede Aktion des Agenten verändert die Welt
* wenn von Aussen gesehen gut, dann erfüllt
* benötigt immer eine externe Evaluation
* evaluiert die Umgebung auch ohne den Agenten

## Was könnte die Performance Measure für einen Saugroboter sein?
* +100 Punkte für einen gereinigten Raum
* -10 Punkte für einmal Saugen
* -1 Punkt für jede Bewegung

## Von welchen Faktoren ist rationales Verhalten abhängig?
* von der Performance-Measure (Ziel)
* von der Wahrnehmungssequenz
* von den Kenntnissen der Umgebung
* die zum aktuellen Zeitpunkt möglichen Aktionen

## Was ist das Ziel des idealen rationalen Agenten?
* anhand einer Wahrnehmungssequenz die beste Aktion zu wählen
* versucht die erwartete Performance zu maximieren
* benutzt dazu Wahrnehmung und evtl. vorhandenes Wissen

## Was ist der Unterschied zwischen allwissend und rational?
* allwissender Agent (omniscient agent)
    * kennt die Folgen seiner Aktionen
* rationaler Agent (rational agent)
    * handelt entsprechende seinem Wissen und der Wahrnehmung

## Durch welche Faktoren wird der mögliche Erfolg eingeschränkt?
* nicht vollständige Informationen
* nicht definiertes Verhalten der Umgebung
* Rechenleistung

## Für was steht die Abkürzung PEAS?
* Performance Measure
* Environment
* Actuators
* Sensors

## Was sind Beispiel für eine PEAS-Analyse?
* __Legende__
    * P = Performance Measure (Messwerte)
    * E = Environment (Umgebung)
    * A = Actuators (Aktoren)
    * S = Sensors (Sensoren)
* __Beispiel Diagnosesystem__
    * P: Krankheit richtig/falsche erkannt, Kosten
    * E: Spital, Patient, Arzt
    * A: Display
    * S: Analyseninstrumente
* __Beispiel Satellitenbildverarbeitung__
    * M: Auflösung, Anzahl korrekt klassifizierte Bilder
    * E: Weltraum, Kommuikationssystem
    * A: Display
    * S: Kamera, Position
* __Beispiel Roboterarm__
    * P: Geschwindigkeit, Prozent korrekt identifizierter Objekte
    * E: Laufband, Arbeitsfläche
    * A: Motoren, Achsenbewegungen, Greifen, Loslassen, Drehen
    * S: Kamera, Lichtschranke, Laser
* __Beispiel Raffinerie-Regelung__
    * P: Output Liter pro Stunden, Stromverbrauch / Effizienz
    * E: Sicherheit, Operatoren
    * A: Pumpen, Displays
    * S: Temperatur, Druck, Chemische Sensoren
* __Beispiel Interaktiver-Englisch-Tutor__
    * P: Punkte im Test des Schüler
    * E: Lernder, Tester
    * A: Display, Vorschläge, Korrekturen
    * S: Tastature

## Was sind Eigenschaften der Umgebung eines Agenten?
* Beobachtbarkeit (ganz, teilweise, gar nicht)
    * kann Agent mit den Sensoren die ganze Umgebung erfassen
* Deterministisch vs. Stochastisch
    * deterministisch: es ist klar was passiert
    * stochastisch: es ist nicht ganz klar
* Episodisch vs. Sequenziell
    * episodisch: nur Kenntnisse über den aktuellen Stand
    * sequenzielle: Kenntnisse über frühere Beobachtungen
* Dynamisch vs. Statisch
    * dynamisch: grosse Veränderung während der Agent handelt
    * statisch: keine oder wenig Veränderung
* Diskret vs. Fliessend
    * diskret: eine begrenzte Anzahl an möglichen Zuständen
* Single-Agent vs. Multi-Agent
* Umgebung bekannt oder unbekannt

## Was ist die Struktur eines rationalen Agenten?
* Programm, welches auf einer Architektur ausgeführt wird
* Architektur bietet Schnittstelle zur Umwelt

## Welche Anforderungen gibt es an einen Agenten?
* Wahrnehmungssequenz aufnehmen und speichern
* Anhand der Wahrnehmungssequnz eine Aktion auswählen
* Implementation der Agent Funktion als Programm

## Welche Typen von Agenten gibt es?
* Simple Reflex Agent
* Model-based Reflex Agent
* Goal-based Agent
* Utility-based Agent
* Learning Agent

## Durch welche Fähigkeiten Unterscheiden sich die verschiedene Agenten?
* Erkundungsfähigkeit (Aktionen um sich mehr Wissen zu beschaffen)
* Lernfähigkeit (möglichst viel aus der Wahrnehmung lernen)
* Unabhängigkeit (Umgang mit fehlenden oder falschen Informationen)

## Was ist ein Simple Reflex Agent?
* reagiert direkt auf Wahrnehmung
* d.h. Umgebung muss erfasst werden können
* besteht aus einfachen Regeln
* aus Regeln wird direkt Aktion abgeleitet
* hat kein Modell der Welt
* verfügt über keine Speicherung
* Umgebung muss beobachtbar sein
* entkommen von Endlosschleifen durch Zufallsaktionen

## Was ist ein Model-based Reflex Agent?
* hat ein Modell der Welt
* speichert sich Informationen aus früheren Wahrnehmung
* Modell ist nicht komplett und beinhaltet wahrscheinlich Fehler
* Modell repräsentiert daher einen "best guess"
* kann Beobachten wie sich die Welt verändert
* kann daher Vorhersagen was für einen Effekt eine Aktion hat

## Was ist ein Goal-based Agent?
* arbeitet auf ein Ziel hin
* basiert auf einem Simple Reflex Agent
* speichert sich einen Zustand
* beobachtet wie die Umwelt sich verändern
* kann abschätzten wie sich die Umwelt verändern
* alle Möglichkeiten sind gleichwertig

## Was ist ein Utility-based Agent
* hat keine Ziele aber eine utility function
* evaluiert auszuführende Aktionen
* wählte so die für ihn am beste Variante

## Was macht eine utitlity function?
* bewertet den Zustand des Agenten
* gibt diesem Zustand einen Wert
* so können verschiedene Zustände verglichen werden
* zum Beispiel vorher vs. nachher

## Was ist ein Learning Agent?
* basiert auf einem Utility-based Agent
* reflektiert die eigene Performance
* kann sich so über die Zeit verbessern
* kann mit unvollständigen Informationen umgehen
* wird mit der Zeit immer besser
* beginnt mit einer leeren Wissensdatenbank
* kann in einer zu Beginn unbekannten Umgebung arbeiten

## Welche Komponenten gehören zu einem Learning Agent?
* Entscheid, welche Aktion durchgeführt werden soll
* Versucht die Performance zu verbessern durch neuartige Aufgaben
* Evaluiert anhand der Sensoren, ob die Aktion funktioniert hat
* nutzt den Zufall, um neue Dingen auszuprobieren und zu lernen

## Wie lässt sich das Saugroboter-Problem beschreiben?
__Legende:__

* A = linkes Feld
* B = rechtes Feld
* S = sauber
* D = dreckig

__Problem:__

* 8 Zustände
    1. A-S, B-S, Pos A
    2. A-S, B-D, Pos A
    3. A-D, B-S, Pos A
    4. A-D, B-D, Pos A
    5. A-S, B-S, Pos B
    6. A-S, B-D, Pos B
    7. A-D, B-S, Pos B
    8. A-D, B-D, Pos B
* 4 Beobachtungen
    * A-D, A-S, B-D, B-S
* 4 Aktionen
    * Links, Rechts, Saugen, Warten

