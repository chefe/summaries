# Datenmodellierung

## Wie sieht die Begriffhierarchie von Wissen aus?
1. Wissen (Pragmatik / Vernetzung)
2. Information (Semantik / Kontext)
3. Daten (Syntax)
4. Zeichen

## Was bedeuten die Begriffe Daten, Datenbank, ...?
* Daten
    * Angaben über Sachverhalte und Vorgänge aufgrund bekannter oder unterstellter Abmachungen in einer maschinell verarbeitbaren Form
* Datenbank
    * selbständige, auf Dauer und für den flexiblen und sicheren Gebrauch ausgelegte Datenorganisation
* Datenmodell
    * Formale Beschreibung des Schemas, z. B. in Form eines Diagramms oder einer Datenstruktur
    * Strukturierte Darstellung der Daten der Diskurswelt mit einem formalen Beschreibungsmittel
* Datenmodellierung
    * Prozess, der sicherstellen soll, dass eine Datenbasis zu jedem Zeitpunkt ein korrektes Abbild der Diskurswelt wiedergibt

## Welche zwei Datenmodelle werden unterschieden?
* Logisches Datenmodell
    * Brücke zwischen Realwelt und physischen Datenmodell
    * Realität wird abstrahiert und in einem Modell abgebildet
    * Fokusiert auf die Organisation
    * Unabhängig von Datenbanksystem
* Physisches Datenmodell
    * für eine bestimmte Datenbank ausgelegt
    * enthält Aspekte zur Speicherung und Speicheroptimierung

## Was umfasst ein Entity-Relationship-Modelle?
* Entity
    * Gegenstand, Objekt, Entität, object
    * individuell erkennbares und eindeutig unterscheidbares Element
    * reale oder gedankliche Abstraktion eines Objektes aus der Realwelt
* Entity-Set
    * Zusammenfassung von gleichartigen Entities
    * stehen für Mengen von Objekten
* Attribute
    * Eigenschaft, attribute
    * charakterisiert ein Gegenstand
    * hat einen bestimmten Wertebereich
* Relationship
    * Beziehung
    * verknüpft zwei Gegenstände
* Relationship-Typ
    * Zusammenfassung von gleichartigen Beziehungen
    * Verknüpfung zweier Entity-Sets

## Was für Beziehungen gibt es zwischen Entity-Typen?
> 1:1, c:1, m:1, mc:1, m:m

