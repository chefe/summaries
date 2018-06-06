# Anforderungen

## Was ist eine Anforderungen?
* Wünsche und Ziele von Benutzern an ein System
* Bedingungen und Eigenschaften des zu entwickelnden Systems

## Was ist ein Stakeholder? 
eine Person oder Organisation, die Einfluss auf die Anforderungen hat

## In welche drei Kategorien lässt sich Wissen einteilen?
* Unbewusstes Wissen
* Bewusstes Wissen
* Unterbewusstes Wissen (Bauchgefühl)

## Welche Abstraktionslevel von Anforderungen gibt es?
* Needs / Warum? / Business Value / Business Use Case
* Kundenanforderung / Was? (System) / Features / Product Use Case
* Software Andforderunngen / Was? (für SW) / SW Spezifikationen / Developer Requirements

## Wie unterscheiden sich Kundenanforderungen und Softwareanforderungen?
* Kundenanforderungen
    * Kundenorientiert
    * für die Kunden verständlich
    * Welche Anforderungen muss das Produkt erfüllen um die Bedürfnisse des Kunden abzudecken?
    * Basis für die Softwareanforderungen
* Softwareanforderungen
    * Entwicklerorientiert
    * widerspruchsfrei und präzise festhalten
    * was muss das System tun um die Kundenbedürfnisse abzudecken
    * Machbarkeit klären
    * Basis für das Design

## Was ist ein Feature?
* Merkmal eines Systems

## Wie wird ein Feature nach IREB definiert?
Eine abgrenzbare Charakteristik eines Systems, welches einen Nutzen für die Stakeholder 
bietet. Umfasst normalerweise mehrere Detail-Anforderungen und wird für die Kommunikation 
auf einem höheren Abstraktionslevel mit den Stakeholder verwendet. 

## Was ist der Unterschied zwischen funktionale und nichtfunktionale Anforderungen?
* Funktionalen Anforderungen
    * legen fest, was das Produkt tun soll
    * Fähigkeiten eines Produktes um eine bestimmte Aufgabe zu erfüllen
* Nicht-funktionale Anforderungen
    * Performanz und Effizienz
    * Zuverlässigkeit (Reliability) und Verfügbarkeit (Availability)
    * Sicherheit (Security)
    * Wartbarkeit (Maintainability)
    * Portierbarkeit (Portability)
    * Randbedingungen (Constraints)

## Was sind Eigenschaften von guten Anforderungen (Qualitätskriterien)?
* Verständlichkeit, Klarheit
* Eindeutigkeit (keine Missverständnisse)
* Vollständigkeit
* Konsistenz
* Korrektheit
* Gültigkeit (aktuell)
* Verfolgbarkeit / Traceability
* Testbarkeit/Prüfbarkeit
* Machbarkeit/Umsetzbarkeit
* Bewertet (Prio, Aufwand, Risiko, ...)

## Was ist das Kano-Modell?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/01A-Kano.png}
\end{figure}

## Wie lassen sich Software Anforderungen priorisieren?
* muss - zwingend, verpflichtend
* sollte - nicht verpflichtend, erhöhen aber die Kundenzufriedenheit
* wird - zukünftige Anforderungen

## Welche zwei Vorgehensmodelle gibt es um Anforderungen zu definieren?
* Anforderungs-Engineering als Phase (klassisch)
    * Reaktion auf spätere Anforderungs-Änderungen aufwändig 
    * es werden Anforderungen festgehalten die nur sehr aufwändig umsetzbar sind
    * häufig Enttäuschung auf Kundenseite
* Kontinuierliches (Just in Time) Anforderungs-Engineering
    * Anforderungen werden zunächst nur grob erhoben
    * Anforderungen werden erst dann spezifiziert, wenn Sie kurz vor der Implementierung stehen
    * schnelles Feedback möglich

## Was sind mögliche Anforderungsquellen?
* Stakeholder
* Dokumente
* Systeme in Betrieb 

## Welche Ermittlungstechniken können beim erheben von Anforderungen helfen?
* Befragungstechniken
* Kreativitätstechniken
* Beobachtungstechniken
* Unterstützende Techniken (Mindmapping ...)
* Dokumentenzentrierte Techniken

## Wie könne Anforderungen festgehalten werden?
* Systemkontext: Abgrenzung des Produktumfanges
* Ziele: Es werden die Intentionen der Kunden festgehalten
* Szenarien: exemplarische, konkrete Abläufe, Interaktionsfolgen festhalten
    * z.B. in Form von Use Cases, Szenario-Beschreibungen, Story
* Geschäftsregeln
* Lösungsorientierte Anforderungen
    * Datenstrukturen und Verhalten
    * Funktionssicht eines Systems, Schnittstellenbeschreibungen etc. 

## Welche 5 Bereiche gehören zu einem System?
* Irrelevante Umgebung
* Kontextgrenze
* Systemkontext
* Systemgrenze
* System

## Was gehört alles zum System-Kontext?
* Personen (Stakeholder, Stakeholder-Gruppen)
* Andere technische Systeme
* Prozesse (Geschäftsprozesse, technische Prozesse)
* Ereignisse 
* Dokumente (Gesetze, Standards, Doku)

## Was ist die Systemgrenze?
* separiert das geplante System von seiner Umgebung
* grenzt den im Rahmen des Entwicklungsprozesses ab
* definiert den Lieferumgang

## Wie lässt sich ein Use-Case beschreiben?
1. Der Kunde identifiziert sich mittels Karte und Code
2. Der Kunde wählt ein ihm gehörendes Konto
3. Der Kunde spezifiziert den auszubezahlenden Betrag
4. Das System prüft bei der Bankzentrale den Kontostand
5. Das System zieht den betreffenden Betrag in der Bankzentrale vom Konto ab
6. Das System gibt das entsprechende Bargeld aus

## Was sind Sonderfälle des vorherigen Use-Cases?
* Konto des Kunden ist nicht gedeckt
* Kunde hat Tageslimite überschritten
* Geldautomat hat kein Bargeld mehr
* Mehrmals falschen Code eingegeben

## Wie lassen sich Features textuell beschreiben?
* Feature Liste zur Übersicht
* detailierte Beschreibung pro Feature

## Wie unterscheiden sich Uses Cases und eine Feature Liste?
* Feature Liste
    * zusammenhangslose Liste
    * definiert einzelne Charakteristiken
    * mehr Entwickler sicht
* Use Case
    * definierte Ablauf
    * Aktoren sind explizit festgehelaten
    * mehr Prozessablauf

## Wie können stories nach Cohn definiert werden?
> As a "user role"
> I need a "functionality"
> So that I get "business value"

## Für welche Artefakte und Prozesse ist das Anforderungsdokument die Grundlage?
* Projektausschreibung / Vergabe
* Projektplanung, Kostenschätzung
* Architekturentwurf
* Implementierung
* Test
* Änderungsmanagement
* Systemnutzung und -wartung
* Vertragsmanagement

## Was sind die Qualitätskriterien eines Anforderungsdokument?
* Eindeutigkeit und Konsistenz
* Klare Struktur
* Modifizierbarkeit und Erweiterbarkeit 
* Vollständigkeit
* Verfolgbarkeit der Beziehungen unterschiedlicher Dokumente

## Wie ist die Dokumentationsstruktur nach DIN definiert?
* Kunde erstellt Lastenheft
    * Vision + Kundenanforderungen
* Lieferant erstellt Pflichtenheft
    * Spezifikation, Softwareanforderungen

