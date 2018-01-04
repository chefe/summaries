# Parallelisierungsframeworks

## Was bedeuteten die Begriffe Fork und Join?
* Fork (Aufteilen)
    * wird von einem übergeordneten Thread aufgerufen
    * erstellt ein neuen Kind-Thread
    * Elternteil fährt nach Fork-Vorgang weiter
    * Kind beginnt Opration getrennt von Elternteil
    * schafft Nebenläufigkeit
* Join (Vereinen)
    *  Kinder rufen join auf, wenn die Operation zu Ende ist
    *  Elternteil warted auf das Kind (bis Operation abgeschlossen ist)
    *  Reduziert Nebenläufigkeit, weil Kinder beendet werden

## Was ist die Bedeutung von Fork-Join für Nebenläufigkeit?
* Abhängigkeiten
    * Elternteil muss auf seine Kinder warten
    * Kindern können in beliebiger Reihenfolge zusammenkommen
* Ist ein Kontrollmeachanismus für die Nebenläufigkeit

## Wie funktioniert der Kontrollfluss des Fork-Join-Pattern?
* Kontrollfluss wird in mehrere Nebenläufige Flüsse aufgeteilt
* diese werden dann am Schluss wieder zusammengeführt
* eine Vereinigung entspricht einem Synchronisationspunkt
* wenn alle Aufgaben erledigt sind wird das Programm fortgesetzt

## Was beschreibt der Parallelisierungsgrad?
In wie viele nebenläufige Operationen eine Aufgabe zerteilt werden kann

## Was sind die Folgerungen aus dem Fork-Join-Pattern?
* die Auswahl der Basisfall ist wichtig (kleinester parallelisierbarer Task)
* Rekursion muss tief genung sein für möglichst viel Paralellität
* falls zu tief gewählt gibt es Performance-Einbussen durch das Scheduling

## Was sind die Komponenten des ForkJoin-Frameworks?
* ForkJoinPool (Threadpool)
* ForkJoinTask (Spezialisierung von Future)

## Was für spezialisierte Klassen gibt es im ForkJoin-Frameworks?
* RecursiveAction
    * für Aufgaben ohne Rückgabe
* RecursiveTask
    * für Aufgaben mit Rückgabe
* CountedCompleter
    * für Aufgaben mit speziellem Warten auf das Ende der Sub-Tasks

## Was sind wichtige Methoden des ForkJoinPool?
* `void execute(ForkJoinTask<?> task)`
    * Führt den Task asynchron aus
* `T invoke(ForkJoinTask<T> task)`
    * Startet die Ausführung und wartet (synchrone Ausführung)
* `ForkJoinTask<T> submit(ForkJoinTask<T> task)`
    * Führt den Task aus und gibt ein Future-Objekt zurück

## Was ist das Work-Stealing-Verfahren?
* Jeder Thread besitzt eine eigene Task-Queue
* Falls die Queue leer ist, holt er sich Aufgaben vom Ende einer anderen Task Queue 
* dabei kommen Double-Ended-Queues (Deque) Einsatz

## Welche Methoden biete ein ForkJoinTask?
* compute
    * die vom Task zu implementierende Aufgabe
* fork
    * asynchrone Ausführung des Tasks starten
* invoke
    * synchrone Ausführung des Tasks starten
* join 
    * Ergebnis der Verarbeitung holen
* get
    * Verhält sich wie join, wirft aber InterruptedException

## Wie wird ein Task mit dem ForkJoin-Framework gestartet?
```
final ForkJoinPool forkJoinPool = new ForkJoinPool();
final SimpleTask rootTask = new SimpleTask();
forkJoinPool.invoke(rootTask);
```

## Wie kann ein Task noch einfach gestartet werden?
```
final SimpleTask rootTask = new SimpleTask();
rootTask.invoke();
```

## Was ist beim ForkJoinPool speziell?
* muss nicht explizit beendet werden
* Threads besitzen Daemon-Eigenschaft

## Wie funktioniert ein Mischen mit dem Riessverschlussverfahren?
```
private void merge(final int min, nit mid, int max) {
    int[] buf = Arrays.copyOfRange(array, min, mid);
    int i = 0;
    int j = min;
    int k = mid;
    while (i < buf.length) {
        if (k == max || buf[i] < array[k]) {
            array[j] = buf[i];
            i++;
        } else {
            array[j] = array[k];
            k++;
        }
        j++;
    }
}
```

