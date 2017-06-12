# Threads

## Was ist ein Thread?
* vielen nebenläufigen Konzepten ist es der Thread
    * der unabhängig von anderen agiert
    * durch Programmcode gesteuert wird
* diese Parallelitätsabstraktion ist intuitiv nicht leicht zugänglich

## Welche Diemensionen der Parallelität gibt es?
* Multinode-Systemen wird die Aufgabe über verschiedene Rechner hinweg verteilt
    * Jeder Knoten hat seinen eigenen Speicher und Prozessor
    * Verteilten Anwendungen
* Bei Multiprocessor-Systemen ist die Anwendung auf verschiedene Prozessoren verteilt
    * Alle Prozessoren auf demselben Rechner (Mainboard)
    * Zugriff auf denselben Hauptspeicher
* Bei Multicore-Systemen befinden sich verschiedene Rechenkerne in einem Prozessor
    * Zugriff auf den Hauptspeicher ist von allen Kernen gleich schnell

## Was sind die Unterschiede zwischen Nebenläufigkeit und Parallelität?
* Zwei oder mehrere Tasks heissen nebenläufig
    * wenn sie zeitgleich bearbeitet werden können
    * Egal, ob zuerst der eine und dann der andere ausgeführt wird
    * Egal, ob sie in umgekehrter Reihenfolge ausgeführt werden
    * Egal, ob sie gleichzeitig erledigt werden
    * Die Tasks haben keine kausale Abhängigkeit
* Besitzt ein Rechner mehr als eine CPU oder Rechenkerne
    * kann die Nebenläufigkeit parallel auf der Hardware realisiert werden
    * Beschleunigung des Programms bei nebenläugigen Tasks

## Was sind die Vor und Nachteile der Nebenläufigkeit?
* Steigerung der Performance
* Zur Verfügung stehende Rechenleistung wird voll ausgenutzt
* Durch Auslagerung kann die CPU in der Zwischenzeit andere Tasks erledigen
* Programmcode ist oft schwer zu verstehen und schwer zu warten
* Erschwertes Debugging (weil CPU Zuteilung nicht deterministisch ist)
* parallele Threads müssen koordiniert werden

## Wie funktioniert der Java main Thread?
* Java Anwendung wird in JVM ausgeführt
* JVM entspricht einem Prozess der Betriebsystems
* Zur Ausführung startet die JVM den main-Thread
* Wenn das OS selbst Threads unterstützt, kann die JVM Threads abbilden
* Die Zuordnung der OS-Threads geschieht durch den Schedluer des OS

## Wie lassen sich Threads erzeugen?
* Ableitung der Klasse Thread
    * Erzeugen eines Thread Objekts der abgeleiteten Klasse
* Implementation des Interface Runnable
    * Erzeugen eines Objekts der Runnable Klasse
    * Erzeugen eines Thread Objekts der Klasse Thread
* Das Thread Objekt muss mit der Methode start gestartet werden

## Wie funktioniert der Lebenszyklus eines Threads?
* Ein Thread kann nur einmal gestartet werden kann
* mit der isAlive-Methode lässt sich feststellen ob der Thread ausgeführt wird

## Wie lässt sich auf das Ende eines Threads warten?
* Die Klasse Thread stellt die Methode join zur Verfügung
* Der aufrufende Thread wartet so lange, bis der Ziel-Thread zum Ende kommt
* Die Methode join ist blockierend
* Ist der Ziel-Thread bereits beendet, kehrt join sofort zurück

## Wie wird ein Thread beendet?
* Thread endet automatisch nach Ausführung
* Allgemein ist ein Thread beendet, wenn eine der folgenden Bedingungen zutrifft
    * Die run-Methode wurde ohne Fehler beendet
    * In der run-Methode tritt eine Exception auf, welche die Methode beendet
    * Wenn irgendwo System.exit aufgerufen wird
    * Der Thread wurde von aussen aktiv beendet

## Welche Arten gibt es einen Thread zu beenden?
* erzwungen (forceful cancellation), heisst sofortiger Abbruch
* verzögert (deferred cancellation), heisst Abbruch beim nächsten Abbruchpunkt
* kooperativ (cooperative cancellation), heisst Thread wird gebeten sich selbst zu beenden

## Welche Phasen gibt es für ein sauberes Beenden eines Threads?
* Initialisierungsphase
    * Eigener Thread-Kontext einrichten
* Arbeitsphase
    * Mehrere Aufgaben nacheinander erledigen 
    * und Attribut isStopped regelmässig überprüfen
* Aufräumphase
    * Benutzte Ressourcen werden in einen konsistenten Zustand gebracht

## Was passiert bei einem Interrupt?
* Befindet sich der Thread in einer blockierten Wartemethode, wird er durch interrupt geweckt
* Ist er nicht im Wartemodus, stösst aber im weiteren Verlauf auf eine Wartemethode, wird diese gleich nach Betreten wieder verlassen
* In beiden Fällen wird eine InterruptedException geworfen
* Folgende Wartemethoden lösen eine InterruptedException aus (sleep, wait, join)

## Wie sollte auf eine InterruptedException reagiert werden?
* Keine gute Idee: Nichts tun (leerer catch Teil)
* Exception abfangen und terminieren
    * Log Meldung ausgeben
    * im catch Teil die Beendung des Threads einleiten
* Exception abfangen und eventuell nicht terminieren
    * wenn eine angefangene Arbeitsphase beendet werden soll

