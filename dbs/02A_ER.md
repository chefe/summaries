# Entity-Relationship Modelle

## Was bedeutet der Begriff ER?
Entity Relationship Modell

## Was ist das Ziel eines ERs?
* Vorkommnisse aus der realen Welt modellieren

## Warum braucht man ein ER?
- Damit die Verständigung über Applikationen erleichtert wird
- Basierend auf dem Modell lässt sich z.B. eine Datenbank modellieren

## Was versteht man unter den folgenden Begriffe?
* Entität
    * einen bestimmten und erkennbaren Gegenstand
    * muss von anderen unterscheidbar sein
    * kann ein Gegenstand der realen Welt sein, muss aber nicht
* Entitätsmenge
    * Entitäten des gleichen Typs werden zusammengefasst
    * kann durch Merkmale weiter charakterisiert werden
* Identifikationsschlüssel
    * besteht aus einem oder mehreren Merkmalen
    * eindeutig für alle Entitäten innerhalb der Entitätsmenge
    * ist meistens markiert, z.B. durch Unterstreichen oder Kursivschrift
* Beziehungen
    * verbinden zwei Entitäten
    * geben diesen Bedeutung und Kontext
    * Beziehungen könne wiederum Mengen bilden
* Beziehungsmengen
    * können durch eigene Merkmale näher charakterisiert werden
* Assoziation
    * Bezeichnung der Bedeutung einer Beziehung in eine Richtung
    * kann mit einem Assoziationstyp gewichtet werden

## Welche Assoziationstypen gibt es?
* `c   =  0..1  = Keins bis eins`
* `1   =  1     = Genau eins`
* `mc  =  0..*  = Keins bis viele`
* `m   =  *     = Eins bis viele`

## Welche 3 Beziehungstypen gibt es?
* einfach - einfache Beziehung
* einfach - komplexe Beziehung
* komplex - komplexe Beziehung

## Was enthält das ER?
* Entity Set (Gegenstandstyp)
* Relationship Set (Beziehungstyp)
* Attribut (Eigenschaft)
* Schlüssel (Identifikation)
* Rolle

## Was versteht man unter unter Generalisierung?
* verallgemeinern von Entitäten und somit auch von Entitätsmengen
* umgekehrt lassen sich aber auch als Spezialisierung interpretieren
* kann mit `IS A ...` überprüft werden

## Welche Fälle treffen bei bei der Generalisation von Entitätsmengen auf?
* Überlappende Subentitätsmengen
* Überlappend-vollständige Subentitätsmengen
* Disjunkte Subentitätsmengen
* Disjunkt-vollständige Subentitätsmengen

## Was versteht man unter unter Aggregation?
* Zusammenfügen von Entitäten zu einem übergeordneten Ganzen
* dabei werden die Struktureigenschaften in einer Beziehungsmenge erfasst
* kann mit `PART OF ...` überprüft werden

## Welche zwei Unterarten von Aggregationen gibt es?
* Netzwerkartige Strukturen
    * beide Assoziationstypen können komplex sein
* Hierarchische Strukturen
    * übergeordnete Assoziationstypen können nicht komplex sein
    * untergeordnete Assoziationstypen aber schon

