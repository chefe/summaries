# Java 2

## Für was steht die Abkürzung SAM?
Single Abstract Method

## Was ist die Idee hinter Aggregate Operations?
Operationen elegant auf Datenstrukturen anwenden können

## Welche primitive Streams gibt es?
* `IntStream`
* `DoubleStream`
* `LongStream`

## Was ist die Hauptmotivation für primitive Streams?
Performance

## Was ist bei primitive Streams zu bachten?
* primitive Versionen erben nicht von Stream
* primitive Streams erben (wie auch Stream) von BaseStream
* keine Streams für char und float; nächst "grösseren" primitiven Stream-Typ verwenden
* `IntStream` für `char` und `DoubleStream` für `float`

## Welche statische Stream-Factories gibt es?
```
IntStream.range(10, 100).forEach(System.out::println); // 10, 11, ..., 100
Stream.of("a", "b", "c").forEach(System.out::println); // a, b, c
```

## Welche zwei Arten von Streams gibt es?
* __intermediate (lazy):__ wieder einen Stream produzieren: `filter()`, `map()`, ...
* __terminal / consuming (eager):__ etwas anderes tun: `forEach()`, `reduce()`, ...

## Wie funktioniert die Stream-Auswertung bei terminal-Operation?
* intermediate-Streams werden nicht direkt ausgewertet
* sondern erst wenn eine terminal-Operation aufgerufen wird
* dann wird Element für Element durchgearbeitet
    * es werden alle intermediat der Reihe nach angewendet
    * und dann der terminal-Operation angewendet
    * danach wird zum nächsten Element gesprungen

## Was sind die Gründe für diese Art der Stream-Auswertung?
* Performance
* Code Optimierung
* Kein Buffer von intermediate Stream-Resultaten
* Einfachere Behandlung von paralellen Streams

## Was ist bei consuming Operations zu beachten?
* Stream ist nachher "verbraucht" und daher leer

## Wie werden die Stream Operationen angewendet?
```
int x = IntStream.range(1, 10)
    .reduce(0, (a, b)-> a + b);

int y = IntStream.range(0, 10)
    .filter(i -> i % 3 == 0)
    .map(i -> i + 1)
    .reduce(1, (a, b) -> a * b);
```

## Welche stateful intermediate Operations gibt es?
* `limit()`
* `substream()`
* `distinct()`
* `sorted()`
* ...

## Was ist das Problem von stateful intermediate Operations?
* Operation braucht zusätzlichen Zustand
* Operationen brauchen aktuelles Stream-Element um zu entscheiden was zu tun
* nicht so einfach handhabbar, viel aufwändiger

## Was ist eine short-circuiting Operations?
können Abarbeitung stoppen, bevor das letzte Element erreicht ist

## Welche short-circuiting Operations gibt es?
* intermediate
    * `limit(long maxSize)`
    * `skip(long n)`
* terminal
    * `anyMatch(...)` / `noneMatch(...)` / `allMatch(...)`
    * `findAny(...)` / `findFirst(...)`

## Was ist die Motivation für parallele Streams?
Bessere Ausnutzung von Multi-Core- und Mutli-Prozessor-Rechnern

## Was sind die Vorteile von parallele Streams?
* sehr benutzerfreundlich
* ProgrammiererIn muss wenig dafür tun
* gleiche Operationen für parallele und sequentielle Streams

## Welche Arten von Streams gibt es?
* sequentielle Streams
* parallele Streams

## Wie kann ein Stream paralellisiert werden?
```
s1.parallel()...        // s1 in einen paralellen Stream umwandeln
s2.sequential()...      // s2 in einen sequenziellen Stream umwandeln
s3.isParallel()...      // Parallelität des Streams überprüfen
```

## Was sind die Anforderungen an Lambda-Parameter für Stream-Operationen?
* zustandslos (keine Seiteneffekte)
* non-interfering (keine Änderung an Stream-Datenquelle)

## Wie kann ein unendlicher DoubleStream erzeugt werden?
```
long sampleSize = 1_000L;

double sum = DoubleStream.generate(Math::random)
    .skip(7_000_000L)
    .limit(sampleSize)
    .sum();

System.out.println("average = " + (sum / sampleSize));
```

