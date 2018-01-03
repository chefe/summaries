# Schnittstellen

## Welche 2 Arten von Schnittstellen gibt es?
* Programmschnittstellen (zwischen Komponenten)
* Benutzerschnittstellen (zwischen Benutzer und Komponente)

## Was ist das wichtigste an einer Schnittstelle?
* besitzt keine Funktionalität
* kein Bezug auf die Implementierung
* stellt eine Art Vertrag zur Verfügung

## Wieso sind Schnittstellen für die Softwarearchitektur wichtig?
* machen Software leichter verständlich
    * Implementierung muss nicht bekannt sein
* helfen uns, die Abhängigkeiten zu reduzieren
    * Abhängigkeiten von der Implementierung vermeiden
* erleichtern die Wiederverwendung
    * spart Arbeit und ist meistens leistungsfähiger

## Was sind die Architektur-Überlegungen hinter Schnittstellen?
* aus Beziehungen entsteht ein Mehrwert
* keine Komponenten kann alleine die Funktionalität bieten
* durch Zusammenarbeit bildet sich ein Gesamtsystem
* ermöglicht Spezialisten für einzelne Teilsysteme
* Kommunikation mit der Aussenwelt findet darüber statt

## Was sind die Kriterien für gute Schnittstellen?
* Schnittstellen sollen minimal sein:
    * wenige Methoden
    * Methoden sollen verschiedene Aufgaben wahrnehmen
    * möglichst wenig Überschneidungen
    * geringe Anzahl von Parametern
    * möglichst wenige (gar keine) globalen Daten
* Schnittstellen sollen einfach zu verstehen sein
* Schnittstellen sollen gut dokumentiert sein

## Was bedeutet DbC?
> Design by Contract

## Aus welchen 3 Teilen besteht ein solcher Vertrag?
* Preconditions
    * Zusicherungen, die der Aufrufer einzuhalten hat
* Postconditions
    * Nachbedingungen, die der Aufgerufene garantiert
* Invarianten
    * Bedingung, die Instanzen einer Klasse ab der Erzeugung erfüllen müssen 

## Was sind die Verantwortlichkeiten bei DbC?
* Precondition [Nutzer]
* Postcondition [Anbieter]
* Invariante [Anbieter]

## Was gehört alles zu einer Programmschnittstelle?
* was für die Benutzung der Komponente wichtig ist,
* was der Programmierer verstehen und beachten muss.

## Welche Eigenschaften sind zu einer Methode definiert?
* Syntax (Rückgabewerte, Argumente, in/out, Typen)
* Semantik (Was bewirkt die Methode?)
* Protokoll (z.B. synchron, asynchron)
* Nichtfunktionale Eigenschaften 
    * Performance, Robustheit, Verfügbarkeit, Kosten

## Was ist bei einer Schnittstelle aus Sicht des Anbieters wichtig?
* Name der Schnittstelle
* Eingangsparameter
* Ausgangsparameter
* Statusänderungen der Komponente
* Spezifikation der Funktionalität

