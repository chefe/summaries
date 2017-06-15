# Interaktionsmodellierung & Use Cases

## Was ist das Ziel eines Use Case Diagramms?
* Darstellung der funktionalen Dienstleistung eines Systems
* Schaffen einer Kommunikationsgrundlage
* Verständlich machen von komplexen Systemen
* Darstellung auf hohem Abstraktionsniveau

## Was sind Use Cases?
* Anwendungsfälle
* sind Ausgangspunkte vieler Entwicklungsmethoden

## Was ist eine Use Case Diagram?
* repräsentiert Anforderungen der Kunden
* Sequenz von Transaktionen innerhalb eines Systems
* Aufgaben von Akteuren mit identifizierbarem Nutzen
* Akteure interagieren mit dem System

## Was ist ein Akteure?
* Rolle die jemand einnimmt
* **Alle** die mit dem System interagieren
* Muss mit mindestens einem Anwendungsfall verbunden sein

## Was gibt es für Objekte im Use Case Diagram?
* Akteuer
    * Gezeichnet als kleine Menschen
    * Bezeichnung der Rolle unter dem Männchen
* Anwendungsfall
    * gezeichnet als Ellipse
    * Beschreibung in der Blase
* extension points
    * Anwendungsfall kann mehre besitzen
    * zeigt dass ein Case erweitert werden kann, aber nicht muss
    * extend wird häufig mit Kommentar erweitert
* System
    * gezeichnet als Rahmen um die Aktivitäten
* Kommentar
    * Box sieht aus wie Post-It
* Assoziationen
    * Verbindungen zwischen Akteuren und Aktivitäten
    * gezeichnet als Linie
* Generalisierung
    * Vererbungsbeziehung
    * Linie mit Pfeil
* extend
    * optional Verwendung von Case durch andere Case
    * Gestricheleter Pfeil mit Text oberhalb <\<extend\>>
* include
    * notwendige Verwendung von Case durch andere Case
    * Gestricheleter Pfeil mit Text oberhalb <\<include\>>

## Was gehört alles in eine Use-Case-Beschreibung?
* Name (Nomen + Verb)
* Auslösender Aktor
* Zweck / Ziel
* Eingehende Informationen
* Ergebnis
* Grundlegenden Ablauf 
    * ca. 5-10 Punkte zum Ablauf
    * aber genug detailiert
    * nummeriert
* Erweiterungen (Nummer, Status, Alternativer Ablauf)
* Alternativen (grundlegend andere Ablauf)

## Für was ist eine Aktivitätsdiagramm?
* Reihenfolge von Aktivitäten
* parallele Aktivitäten

## Was ist das Einsatzgebiet für Aktivitätsdiagramme?
* Modellieren von Geschäftsprozessen
* Modellieren von Abläufen innerhalb eines Use Cases

## Welche Elemente gibt es als Aktivitätsdiagramm?
* Aktion
    * Rechteck mit abgerundeten Ecken
    * Beschreibung innerhalb
* Kontrollfluss
    * Pfeil zwischen zwei Aktionen
* Objektknoten
    * Rechteck
    * beschreibt Speicher für Objekte
* Entscheidungsknoten
    * Darstellung als Raute
    * Mehre Pfeil gehen weg
* Überwachungsbedingungen (Guards)
    * Darstellung als Text
    * Gehört zu jedem Entscheidungsknoten
    * Beschreibung in Eckigen klammern []
* Verbindungsknoten
    * Darstellng als Raute
    * Verbindet mehrere Kontrollflüsse
    * Mehrere Pfeil führen hier hin
* Gabelung
    * Darstellung als Balken
    * Mehrere Pfeile gehen weg
    * teilt Kontrollfluss in mehre parallele auf
* Vereinigung
    * Darstellung als Balken
    * Mehrere Pfeile führen hin
    * verbindet Kontrollflüsse in einen
* Startknoten
    * ausgefüllter Kreis mit Pfeil
    * initiale Stelle
* Aktivitätsende
    * Pfeil auf Kreis, welcher ausgefüllter Kreis enthält
    * signalisiert das alle Kontrollflüsse beendet sind

