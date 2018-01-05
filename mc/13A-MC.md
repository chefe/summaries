# Echtzeit-Betriebssystem

## Wann braucht man ein Multitasking-Betriebssystem?
* grössere Programme werden mit ISR-Konzept unübersichtlich
* wenn Teile eines Programms "parallel" ausgeführt werden sollen

## Was bedeuten die Begriffe Echtzeit, RT-OS, Kernel und Scheduler?
* Echtzeit
    * Definierte Reaktionszeit auf ein Ereignis
    * (harte / weiche Echtzeit: Ergebnis / Reaktion)
        * weich: eine schnelle Antwort, aber nicht endgültige
        * hart: fest definierte Zeit für jedes Ereigniss
* RT-OS
    * Real-Time Operating System
* Kernel
    * Grundfunktionen des MT-BS (Multitask-Betriebssystem)
* Scheduler
    * Teilt CPU-Ressourcen an die Tasks zu

## Welche Scheduler Strategien gibt es?
* First-Come First-Serve
* Shortest Job First
* Random (Zufallsprinzip)
* Round Robin (gleich lange Zeit-Scheiben für Tasks)
* Prioritätsbasiert (verschiedene Taskprioritäten)

## Welche 2 Arten von Scheduler gibt es?
* Preemptiv
    * Scheduler entzieht dem Task (Prozess) die Systemressourcen
    * wegen Task mit höhere Priorität, Timeslicing, ...
* Kooperativ
    * der Task muss die Systemressourcen selber abgeben

## Was ist sehr wichtig bei einem RT-System betreffend Funktionen?
* Funktionen müssen reentrant sein
* erlaubt Tasks Code zu teilen

## Was gehört alles zu einem Task?
* Task-ID
* Priorität (im Fall von ucOS2 ist das die Task-ID)
* Daten
* Stack
* Programmcode

## Welche Task Zustände gibt es?
* Waiting
    * wartet auf ein Ereignis (Timer, Semaphor, Input,...)
    * sobald Ereignis eintritt, wird er in den Ready Zustand versetzt
* Ready
    * ist bereit zum Laufen
    * er wartet, bis er vom Scheduler aktiviert wird
* Dormant
    * befindet sich im Ruhezustand
    * ist vom Scheduler nicht mehr aufrufbar
    * der Speicher wird aber nicht gelöscht
* Running
    * Task läuft (die CPU wird jetzt von diesem Task benützt)
* ISR-Running
    * sobald ein Interrupt auftritt, wechselt das OS in den Zustand

## Wie heissen die bekannten Methoden, welche zu einer Zustandsänderung führen?
* Starten eines Task (`OSTaskCreate(TaskId)`)
* Anhalten eines Task (`OSTaskSuspend(TaskId)`)
* Fortsetzen eines Task (`OSTaskResume(TaskId)`)
* Taskpriorität ändern (`OSTaskChangePrio(TaskId)`)
* Löschen eines Tasks (`OSTaskDel(TaskId)`)

## Was braucht es alles um einen Task zu erstellen?
```
OSTaskCreate(void (*task)(void *pd), void *pdata, OS_STK *ptos, INT8U pri0)
```

* pd ein Pointer auf den Task Code (Funktion)
* pdata ein Pointer auf ein Argument
    * dass dem Task bei der Ausführung übergeben wird
* ptos ein Pointer auf den zugehörigen Stack
    * kann bei jedem Task verschieden gross sein
* prio die gewünschte Taskpriorität

## Wie wird der uCOSII initialisiert und gestartet?
```
#define TASK_STK_SIZE 128               // Stackgrösse pro Task
OS_STK InitTaskStack[TASK_STK_SIZE];    // Array von Typ OS_STK
                                        // Speicher für den Stack reservieren

void InitTask(void* pdata)
{
    (void)pdata;                        // unterdrückt Compiler Warnung
    OSTimerInit();                      // Timer konfigurieren und starten

    // Platz für weitere Initialisierungen sowie starten von Tasks

    (void)OSTaskDel(OS_PRIO_SELF);      // Init Task beenden
}
void main(void)
{
    OSInit();                           // OS initialisieren

    //Task Ptr, Argument Ptr, Stack Ptr, Task Id = Prio
    OSTaskCreate(InitTask, (void*)0, &InitTaskStack[TASK_STK_SIZE-1], 0);

    OSStart();                          // OS starten
} 
```

## Was gibt es für Mittel zur Kooperation paralleler Prozesse?
* Synchronisation
    * Semaphore
    * Mutex (Mutual exclusion)
    * Flags
* Kommunikation
    * Mailbox
    * Message Queues 

## Was ist nötig um gültige Daten zu garantieren?
* Garantierter gegenseitiger Ausschluss nötig

## Was für Methoden gibt es für Mutual Exklusion?
* Scheduler und Interrupts abschalten
    * parallele Tasks verhindern
    * sehr unschön
* Semaphors 
    * Zugriff schützen
    * der "elegante" Weg

