# Automaten

## Was ist ein Automat?
* wird von aussen mit Eingaben befüllt
* befindet sich in einem Zustand
* Änderung des Zustand anhand des aktuellen Zustand und den Eingaben
* geänderter Zustand wird Folgezustand genannt
* dabei erfolgt einen Zustandsübergang (Transition)

## Was sind Anwendungen für einen Automaten?
* Steuerungsautomaten (Ampelsteuerung, Billettautomat, Waschmaschine)
* Lexikalische Analyse
* Textsuche
* Verarbeiten von Ereignisfolgen
* Verhaltensmodellierung

## Was für Grunbestandteile gibt es bei einem Automaten?
* Zustände Z (Startzustand, Endzustand)
* Eingaben E (Aktionen, Ereignisse, Signale)
* Ausgabe A (Aktionen)

## Welche grundlegenden Typen von Automaten gibt es?
* Automat im Allgemeinen
    * `(Z, E) -> Z`
    * Automat bewirkt nicht explizit Ausgaben
* Mealy-Automat
    * `(Z, E) -> Z, (Z, E) -> A`
    * ein Zustandsübergang bewirkt auch ein Ausgabe
* Moore-Automat
    * `(Z, E) -> Z, Z -> A`
    * ein Zustand selbst ist auch mit einer Ausgabe verbunden

## Wie lässt sich ein Automat darstellen?
* als Graph
* als Tabelle

## Wie lassen sich Automaten umsetzen?
* in Software: strukturiert, objektorientiert, State Design Pattern
* in Hardware: Flip-Flops, Logikbausteine, SPS

