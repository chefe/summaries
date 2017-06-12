# Weiterführende Konzepte

## Was sind die Unterschiede zwischen Runnable und Callable?
* eine Runnable-Aufgabe besitzt keinen Rückgabewert
* soll ein Wert zurückgeliefert wernden get das nur über ein spezielles Attribut
* das Interface Callable kennt nur eine call()-Methode
* ein Callable kann nun einen Rückgabewert habe
* Typ des Rückgabewertes wird per Typparameter festgelegt

## Wie funktioniert eine Callable mit Rückgabe?
* nutzen eines FutureTask
* FutureTask implementiert Runnable und Future
* über die get-Methode erhält mann Zugriff auf das Ergebnis

## Was bietet die Future-Klasse an?
* es gibt eine get-Methode mit einem Timeout welche TimeOutExceptions wirft
* mit isDone kann der Bearbeitungsstatus abgefragt werden
* zum Abbrechen kann cancel() verwendet werden
* mit isCancelled kann geprüft werden, ob der Task abgebrochen wurde

## Wie kann ein Future über einen ExecutorService übergeben werden?
* über submit-Methode auf dem executor

## Welche primitiven Datentypen sind unterbrechbar?
* long und double (weil 2 Register)

## Wie lassen sich Variablen immer atomar verwenden?
* Referenzen benutzen
* Varablen mit volatile kennzeichnen

## Welche Methoden bietet ein AtomicInteger?
* int addAndGet(int delta)
    * Der Wert wird atomar um delta erhöht und der neue Wert wird zurückgegeben
* int decrementAndGet()
    * Der Inhalt wird atomar dekrementiert und der neue Wert wird zurückgegeben
* int incrementAndGet()
    * Der Inhalt wird atomar inkrementiert und der neue Wert wird zurückgegeben
* int set(int newValue)
    * Der Wert wird durch newValue ersetzt und der neue Wert wird zurückgegeben
* int get()
    * Liefert den aktuellen Wert

## Welche Methoden bietet eine BlockingQueue?
* boolean offer(E e)
* boolean offer(E e, long timeout, TimeUnit unit)
* E poll()
* E poll(long timeout, TimeUnit unit)
* void put(E e)
* E take()

## Welche konkreten Klassen gibt es für eine BlockingQueue?
* ArrayBlockingQueue<E>
    * ist eine Queue mit einer festen Grösse (Kapazität)
* LinkedBlockingQueue<E>
    * existiert sowohl kapazitätsbeschränkt als auch nbeschränkte
* DelayQueue<E>
    * kann nur Objekte aufnehmen, welche das Interface Delayed implementieren
    * intern werden die Methoden compareTo und getDelay verwendet
* PriorityBlockingQueue<E>
    * sortiert mithilfe der compareTo-Methode die Objekte
    * optional lässt sich Comperator-Objekt setzen
* SynchronousQueue<E>
    * ist eine blockierende Queue, welche keine Kapazität hat
    * beteiligten Threads müssen aufeinander warten müssen

