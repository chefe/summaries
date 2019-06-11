# Sichere Requirements

## Was ist ein Attack Tree?
* Baum von Attacken, um ein Ziel zu erreichen
* Kennzeichnung von UND / ODER Beziehung zwischen Knoten
* bei UND werden die Kosten aller Kinder summiert
* bei ODER werden die Kosten des billigsten Kindes verwendet

## Was sind die Eigenschaften eines Knoten in einem Attack Tree?
* möglich / unmöglich
* Kosten (Ressourcen / Zeit) für die Attacke
* Kosten (Ressourcen / Zeit) für die Verteidigung
* Wahrscheinlichkeit für einen erfolgreichen Angriff
* Wahrscheinlichkeit das der Angreifer diese Attacke auswählt

## Wieso erstellt man einen Attack Tree?
Um anhand der Knoten Gegenmassnahmen zu definieren

## Welche vier Komponenten gehören zu einem Use-Case Diagramm?
* Aktoren
* Systeme (mit Systemgrenzen)
* Anwendungsfälle
* Beziehungen zwischen den Elementen

## Was ist der Unterschied zwischen Use-Case und User-Story?
* Use Case
    * sind grösser und beinhalten mehr Kontext-Informationen
    * werden gebraucht um die Funktionalität zu definieren und zu dokumentieren
* Use Story
    * im Rahmen von Scrum sehr verbreitet
    * "As a `<role>` I want `<goal>` so that `<benefit>`"
    * werden zerkleinert, bis sie implementiert werden können
    * werden detailierter beschrieben als Use-Cases

## Was ist ein MUC?
* misuse-case
* beschreibt einen Anwendungsfall der nicht eintreffen sollte

## Wie wird ein Misuse-Case beschrieben?
* Misuse case name
* Misuser profile
* Description
* Basic path
* Alternative paths
* Triggers
* Assumptions
* Mitigation

