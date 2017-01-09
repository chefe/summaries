## Was ist ein Prozess?
Abstraktion eines laufenden Programmes

## Worauf muss man bei Mehrprozess-Betriebssystemen besonders achten?
Auf die kritischen Bereiche, und dass jeder irgendwann seine Aufgabe erledigen kann

## In welchen Zuständen kann ein Prozess sein?
* rechnend (running): in Ausführung auf der CPU
* rechenbereit (ready): temporär suspendiert
* blockiert (blocked): wartend auf ein externes Ereignis

## Was ist das Ziel der IPC?
Interprocess Communication (IPC), strukturierter und konfliktfreier Ablauf von Prozessen

## Was ist eine Semaphore?
Integer-Variable, auf die über 2 spezielle unteilbare (atomare) Operationen (Up und Down) zugegriffen wird. (Nicht unterbrechbar)

## Wie funktionieren die Up/Down-Operationen?
* Down/P(s) 
    * wenn Semaphore = 0, sleep
    * wenn Semaphore > 0, dekrement
* Up/V(s)
    * Semaphore erhöhen
    * einen schlafenden Prozess aufwecken

## Was ist ein Mutex?
Variable, die die beiden Zustände unlocked oder locked haben kann und mit der man wechselseitigen Ausschluss beim Zugriff auf eine gemeinsame Ressource realisieren kann.

## Welche grundsätzlich verschiedenen Scheduling-Methoden gibt es?
* Nonpreemptive, solange bis er blockiert oder die CPU freigibt
* Preemptive, automische suspendierung nach einer gewissen Zeit

## Was sind bekannte Scheduling-Algorithmen?
* Round Robin (der Reihe nach)
* FCFS (first come first serve)
* SJF (shortest job first)
* EDD (early due date)

