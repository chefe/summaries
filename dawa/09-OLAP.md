# OLAP

## Wie viele möglichen Achsenkombinationen gibt es bei n Dimensionen?
`n*(n-1)`

## Welche weiteren Würfel-Grundoperationen gibt es?
* Roll Up
    * Gegenoperation zu Drill-Down
    * Verdichten auf einer höheren Stufe
* Drill Down
    * Gegenoperation zu Roll-Up
    * Detaillierung eines Informationsobjekts auf einzelne Werte 
* Drill Across
    * wechselt von einem Cube zum anderen
    * nimmt weitere Cubes zur Hilfe

## Welche verschiedenen Modelltypen gibt es?
* Logisches Modell (ERD)
* Physisches Modell (SQL-DDL)
* Konzeptuelles oder semantisches Modell

## Welche OLAP Varianten gibt es?
* MOLAP - Multidemsional OLAP
    * Komplex, kleine Kapazität
* ROLAP - Relative OLAP
    * Einfach, grosse Kapazität
* HOLAP - Hybrid OLAP
    * Komplex, grosse Kapazität
* DOLAP - Desktop OLAP
    * Einfach, kleine Kapazität

## Was ist der Unterschied zwischen analytischer und operativen DB?
* Analytische DB 
    * auf Abfrageperformanz optimiert
    * wird Management Fragen gerecht
* Operative DB
    * normalisierten Datenbank

## Was sind die Schritte zu einem Datenmodell?
1. Identifikation der Fakten
2. Identifikation der Dimensionen
3. Festlegen der Dimensionshierarchie
4. Herstellung der Beziehungen

## Was sind die Eigenschaften von Faktentabellen und Dimensionstabellen?
* Dimensionstabellen 
    * enthält meist diskrete, textuelle und markierende Attributswerte
    * ist bis zur NF 2 normalisiert
    * ist eher statisch
* Faktentabellen
    * sind immer dynamisch wachsend
    * enthalten 90% der Daten eines DWHs oder mehr
    * enthalten keine Redundanzen

### Wie funktioniert die Operation CUBE?
```
SELECT item, color, SUM(quantity) As qtsum 
    FROM Inventory GROUP BY CUBE (Item, Color);
```

> ergibt 9 Datensätze 

|       | Rot | Blau | Null |
|-------|-----|------|------|
| Stuhl | 210 | 101  | 311  |
| Tisch | 223 | 124  | 347  |
| NULL  | 433 | 225  | 658

### Wie funktioniert die Operation ROLLUP?
```
SELECT item, color, SUM(quantity) As qtsum
    FROM Inventory GROUP BY ROLLUP (Item, Color);
```

> ergbit 7 Datensätze

|       | Rot | Blau | Null |
|-------|-----|------|------|
| Stuhl | 210 | 101  | 311  |
| Tisch | 223 | 124  | 347  |
| NULL  | -   | -    | 658  |

### Wie funktioniert die Operation GROUPING SETS?
```
SELECT item, color, SUM(quantity) As qtsum
    FROM Inventory GROUP BY GROUPING SETS (Item, Color);
```

> ergbit 4 Datensätze

|       | Rot | Blau | Null |
|-------|-----|------|------|
| Stuhl | -   | -    | 311  |
| Tisch | -   | -    | 347  |
| NULL  | 433 | 225  | -    |

## Für was steht die Abkürzung MDX?
Multidimensional Expressions

## Welche 4 Varianten der analytischen Datenauswertung gibt es?
* Variante 1
    * Query Express oder SQL Server Management Studio
    * Select auf Faktentabellen mit 3 Joins auf Dim Tabellen
    * nicht geeignet für Manager
* Variante 2
    * Query Express oder SQL Server Management Studio und Excel
    * Select nur auf Faktentabellen und anschliessende Pivotisierung mit Excel
    * nicht geeignet für Manager
* Variante 3
    * SQL Server Management Studio
    * MDX Select auf Cube
    * nicht geeignet für Manager
* Variante 4
    * OLAP Tool
    * Drag and Drop
    * für Manager geeignet

