# Einstieg

## Wie wird ein Algorithmus definiert?
Ein Algorithmus ist ein präzise festgelegtes Verfahren zur Lösung eines Problems

## Was ist eine Problemklasse?
beinhaltet unendlich viele gleichartige Probleme

## Was sind Beispiele für einen Algorithmus?
* Berechnung des grössten gemeinsamen Teilers für zwei beliebige natürliche Zahlen
* Zeichnen der Verbindungslinie, welche zwei Punkte verbindet
* Sortierung von zufällig vorliegenden ganze Zahlen
* Finden des kürzesten Weges zwischen zwei Knoten in einem zusammenhängenden Graphen
* Entscheiden, ob es sich bei einer vorliegenden natürlichen Zahl um eine Primzahl handelt
* Berechnung des Integrals bei vorliegenden Funktionswerten in einem bestimmten Bereich
* Finden einer Lösung in einem vorgegebenen Lösungsraum

## Was sind die Eigenschaften eines Algorithmus?
* schrittweises Verfahren
* ausführbare Schritte
* eindeutiger nächster Schritt (determiniert)
* endet nach endlich vielen Schritten (terminiert)

## Wie wird der Begriff Datenstruktur definiert?
Eine Datenstruktur ist ein Konzept zur Speicherung und Organisation von Daten

## Auf welche 2 Arten lässt sich ein Algorithmus umsetzten?
* iterativ
* rekursiv

## Wie wird der Begriff Komplexität definiert?
* auch Aufwand oder Kosten eines Algorithmus
* Ressourcenbedarf ist abhängig von den Eingabedaten
* Ressourcenbedarf:
    * Rechenzeit (Zeitkomplexität)
    * Speicherbedarf (Speicherkomplexität)
* Eingabedaten:
    * Grösse der Datenmenge (z.B. 100 vs. 1Mrd zu sortierende Elemente)
    * Grösse eines Datenwertes (z.B. 10! vs. 1Mrd!)

## Wie wird die Rechenzeit eines Algorithmus berechnet?
```java
    public static void task(final int n) {
        task1(); task1(); task1(); task1();   // T ~ 4
        for (int i = 0; i < n; i++) {         // aeussere Schleife: n-Mal
            task2(); task2(); task2();        // T ~ n * 3
            for (int j = 0; j < n; j++) {     // innere Schleife: n-Mal
                task3(); task3();             // T ~ n * n * 2
            }
        }
    }
```

* Annahmen
    * Die Methoden task1(), task2() und task3() besitzen in etwa dieselbe Rechenzeit
    * Die Schleifensteuerung beanspruchen im Vergleich vernachlässigbare kleine Ausführungszeiten
* Rechenzeit T von task(n): T = f(n) ~ 4 + 3*n + 2*n*n

## Was sind die wichtigen Ordnungsfunktionen?
| Bezeichnung   | Notation      | Beispiele                          |
|---------------|---------------|------------------------------------|
| Konstant      | `O(1)`        | Hashing                            |
| Logarithmisch | `O(ln(n))`    | binäres Suchen                     |
| Linear        | `O(n)`        | Suchen in Text                     |
| `n*log(n)`    | `O(n*log(n))` | schlaues Sortieren                 |
| Polynominal   | `O(n^m)`      | einfaches Sortieren                |
| Exponential   | `O(m^n)`      | Optimierungen                      |
| Fakultät      | `O(n!)`       | Permutationen, Travelling Salesman |

## Wie muss bei der Analyse eines Algorithmus differenzieren?
* bester Fall (best Case)
* schlimmster Fall (worst Case)
* mittlerer Fall (average Case)

