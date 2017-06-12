# Arrays, Listen, Queue und Stack

## Was für Arten von Datenstrukturen gibt es?
* Datenstrukturen als reine Sammlung
    * einzelnen Datenelemente sind ungeordnet abgelegt
* Datenstrukturen mit Reihenfolge
    * Datenelemente in bestimmten Reihenfolge einfügen und beibehalten
* Datenstrukturen mit automatischer Ordnung
    * Datenstrukturen welche Elemente implizit ordnen

## Wie unterscheiden sich Datenstrukturen?
* statische Datenstruktur
    * nach Initialisierung eine feste, unveränderlich Grösse
    * kann somit nur eine beschränkte Anzahl Elemente aufnehmen
* dynamische Datenstruktur
    * kann ihre Grösse während der Lebensdauer verändern
    * kann somit eine beliebige Anzahl Elemente aufnehmen
* explizite Datenstruktur
    * Beziehungen zwischen Elementen werden von jedem Element selber explizit mit Referenzen festgehalten
* implizite Datenstruktur
    * Beziehungen werden nicht von den Elementen selber festgehalten
    * Beziehungen werden von aussen definiert, beispielsweise über eine externe Nummerierung
* direkter Zugriff
    * Zugriff auf jedes Element zu jeder zeit möglich
* indirekter Zugriff
    * Zugriff auf spezifisches Element möglich
    * anderfalls sequenzielles Abarbeiten nötig

## Wie funktioniert eine einfacher binärer Suchalgorithmus?
* Voraussetzung ist eine sortierte Datenmenge
* Datenmenge in der Mitte teilen.
* Auf Basis des Trennelementes entscheiden, ob man in der linken oder rechten Hälfte weitersucht.
* Algorithmus rekursiv mit der ausgewählten Hälfte wiederholen.
* Algorithmus endet, wenn das Element gefunden wurde, oder wenn nur noch ein Element vorhanden ist

## Wie verhält sich der Aufwand bei verschiedenen Operationen auf einem Array?
| Operation  | Unsortiert           | Sortiert                 |
|------------|----------------------|--------------------------|
| Suchen     | `O(n)`               | `O(log n)`               |
| Hinzufügen | `O(1)`               | `O(log n) + O(n) = O(n)` |
| Entfernen  | `O(n) + O(1) = O(n)` | `O(log n) + O(n) = O(n)` |

## Welche Arten von Listen gibt es?
* Einfach verkettete Liste:
    * Es gibt eine Referenz auf das erste Element
    * Jedes Element kennt seinen direkten Nachfolger
* Doppelt verkettete Liste
    * Es gibt Referenzen auf das erste und das letzte Element in der Liste
    * Jedes Element kennt seinen direkten Vorgänger und Nachfolger

## Welche Eigenschaften haben Listen?
* dynamische Datenstruktur (Grösse passt sich an)
* Explizite Datenstruktur (Elemente haben explizite Beziehungen untereinander)
* Nur indirekter Zugriff (nur sequenzieller Zugriff möglich)
* Reihenfolge (Liste behält die Positionen der Datenelemente)

## Wie verhält sich der Aufwand von Operationen bei einer Liste?
* Suchen eines Elementes => `O(n)`
* Einfügen (unsortierte Liste) => `O(1)`
* Einfügen (sortierte Liste) => `O(n)`
* Entfernen eines Elementes => `O(n)`

## Was sind die Vorteile von Listen gegenüber Arrays?
* können beliebige Datenmenge aufnehmen
* belegen selber aber keinen festen Platz
* Aufwand für das reine Einfügen konstant
* Listen sind als Datenstrukturen objektorientiert implementiert

## Was ist der Aufwand der Operationen beim Stack?
* Implementation mit Array
    * push(): Anhängen am Ende => Aufwand `O(1)`
    * pop(): Entnehmen am Ende => Aufwand `O(1)`
    * Array ist statisch, Grösse somit beschränkt
    * Maximaler Platz immer belegt und reserviert
    * Darum aber auch sehr schnelles Einfügen möglich
* Implementation mit Liste:
    * push(): Einfügen am Anfang der Liste => Aufwand `O(1)`
    * pop(): Entnehmen am Anfang der Liste => Aufwand `O(1)`
    * Leerer Stack benötigt (fast) keinen Platz
    * Grösse dynamisch und nur durch Speicher begrenzt
    * Langsamer wegen Speicheranforderung für neue Elemente

## Was ist der Aufwand der Operationen beim einer Queue?
* Implementation mit Liste
    * enqueue(): Einfügen am Ende der Liste => Aufwand `O(1)`
    * dequeue(): Entnehmen am Anfang der Liste => Aufwand `O(1)`
    * Doppelt verkettete Liste notwendig
    * Leere Queue benötigt fast keinen Platz
    * langsamer aufgrund von Speicheranforderungen
* Implementation mit Array
    * enqueue(): Anhängen am Ende => Aufwand `O(1)`
    * dequeue(): Entnehmen am Ende => Aufwand `O(1)`
    * Trickreiche Implementation aus logischer Ringbuffer
    * Maximaler Platz immer belegt und reserviert
    * Darum aber auch wieder sehr schnell

