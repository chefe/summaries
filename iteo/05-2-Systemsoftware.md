# Systemsoftware

## Wie sieht die System Struktur aus?
* Anwendersoftware / Utilities
* Shell
* Kernel
* Hardware

## Wie sehen die Interrupt Prioritäten aus?
* Maschinenfehler (hoch)
* Zeitgeber
* Disk
* Netzwerk
* Terminals
* Software Interrupts (tief)

## In welche Level wird das System unterteilt?
* User Level
* Kernel Level
* Hardware Level

## In welche zwei Bereiche wird das Kernel Level unterteilt?
* File System
* Prozess System

## Was enthält ein Prozess-Kontroll-Block?
* identifier
* state (running, ready, blocked)
* priority
* program counter
* memory pointers
* context data
* I/O status information
* accounting information

## Wer hat Einfluss auf den Prozess Status?
* Dispatcher (verteilt)
    * Programm das von einem Prozess auf den anderen wechselt welche dann auf dem Prozessor ausgeführt werden
* Trace (verfolgt)
    * Verfolgt das Verhalten der individuellen Prozesse indem er die Sequenzen der Instruktionen auflistet die er für diesen Prozess ausführt
    * Das Verhalten des Prozessors kann charakterisiert werden indem gezeigt wird wie die traces der Prozesse verschachtelt sind

## Was sagt das Queuing Modell aus?
* Das OS muss immer die ganze Queue durchsuchen um den geeigneten Kandidaten (Prozess) zu finden
* Normalerweise können das hunderte oder tausende Prozesse sein. Daher werden mehrere Queues verwendet

# Für was sind die OS Control Tables?
* Das OS braucht Infos vom Status von Prozessen und Ressourcen
* Es unterhält dazu einige Listen
    * Memory Tables
    * I/O Tables
    * File Tables
    * Primary Process Table (zeigt auf ein Process Image)

## Was ist ein PCS?
* Process Control Structures
* Wo der Prozess zu finden ist
* Die Attribute vom Prozess die für dessen Verwaltung essentiell sind

## Was ist der PCB und was enthält er?
* Process Control Block
* Enthält
    * Process Identification
    * Processor State
    * Process Control Information

## Welche Modus Wechsel gibt es?
* Keine Interrupts liegen am Prozessor an
    * Fahre weiter mit der fetch stage und hole die nächste Instruktion vom aktuellen Programm im aktuellen Prozess
* Wenn ein Interrupt am Prozessor anliegt
    * Setzt den Programm-Counter auf die Startadresse vom Interrupt Handler Programm
    * Wechselt vom User Modus in den Kernel Modus, so dass der Interrupt Handler Code damit auch privilegierte Instruktionen ausgeführt werden können

## Welche Prozess Wechsel Status gibt es?
* Speichere den Kontext vom Prozessor
* Update vom Prozess Kontrol Block vom Prozess momentan im run Status
* Verschiebe den Prozess Kontrol Block zur richtigen Queue
* Wähle einen anderen Prozess fuer die Ausführung aus
* Update vom Prozess Control Block vom ausgewählten Prozess. Update Memory Management Data Strukturen
* Restore vom Prozessor Kontext, so dass er genau da weiterfährt als der Prozess weggenommen wurde

## Was gibt es für UNIX Proces Status?
* User Running (Executing in user mode)
* Kernel Running (Executing in kernel mode)
* Ready to Run, in Memory (Ready to run as soon as kernel schedules it)
* Asleep in Memory (Unable to execute until an events occurs)
* Ready to Run, Swapped (ready, but needs to be swapped in main memory)
* Sleeping, Swapped (sleeping, has been swapped to second storage)
* Preemted (Returning from kernel to user, but kernel preempts it)
* Created (is newly created)
* Zombie (does not longer exists)

## Wie wird ein Prozess erzeugt?
* Prozess wird erzeugt durch den Kernel system call, fork()
* Alloziere einen freien Platz in der Prozesstabelle fuer den neuen Prozess
* Vergib eine einzigartige Prozess ID fuer den Child Prozess
* Mach eine Kopie vom Parent-Prozess Image mit der Ausnahme vom gesharten Memory
* Inkrementiere die Zähler für jedes File das vom Parent besitzt wird um anzuzeigen, dass ein zusätzlicher Prozess diese Files auch besitzt
* Füge den Child Prozess der ready to run Queue zu
* Retourniere die ID Nummer vom Child Prozess zum Vater Prozess und den Wert 0 zum Child Prozess

## Was kann der Kernel mit seiner Dispatcher Routine machen?
* Bleib im Parent Prozess
* Transferiere die Kontrolle zum Child Prozess
* Transferiere die Kontrolle zu einem anderen Prozess

## Was kann ein Prozess unterbrechen und wie passiert das?
| Mechanism       | Cause                                                    | Use                                            |
|-----------------|----------------------------------------------------------|------------------------------------------------|
| Interrupt       | External to the execution of the current instruction     | Reaction to an asynchronous external event     |
| Trap            | Associated with the execution of the current instruction | Handling of an error or an exception condition |
| Supervisor call | Explicit request                                         | Call to an operating system function           |

## Was gibt es für Ansätze für Threads und Prozesse?
* one process one thread
* multiple process one thread per process
* one process multiple threads
* multiple processors multiple threads per process

## Was sind die Vorteile von Threads?
* Braucht weniger Zeit um einen Thread zu erzeugen, als ein Prozess
* Braucht weniger Zeit um einen Thread zu beenden
* Wechsel zwischen Threads braucht weniger Zeit, als Wechsel zwischen Prozessen
* Die Kommunikation zwischen Threads ist durch den gemeinsamen Prozess Kontext auf natürliche weise gegeben

## Was teilen sich Threads und was nicht?
* geteilt
    * Codesegment
    * Datensegment
    * Dateideskriptoren
* einzeln
    * Stack
    * Code Pointer

## Welche 2 Arten von Threads gibt es?
* User level Threads (ULTs)
    * Thread Mangement wird in der Applikation gemacht
    * Der Kern hat keine Kentniss von der Existenz eines Threads
    * Werden durch eine Library (vom Programmierer) implementiert
    * Neigen mehr zu kooperativem als zu preemptivem Scheduling
    * Thread Wechsel verlangt keine Kernel Modus
    * ULTs können auf jedem OS laufen
* Kernel level Threads
    * Kein Thread management Kernel von der Applikation
    * Windows verfolgt diesen Ansatz
    * Kern kann mehrere Threads vom gleichen Prozess auf mehrere Prozessoren verteilen
    * Wenn Thread blockiert ist, kann ein anderen Thread berücksichtigt werden
    * Kern Prozeduren können multithreaded ausgeführt werden

## Was ist ein LWP?
light weight process

## Was ist ein Systemcall?
Das API direkt zwischen User-Prozessen und dem Kern wird Syscall genannt.
