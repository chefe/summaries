# Graphdatenbanken

## Aus was besteht ein Eigenschaftsgraph (engl. property graph)?
* Knoten (Konzepte, Objekte)
* gerichteten Kanten (Beziehungen), die Knoten verbinden.

## Was haben die Knoten wie die Kanten eines Eigenschaftsgraph?
* tragen einen Namen (engl. label)
* können Eigenschaften (engl. properties) aufweisen

## Was sind die Eigenschaften von Graphdataenbanken?
* die Daten und/oder das Schema werden als Graphen abgebilde
* Datenmanipulationen werden als Graph-Transformationen ausgedrückt
* die Datenbank unterstützt die Prüfung von Integritätsbedingungen
* die Definition von Konsistenz bezieht sich direkt auf Graph-Strukturen
    * z. B. Knoten- und Kantentypen, Attribut-Wertebereiche
    * und referenzielle Integrität der Kanten
* Indexfreie Nachbarschaft, index-free adjacency:
    * Aufwand bleibt konstant für die Abfrage von Beziehungen
    * zu einem Knoten und unabhängig von Datenvolumen
* Balancierte Bäume (B-Bäume) werden für Indexierung aufgebaut

## Wie heissen die Abbildungsregeln für Graphdatenbanken?
* Regel 1 (Entitätsmengen)
    * jede Entitätsmenge muss als eigenständiger Knoten definiert werden
    * Merkmale der Entitätsmengen werden als Eigenschaften der Knoten geführt
* Regel 2 (Beziehungsmengen)
    * jede Beziehungsmenge kann als ungerichtete Kante definiert werden
    * Eigenschaften der Beziehungsmengen werden den Kanten zugeordnet
* Regel 3 (netzwerkartige Beziehungsmengen)
    * jede komplex-komplexe Beziehungsmenge kann durch zwei gerichtete Kanten ausgedrückt werden
    * die Assoziationen der Beziehung liefern den Namen der Kante
    * die entsprechenden Assoziationstypen werden an den Pfeilspitzen annotiert
    * Eigenschaften der Beziehungsmengen können einer oder beiden Kanten angehängt werden
* Regel G4 (hierarchische Beziehungsmengen)
    * eine einfach-komplexe Beziehungsmenge kann als gerichtete Kante ausgedrückt werden
    * die Richtung der Kante ist vom Wurzelknoten zum Blattknoten
    * der mehrfache Assoziationstyp (m oder mc) wird an der Pfeilspitze annotiert
* Regel G5 (hierarchische Beziehungsmengen)
    * jede einfach-einfache Beziehungsmenge kann als gerichtete Kante ausgedrückt werden
    * der Assoziationstyp an der Pfeilspitze sollte nach Möglichkeit eindeutig sein
* Regel G6 (Generalisation)
    * die Superentitätsmenge der Generalisation wird zu einem Doppelknoten
    * die Subentitätsmengen wird zu einem normalen Knoten
    * die Generalisierungshierarchie wird durch Spezialisierungskanten ergänzt
* Regel G7 (Aggregation)
    * die Pfeilspitze wird mit dem Assoziationstypen mc annotiert
    * Eigenschaften der Knoten werden bei den Knoten angehängt
    * Eigenschaften der Kanten werden bei den Kanten angehängt

## Was sind die wichtigsten Befehle in Cyper?
* `MATCH` zur Beschreibung von Suchmustern
* `WHERE` für Bedingungen zur Filterung der Ergebnisse
* `RETURN` zur Rückgabe von Eigenschaften, Knoten, Aggregaten, Beziehungen oder Pfaden
* `ORDER BY` zur Sortierung der Ergebnisse
* `SET` verändert Datenwerte, die ein bestimmtes Muster erfüllen
* `DELETE` löscht entsprechende Knoten und Kanten

## Wie lässt sich mit Cyper eine Selektion und eine Projektion realisieren?
```
MATCH (p:Product)
WHERE p.unitprice > 55
RETURN p.productname, p.unitprice
ORDER BY p.unitprice
```

## Wie wird mit Cyper das Kartesisches Produkt gebildet?
```
MATCH (p:Product), (c:Category)
RETURN p.productname, c.categoryname
```

## Wie wird mit Cyper ein Join gemacht?
```
MATCH (p:Product) -[:PART_OF]-> (c:Category)
RETURN p.productname, c.categoryname
```

## Wie lassen sich in Cyper zwei Knoten erstellen und mit einer Beziehung verbinden?
```
CREATE (p:Product { productname: 'NoSQL-Datenbanken', year: 2016})
    -[:PUBLISHER]-> (o:Organization { name: 'Springer' })
```

## Wie kann man mit Cyper ein Attribut aktualisieren?
```
MATCH (p:Product)
WHERE p.productname = 'Chocolade'
SET p.unitprice = 13.75
```

## Wie kann man mit Cyper ein Knoten und alle verbundenen Kanten gelöscht werden?
```
MATCH ()-[r1]->(p:Product), (p)-[r2]->()
WHERE p.productname = 'Chocolade'
DELETE r1, r2, p
```

## Was sind die strukturelle Integritätsbedingungen einer Graphendatenbank?
* Eindeutigkeit:
    * jeder Knoten und jede Kante kann im Graphen eindeutig identifiziert werden
    * mit sogenannten Pfadausdrücken können beliebige Kanten oder Knoten aufgesucht werden
* Wertebereich:
    * die Merkmale unterliegen den spezifizierten Datentypen
    * das heisst sie stammen aus wohldefinierten Wertebereichen
* Zusammenhang:
    * wird zusammenhängend genannt, wenn es zu je zwei Knoten im Graphen einen Pfad gibt
    * die Graphdatenbank garantiert den Zusammenhang für Graphen oder Teilgraphen

