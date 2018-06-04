# MDX

## Was bedeutet die Abkürzung MDX?
* Multi Dimensional Expressions
* wurde von Microsoft entwickelt 
* etablierte sich als De-facto Standard
* ist eine auf SQL basierte Sprache
* erlaubt Abfragen auf multidimensionale Datenbanken ausführen
* die Sprache ist sehr komplex und mächtig

## Was bedeutet die Abkürzung DAX?
* Data Analysis Expressions
* Alternative zu MDX

## Wie ist ein MDX Select-Query aufgebaut?
```
SELECT [measures].[menge} ON 0,
[mitarbeiter].[mitarbeiter].members ON 1,
[Produkt].[Artikel] ON 2 FROM DW1fach
```

## Was bedeuten die verschiedenen Klammern in MDX?
* Geschweifte Klammern {} dienen dazu, Sets als solche zu kennzeichnen
* in runden Klammern () werden Tupel für die WHERE-Klausesl eingeschlossen
* in eckigen Klammern [] werden die Namen von Dimensions, Levels, etc. eingesclossen

## Was ist der Unterschied zwischen MEMBERS und CHILDREN?
* Members - Menge aller Tupel dieser Tabelle
* Children - Menge aller untergeordneten Tupel eines angegebene Elements

