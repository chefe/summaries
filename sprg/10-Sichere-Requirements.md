# Sichere Requirements

## Was ist ein Attack Tree?
* Baum von Attacken um ein Ziel zu erreichen
* Kennzeichnung von UND / ODER Beziehung zwischen Nodes
* bei UND werden die Kosten aller Kinder summiert
* bei ODER werden die Kosten des billigsten Kindes verwendet

## Was sind die Eigenschaften eines Nodes in einem Attack Tree?
* möglich / unmöglich
* Kosten (Ressourcen / Zeit) für die Attacke
* Kosten (Ressourcen / Zeit) für die Verteidigung
* Zeit für den Angriff
* Zeit für Verteidigung
* Wahrscheinlichkeit für einen erfolgreichen Angriff
* Wahrscheinlichkeit das der Angreifer diese Attacke auswählt

## Wieso erstellt man einen Attack Tree?
Um zu den Knoten im Baum (Attacken) Gegenmassnahmen zu definieren

## Welche vier Komponenten gehören zu einem Use-Case Diagramm?
* Aktoren
* Systeme (mit Systemgrenzen)
* Anwendungsfälle
* Beziehungen zwischen den Elementen

## Was ist der Unterschied zwischen Use-Case und User-Story?
* Use Case
    * sind grösser und beeinhalten mehr Kontext-Informationen
    * werden gebraucht um die Funktionalität zu definieren und zu dpokumentieren
* Use Story
    * im Rahmen von Scrum sehr verbreitet
    * "As a <role> I want <goal> so that <benefit>"
    * werden zerkleinert bis sie implementiert werden können
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

