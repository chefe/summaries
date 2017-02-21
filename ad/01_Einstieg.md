# Einstieg

## Wie wird ein Algorithmus definiert?
Ein Algorithmus ist ein präzise festgelegtes Verfahren zur Lösung eines Problems.
Genauer gesagt von einer Problemklasse beinhaltend (unendlich) viele gleichartige Probleme.

## Was sind Beispiele für einen Algorithmus?
* Berechnung des grössten gemeinsamen Teilers (ggT) für zwei beliebige natürliche Zahlen.
* Zeichnen der Verbindungslinie, welche zwei Punkte verbindet.
* Sortierung von zufällig vorliegenden ganze Zahlen.
* Finden des kürzesten Weges zwischen zwei Knoten in einem zusammenhängenden Graphen.
* Entscheiden, ob es sich bei einer vorliegenden natürlichen Zahl um eine Primzahl handelt.
* Berechnung des Integrals bei vorliegenden Funktionswerten in einem bestimmten Bereich.
* Finden einer Lösung in einem vorgegebenen Lösungsraum.

## Was sind die Eigenschaften eines Algorithmus?
* schrittweises Verfahren
* ausführbare Schritte
* eindeutiger nächster Schritt (determiniert)
* endet nach endlich vielen Schritten (terminiert)

## Wie wird der Begriff Datenstrucktur definiert?
Eine Datenstruktur ist ein Konzept zur Speicherung und Organisation von Daten.

## Wie funktioniert der Euklidische Algorithmus zur ggT-Berechnung?
1. Sei A die grössere der beiden Zahlen A und B (Vertauschen, falls dies nicht so ist)
2. Setze A = A - B
3. Wenn A und B ungleich sind, dann fahre fort mit Schritt 1, wenn sie gleich sind, dann beende den Algorithmus. Diese Zahl ist der ggT.

## Wie lässt sich der ggt verechnen?

    public static int ggtIterativ1(int a, int b) {
        while (a != b) {
            if (a > b) {
                a = a - b;
            } else {
                b = b - a;
            }
        }
        return a;
    }

    public static int ggtRekursiv(final int a, final int b) {
        if (a > b) {
            return ggtRekursiv(a - b, b);
        } else {
            return (a < b) ? ggtRekursiv(a, b - a) : a;
        }
    }

## Wie wird der Begriff Komplexität definiert?
* Komplexität (auch Aufwand oder Kosten) eines Algorithmus
* Ressourcenbedarf ist abhängig von den Eingabedaten
* Ressourcenbedarf:
    * Rechenzeit (Zeitkomplexität)
    * Speicherbedarf (Speicherkomplexität)
* Eingabedaten:
    * Grösse der Datenmenge (z.B. 100 vs. 1'000'000'000 zu sortierende Elemente)
    * Grösse eines Datenwertes (z.B. 10! vs. 1'000'000'000!)

## Wie wird die Rechenzeit eines Algorithmus berechnet?

    public static void task(final int n) {
        task1(); task1(); task1(); task1();   // T ~ 4
        for (int i = 0; i < n; i++) {         // aeussere Schleife: n-Mal
            task2(); task2(); task2();        // T ~ n * 3
            for (int j = 0; j < n; j++) {     // innere Schleife: n-Mal
                task3(); task3();             // T ~ n * n * 2
            }
        }
    }

* Annahmen
    * Die Methoden task1(), task2() und task3() besitzen in etwa dieselbe Rechenzeit.
    * Die Schleifensteuerungen beanspruchen im Vergleich vernachlässigbare kleine Ausführungszeiten.
* Rechenzeit T von task(n): T = f(n) ~ 4 + 3*n + 2*n*n

## Was sind die wichtigen Ordnungsfunktionen?
TODO from päddi

## Wie muss bei der Analyse eines Algorithmus differenzieren?
* bester Fall (best Case)
* schlimmster Fall (worst Case)
* mittlerer Fall (average Case)


