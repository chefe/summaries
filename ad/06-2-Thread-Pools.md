# Threadpools

## Wieso werden Threadpools verwendet?
* zahlreiche nebenläufige Aufgaben sind von kurzer Dauer
* die kleinen Aufgaben treten nicht unbedingt regelmässig auf
* für jede neue Aufgabe einen Thread zu erzeugen belastet unnötig das BS
* eine grosse Anzahl Threads wirkt sich negativ auf die Leistung aus
* in der Praxis wird deswegen meistens mit Threadspool garbeitet

## Was gibt es bei einem Thread zu beachten?
* für eine nebenläufige Aussage ist immer ein Thread notwendig
* es muss immer ein Runnable im Konstruktor übergeben werden
* es gibt keine setter und getters
* der Thread beginnt mit der Aufgabe sobald die Methode start ausgeführt wird
* die start-Methode kann genau einmal ausgeführt werden

## Was ist ein Threadpool?
* verwaltet eine Anzahl von Threads
* soll eine Aufgabe (Runnable) ausführen
* diese wird dann einem Thread zugeteilt
* sobald der Thread fertig ist, wird er wieder in den Pool gestellt
* der Thread übernimmt dann noch weitere wartende Aufgaben

## Welche factory-Methoden biete die Executors-Klasse an?
* newCachedThreadPool()
    * liefert einen Pool wo bei Bedarf neue Worker Threads erzeugt werden
    * Unbenutzte Threads bleiben für 60 Sekunden erhalten
* newFixedThreadPool(int nThreads)
    * liefert einen Pool mit n Threads 
    * die Warteschlange für übergebene Aufgaben ist unbeschränkt
    * stirbt ein Thread, wird er durch einen neuen ersetzt
* newScheduledThreadPool(int coreSize)
    * liefert einen ScheduledExecutorService
    * Aufgaben werden nach einer Verzögerung bzw. periodisch ausgeführt

## Wie lassen sich Thread für einen Pool konfigurieren?
* Bei den factry-Methoden kann eine ThreadFactory übergeben werden
* ThreadFactory ist ein Interface, das einen neuen Thread erzeugt

## Was sind wichtige Punkte im Umgang mit Nebenläufigkeiit?
* Kann Performence steigern
* langlaufende Threads lassen sicht gut mit Threads und Runnable realisieren
* Konzept des Executor-Service nutzen bei kleineren Aufgaben
* unabhängige Aufgaben sind in der Regel problemlos
* Vorsicht bei Abhängigkeiten

