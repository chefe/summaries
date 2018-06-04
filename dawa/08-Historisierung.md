# Historisierung

## Wieso braucht man Historisierung?
* Was passiert, wenn sich der Preis eines Produktes ändert?
* Was passiert, wenn sich der Name eines Produktes ändert? 

## Wieso macht man eine Historisierung?
* die Datenqualität aus den Abfragen bleibt hoch
* aus rechtlichen Gründen und für die Revisionssicherheit

## Was versteht man unter SCD?
* Slowly Changing Dimensions
* Methoden um Änderungen in den Dimensionstabellen zu dokumentieren

## Welche SCD Typen gibt es?
* Typ 0 
    * Keine Historisierung
    * über PK werden Daten nachgeschlagen
    * nur einfügen möglich
* Typ 1
    * Keine Historisierung jedoch Aktualisierung
* Typ 2
    * Voll Historisierung
    * es wird alles gespeichert
    * verschiedene Version des Datensatz 
    * verbunden durch gleichen Fremdschlüssel
    * meistens mit Start- und Enddatum
* Typ 3
    * Historisierung mit neuem Attribut
    * letzte Version wird in zusätzlichem Attribut gespeichert
* Tupelversionierung
    * Tupel werden nicht mit einem Zeitstempel versehen
    * jedes Tupel hat eine Versionierungsnummer (VNR)
    * es werden keine bestehenden Tupel aktualisiert
    * es werden immer neue Tupel erzeugt

## Auf was sind relationale Datenbanken optimiert?
* einfach verständlich
* schneller Zugriff
* Daten schnell zu aggregieren

## Was sind die Vorteile einer Multidimensionalen Datenbank?
* ergonomischen und intuitiven Benutzeroberfläche 
* kurze und stabile Antwortzeiten
* Hohe Zugriffs-, Analyse- und Daten Präsentationsflexibilität
* Interaktives Navigieren in den Datenbeständen
* Schnelle Erstellung von geeigneten Ad-hoc-Berichten und Grafiken
* Technisches Wissens über die Datenbank wird nicht vorausgesetzt
* Entdeckung verborgener Informationen und Zusammenhänge
* Guter Erkennungsort zur Datenbereinigung wegen nicht plausiblen Analysedaten

## Was ist eine Kennzahl?
* hält als skalarer Wert eine bedeutende Eigenschaft fest
* auch als unter dem Begriff Fakt bekannt
* ein Fakt ist in seiner feinsten Granularität ein einzelner Erhebungswert
* ist willkürlich zu einer gröberen Granularität aggregierbar

## Was ist eine Dimension?
* definiert den Beobachtungsraum des Fakts
* werden auch als Geschäftsaspekte bezeichnet
* ihre einzelnen Ausprägungen sind Elemente oder Dimensionswerte
* Dimensionen sind deskriptiver Natur und enthalten keine messbaren Werte
* sie geben den Fakten einen Beobachtungskontext

## Was sind Beispiele für die häufigsten drei OLAP Würfel-Paradigmen?
* eine Dimension
    * Dimension: Center
    * Fakten: Kursteilnehmende
* zwei Dimensionen
    * Dimensionen: Center, Kurs
    * Fakten: Kursteilnehmende
* drei Dimensionen
    * Dimensionen: Center, Kurs, Zeit
    * Fakten: Kursteilnehmende

## Was sind die 10 OLAP Würfel-Paradigmen?
1. sechs bis max. acht Dimensionen bleiben überschaubar und praktikabel
2. die verwendeten Dimensionen müssen unabhängig sein
3. Dimensionen können einer parallelen Dimensionshierarchie entnommen sein
4. es muss nicht an jeder Dimensionskante gleich viele Elemente haben
5. Elemente einer Dimension müssen immer die gleiche Granularität besitzen
6. mehrerer Dimensionen lassen sich unterschiedlich kombieren
7. das Produkt aller Elemente ergibt die Anzahl solcher Fakten
8. eine Zeitdimension hat es fast immer
9. Fakten eines Würfels dokumentieren immer je nur eine relevante Kenngrösse
10. Dimension bringt Fakten immer in die gleiche Klasse von Beobachtungsräumen

## Wie heissen die 9 Regeln der Klassifikationshierarchie?
1. ist streng hierarchisch
2. muss vollständig
3. Zuordnung der Unterlemente ist nicht trivial
4. Bestimmung der Hierarchiestufen ist nicht trivial
5. höchstens 7 Hierarchiestufen mit je höchstens 15 bis 20 Elementen
6. parallele Klassifikationshierarchie sind möglich
7. parallelen Klassifikationshierarchien gelten als unabhängig
8. Managementfragen sind zentral für das Design der Dimensionsstruktur
9. zusammengefasste Dimension ist eine neue Dimension

## Welche Arten wird bei fehlenden Tupeln unterschieden?
* nicht mögliche Daten (event not applicable)
    * Bsp: keine Vorjahreszahlen weil Produkt erst eingeführt
    * Abfrage müsste aufgrund der Unmöglichkeit zurückgewiesen werden
* nicht bekannte Daten (event not known)
    * Bsp: Fehlende Werte (NULL oder N/A)
    * fehlende Werte liefern ohne Behandlung verfälschte Ergebnisse
* nicht eingetretenen Daten (non-event)
    * Bsp: keine Skiverkäufe im Juli
    * auf logischer Ebene ist der Würfel vollbesetzt

## Was bedeutet der Begriff Dünnbesetztheit?
* nicht alle Zellen eines Würfels haben einen Wert
* auch bekannt als "missing data"

## Wie wird Dünnbesetztheit weiter unterschieden?
* Natürliche Dünnbesetztheit
    * Wert ist also operativ nicht vorhanden
    * fehlende Werte steht dafür, dass keine Verkäufe stattgefunden haben
    * auf logischer Ebene ist der Würfel deshalb vollbesetzt
* Logische Dünnbesetztheit
    * es existieren keine Zahlen, da das Produkt dort noch nicht eingeführt war
    * fehlende Werte können auch aus Fehler und Unvollständigkeiten der Daten resultieren
    * ohne eine spezielle Behandlung, liefern Abfragen verfälschte Ergebnisse

## Wie wird der Füllgrad eines Würfels angegeben?
* Prozent von gültigen Werten im Würfel
* 100% => dicht besetzt
* 10% => dünnbesetzt

## Welche Grundoperationen am Würfel gibt es?
* __Slicing:__ Ausschneiden von Scheiben aus dem Datenwürfel
* __Dicing:__ kleinere Würfel aus bestehendem Würfel erzeugen
* __Pivoting / Rotation:__ drehen des Würfels das mindestens eine andere Dimension sichtbar wird
* __Drill-Down:__ Detaillierung eines Informationsobjekts auf einzelne Werte
* __Drill-Up/Roll-Up:__ Gegenoperation zu Drill-Down, Verdichten auf einer höheren Stufe 
* __Drill-Across:__ betrachtung der benachbarten Dimensionselemente
* __Drill-Through:__ horizontal weitere OLAP-Würfel auszuwerten (fast wie Drill-Through)
* __Split:__ aufteilen eines Wertes nach verschiedenen Dimensionen
* __Merge / Drill-In:__ Granularität durch Entfernen zusätzlicher Dimensionen verringeren

