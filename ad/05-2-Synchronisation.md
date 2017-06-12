# Synchronisation

## Was ist wichtig beim Zugriff auf gemeinsame Ressourcen?
1. In einem kritischen Abschnitt darf sich zu jedem Zeitpunkt höchstens immer nur ein Thread befinden
2. Es dürfen keine Annahmen über die zugrunde liegende Hardware (Clock, CPU-Anzahl etc.) gemacht werden
3. Ein Thread darf andere Threads nicht blockieren, ausser er ist in einem kritischen Bereich
4. Es muss sichergestellt sein, dass ein Thread nicht unendlich lange warten muss, bis er in den kritischen Bereich eintreten kann

## Welche Zustände kann ein Thread einnehmen?
new, ready, blocked, dead, running, locked

## Was ist beim Schlüsselwort synchronized zu beachten?
* Alle Java-Objekte besitzen einen impliziten Lock
* Den Zugriff auf den Lock erhält man durch das Schlüsselwort synchronized
* Während des Wartens auf den Lock kann der Thread nicht unterbrochen werden

## Was für Monitor-Arten gibt es?
* reetrant
    * Betritt ein Thread eine synchronisierte Methode/Abschnitt, dessen Lock er schon besitzt, kann er sofort eintreten ohne den lock-pool zu durchlaufen
    * Ohne diese Möglichkeit würden Rekursion nicht funktionieren!
    * Dies reduziert aber auch die Parallelität, weil kritische Abschnitte künstlich vergrössert werden
    * Ein Reentrant Monitor kann geschwindigkeitssteigernd sein, wenn viele synchronisierte Methoden hintereinander aufgerufen werden
* nested
    * Ein Thread kann beliebig viele Locks ergreifen
    * führen leicht zu Verklemmungen (Deadlocks)
    * Um die Deadlock-Gefahr zu vermeiden, sollte man in einer synchronisierten Methode oder einem synchronisierten Block niemals die Steuerung an den Client übergeben

