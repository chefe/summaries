# Timer Channel & Logic Analyzer

## Welchen generellen Anwendungsfälle entsprechen die beiden Timer-Betriebsarten?
* Output-Compare (OC)
    * funktioniert wie ein Wecker
* Input-Capture (IC)
    * funktioniert wie eine Stoppuhr

## Was ist die Funktion des Value-Registers in den Timer-Betriebsarten OC und IC?
* Output-Compare (OC)
    * Sobald der Timer den eingstellten Wert erreicht, wird eine Aktion ausgelöst
* Input-Capture (IC)
    * Speichert die Zeit wann ein Interrupt von aussen ausgelöst worden ist

## Warum ist es vorteilhaft das Timer-Modul mit einem Modulo-Wert von 0xFFFF zu betreiben?
* im Interrupts lässt sich so der Channel-Value verändern
* so kann einfach einfach eine Zeit addiert werden
* bei einem Overflow des Channel-Values gibt es kein Problem
    * da das Carry einfach abgeschnitten wird

## Wie lässt sich mit dem Timer ein Output-Compare Interrupt generieren ohne den Wert am Port-Pin zu ändern?
* wenn die ELS-Bits richtig konfiguriert werden
* so kann eine Aufgabe auf die Pins unterbunden werden

## Wie heissen die zwei Betriebsmodi eines Logic Analyzers und worin unterscheiden sie sich?
* synchron
    * Clock von aussen
    * Synchron mit Clock von Mikrocontroller
* asynchron
    * Interner Clock wird genutzt
    * Meistens höhere Abtastrate als über externen Clock

