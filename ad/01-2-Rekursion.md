# Rekursion

## Was ist das grundlegende der Rekursion?
* Viele Algorithmen und Datenstrukturen sind von Natur aus selbstähnlich bzw. selbstbezüglich
* Beispiele:
    * Der ggT von (21, 15) ist gleich dem ggT von (21-15, 15).
    * Ein Verzeichnis enthält Dateien und andere Verzeichnisse.
    * Ein Ausschnitt einer Matrix, einer Liste, eines Baumes, eines Graphen ist wieder eine Matrix, eine Liste, ein Baum, ein Graph.

## Was sind die Rekursionsbasis und die Rekursionsvorschrift?
```
    public static int factorialRec(final int n) {
        if ((n == 0) || (n == 1)) {           // Rekursionsbasis
            return 1;                         // Rekursionsbasis
        } else {                              // Rekursionsvorschrift
            return (n * factorialRec(n - 1)); // Rekursionsvorschrift
        }
    }
```

## Welche zwei wichtigen Speicher verwendet die JVM?
* Heap
* Call Stack

## Was ist der Heap?
In diesem Speicherbereich werden die Objekte gespeichert,
d.h. deren Instanzvariablen bzw. Zustände. Nicht mehr
referenzierbare Objekte werden durch den Garbage Collector (GC)
automatisch gelöscht.

## Was ist der Call Stack?
Letztendlich wird bei der Ausführung eines JavaProgramms eine Kette von Methoden aufgerufen 
bzw. abgearbeitet. Ursprung ist die main()-Methode. Jeder Methodenaufruf bedingt gewissen 
Speicher, insbesondere für ihre aktuellen Parameter und lokalen Variablen. Dazu dient der Call 
Stack. Ein neuer Methodenaufruf bewirkt, dass der Call Stack wächst bzw. darauf ein zusätzlicher 
Stack Frame angelegt wird

## Was sind die Vor- und Nachteile von Rekursion?
* Vorteile
    * häufig einfache und elegante Problemlösungen
    * weniger Quellcode
    * Korrektheit häufig einfacher zu zeigen
* Nachteile
    * Schnell sehr viele Methodenaufrufe
    * tendenziell langsamere Programmausführung
    * grosser Speicherbedarf auf dem Call Stack
    * Gefahr eines Stack Overflow

## Was für Rekursionstypen gibt es?
* Lineare Rekursion: 
    * Die Ausführung der Methode `m` führt zu höchstens einem rekursiven Aufruf
* Nichtlineare Rekursion: 
    * Die Ausführung der Methode `m` führt zu mehr als einem rekursiven Aufruf
    * nicht geschachtelt  / primitiv rekursiv:
        * `m(...) -> m(...), m(...)`
    * geschachtelt / nicht primitiv rekursiv:
        * `m(...) -> m(m(...)...)`
* Direkte Rekursion: 
    * Eine rek. Methode ruft sich direkt selbst auf
* Indirekte Rekursion: 
    * Eine rekursive Methode ruft sich indirekt selbst auf

