# Binäre Bäume

## Was ist ein binärere Baum?
* ist als Baum mit der Ordnung 2 definiert
* jeder Knoten hat somit maximal zwei Kinderknoten

## Wieso sind binäre Bäume sind in der Informatik sehr beliebt?
* stark vereinfachte Algorithmen weil nur Ordnung 2 möglich
* die Suche im Baum entspricht einer binären Suche

## Wie nennt man, es wenn die Elemente eines binären Baumes geordnet sind?
ausgeglichenen, symmetrischen, balancierten Binärbaum

## Auf welche Arten kann eine binärere Baum traversiert werden?
* Preorder - Hauptreihenfolge
    * zuerst der Knoten selber
    * dann linker Kindknoten
    * dann rechter Kindknoten
* Postorder - Nebenreihenfolge
    * zuerst linker Kindknoten
    * dann rechter Kindknoten
    * schlussendlich den Knoten selber
* Inorder - Symmetrische Reihenfolge
    * zuerst linker Kindknoten
    * dann den Knoten selber
    * schlussendlich den rechter Kindknoten

## Was sind binäre Suchbäume?
* sind im wesentlichen identisch mit binären Bäumen
* enthalten noch folgende Zusatzinformationen
    * zusätzlich noch einen Schlüsselwert
    * nach welchem die Datenelemente im Baum geordnet werden 
    * nach welchem dann effizient gesucht werden kann
* Dieser Schlüssel kann
    * aus (Teil-)Daten des Datenelementes bestehen
    * oder aus (Teil-)Daten des Datenelementes berechnet werden

## Wie karakterisiert sich ein geordneter binärere Suchbaum?
Jeder Schlüssel im linken Teilbaum eines Knotens ist kleiner als der Schlüssel im Knoten selbst. 
Jeder Schlüssel im rechten Teilbaum eines Knotens ist grösser (oder gleich, falls Duplikate erlaubt sind) dem Schlüssel im Knoten selbst

## Welches sind die bekannten Operationen auf binären Suchbäumen?
* Suchen eines Elementes
    * Bei der binären Suche wird die Suchmenge sukzessive halbiert, bis das gesuchte Element entweder gefunden ist, oder man eine leere Menge hat
    * Aufwand ist somit log2(n), entspricht O(log n), unter der Bedingung, dass der Baum ausgeglichen (balanciert) ist
* Einfügen eines neuen Elementes
    * Um ein Element in einen binären Suchbaum einzufügen, sucht man nach dem Element und fügt es dann an der Stelle ein, an welcher man es hätte finden müssen
    * Das Element wird mit einem neuen Knoten ergänzt
* Entfernen eines Elementes
    * Nachdem man das zu entfernende Element durch die binäre Suche gefunden hat, gibt es drei verschiedene Fälle
    * Das Element ist ein Blatt (keine Kindknoten)
        * Ein Blatt kann ganz einfach und ohne weitere Schritte entfernt werden
    * Das Element ist ein innerer Knoten mit einem Kindknoten
        * Das Element wird gelöscht
        * Der Kindknoten nimmt den Platz des gelöschten Knotens ein
    * Das Element ist ein innerer Knoten mit zwei Kindknoten
        * Man ersetzt das gelöschte Element mit demjenigen Knoten aus dem rechten Teilbaum, das in diesem am weitesten links steht (und somit den kleinsten Wert im rechten Teilbaum hat)
* Balancieren eines Baumes (ausgleichen)
    * Um eine maximale Performance bei der Suche zu gewährleisten, sollte ein Baum im Verhältnis zu seinem Gewicht eine minimale Anzahl Niveaus enthalten, und möglichst ausgeglichen aufgebaut sein
    * Ein Baum ist ausgeglichen, wenn sich die Höhen des linken und des rechten Teilbaumes jedes Knoten um maximal 1 unterscheiden
    * Ausgleichen durch Rotation
        * Knoten durch linkes Kind ersetzten
        * linkes Kind referenziert rechts auf den Knoten
        * rechtes Kind des Knotens wird ganz links im rechten Baum angehängt

## Wieso sollte man einen binären Baum ausbalancieren?
* um eine maximale Performance bei der Suche zu gewährleisten
* sollte im Verhältnis zu seinem Gewicht eine minimale Anzahl Niveaus enthalten
* ist ausgeglichen, wenn sich die Höhen des linken und des rechten Teilbaumes um maximal 1 unterscheiden

## Wann muss ein Baum ausgeglichen werden?
* muss nach jedem Einfügen oder Entfernen eines Elementes die Höhendifferenzen auf dem Pfad zum Element überprüft
* und der Baum z.B. durch mehrere Rotationen wieder ausbalanciert werden
* Das macht die entsprechenden Operationen zwar aufwändiger, sie behalten aber ihre Ordnung O(log n)

