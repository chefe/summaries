# Suchalgorithmen

## Wie funktioniert eine einfache Suche?
* Durchsuche die Zeichenkette schrittweise von vorn nach hinten
* Überprüfe an jeder Stelle, ob das Pattern dort vorkommt
* Falls ja, gib den entsprechenden Index zurück
* Falls nein, gehe einen Schritt weiter
* Falls das Pattern nirgends gefunden wurde, gib -1 zurück
* Besitzt die Laufzeitkomplexität O(n*m)

```
public static int simpleSearch(final String a, final String p) {
    final int maxIndex = a.length() - p.length();
    final int notFound = -1;

    for (int index = 0; index <= maxIndex; index++) {
        boolean success = true;
        for (int j = 0; j < p.length(); j++) {
            if (a.charAt(index + j) != p.charAt(j)) {
                success = false;
                break;
            }
        }

        if (success) {
            return index;
        }
    }
    return notFound;
}
```

## Wie funktioniert ein optimierter Suchautomat?
* Suchen nach einem binären Pattern
* Zuletzt eingelesene Zeichen werden bei erneutem Vergleich genutzt
* besitzt die Laufzeitkomplexität O(n)
* kann nur nach einprogrammierten Pattern suchen

## Wie funktioniert die Suche mit einem Musterautomat?
* funktioniert mit beliebigen Zeichenketten
* das nächsten Zeichens kann immer zu mehrere Zustandsübergänge führen
* im schlimmsten Fall landet man immer wieder bei Startzustand
* kein Zeichen wird wiederholt gelesen
* immer zwei Zustandsübergänge (gewünschtesZeichen vs. !gewünschtesZeichen)

## Was bezeichnet man als Rand eines Wortes?
Der Rand eines Wortes ist die längste Zeichenfolge, dir kürzer 
ist als das Wort selber und die sowohl am Anfang als auch am 
Ende des Wortes auftritt.

Beispiele (text => t, meme => me, abcdabc => abc, wort => )

## Wie funktioniert der KMP-Algorithmus?
* basierend auf dem Pattern den Musterautomaten erzeugen
* mit Hilfe der Musterautomanten nach dem Pattern suchen
* die Laufzeitkomplexität ist O(m+n)

## Wie unterscheiden sich ein optimierter Suchautomat und ein Musterautomat?
* Eigenschaften optimierter Suchautomat
    * aufwändig zu konstruiert für ein spezifisches Pattern
    * pro Zustand mehrere Ausgänge möglich
    * führen direkt zum nächsten Zustand
    * Keine !-Übergänge (sonst-Übergänge)
* Eigenschaften Musterautomat
    * Konstruiert mittels Ränder der Teilwörter
    * Pro Zustand nur zwei Ausgänge (zeichen und !zeichen).
    * ggf. müssen für ein Zeichen mehrere Zustandsübergänge genommen werden

## Wie funktioniert ein Quicksearch?
* Pattern wird zeichenweise mit der Zeichenkette verglichen
* bei Unstimmigkeit wird das Vergleichen abgebrochen
* eine potenzielle Fundstelle muss somit weiter rechts liegen
* das Zeichen unmittelbar nach dem Pattern analysieren
* Pattern nach rechts schieben abhängig des nächsten Zeichens

## Wie funktioniert ein Optimal-Mismatch?
* basiert auf Quicksearch
* Optimierung basiert auf Zeichenhäufigkeit
* für das Vergleichen werden zuerst die seltenen Zeichen genutzt

## Wie funktioniert ein Optimal-Mismatch bei unbekannter Zeichenhäufigkeit?
* Nach einem Missmatch das entsprechende Zeichen um eine Stelle verschieben
* seltene Zeichen sammeln sich am Beginn des Patterns

