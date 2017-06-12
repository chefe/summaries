# Thread Steuerung

## Wie sollte auf eine Bedingung gewartet werden?
* bei kritischen Bereichen reicht einfache Synchronisation nicht
* das Konzept wird guarded block genannt
* Möglichkeit: busy waiting, funktioniert aber nicht effizient
* Möglichkeit: Monitorobjekte welche Signale erhalten um Threads frei zu schalten

## Was ist bei einem guarded Block wichtig?
* prüfen, ob Bedingung zutrifft, wenn nicht, dann warten
* überprüfen immer innerhalb einer while-Schleife
* Bedingung muss iterative geprüft werden

## Was ist wichtig bei der wait-Methode?
* Bei wait wird der Thread in den Wartezustand
* gleichzeitig wird der Lock für diesen Abschnitt freigegeben

## Welche 3 Wege führen aus dem Warte-Zustand?
* anderer Tread signalisiert Wechsel mit notify oder notifyAll
* das Timeout (im Argument) ist abgelaufen
* anderer Thread ruft die interrupt Methode des wartende Threads auf

## Was ist wichtig bei der Benachrichtigung?
* Bedingung setzen und dann wartende Threads benachrichtigen
* Benachrichtigung wird nicht gespeichert wenn der wait-Pool leer ist
* dh. wenn Threads erst notify und dann wait aufrufen, bleiben sie im Pool
* es besteht eine Dead-Lock Gefahr

## Was ist der Unterscheide zwischen notify und notifyAll?
* notify
    * weckt genau einen Thread im Wartezustand auf
    * falls mehrere warten ist nicht vorhersehbar welcher aufgeweckt wird
    * Thread wartet nochmals bis er Lock für synchronized Abschnitt erhält
    * man muss auf Lebendigkeit von Threads achten
* notifyAll
    * weckt alle an diesem Objekt wartenden Threads auf
    * sollte immer verwendet werden (wenn alle wait innerhab von while sind)
    * führt immer zu richtigen Ergebnissen weil das aufwecken garantiert wird
    * Aufwand wächst nicht immer linear (kann auch quadratisch sein)

## Wie sieht der vollständige Lebenszyklus aus?
new, ready, blocked, running, dead, lock-pool, wait-pool

## Was bedeutet Lost Signals?
* der Aufruf von notify und notifyAll wird nicht gespeichert
* wenn kein Thread wartet, geth das notify Signal verloren
* es muss eine Chronologie zwischen wait und notify herschen
    * wait muss vor dem notify erfolgen
    * falls keine CHronologie herscht kann es zu einem Deadlock kommen
* d.h Signale müssen gespeichert werden

## Was ist ein Semaphor?
* Zähler für Passier-Signale
* Zwei Operationen
    * P (passieren, down, signal, relase)
    * V (erhöhen, up, wait, acquire)

