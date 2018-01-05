# PWM

## Wie wird in der Timer-Betriebsart Edge-Aligned PWM Periodendauer und Duty Cycle des generierten Signals bestimmt?
* mit dem Value- Register

## Warum bietet es sich beim MC-Car an, die PWM-Signale für linken und rechten Motor mit TPM2 und nicht mit TPM1 zu generieren?
* weil der TPM2 nur 2 Kanäle hat

## Was muss man für die Generierung eines Signals mit 100% Duty Cycle beachten?
* Modulo-Wert um eins heruntersetzten 
* und den Channel-Value eins höher wählen als der Modulo

## Was vertseht man unter 
* Fast Decay:
    * Motor wird gebremst 
    * führt zu Spannungsabfall
    * es entsteht viel Verlustleistung
* Slow Decay: 
    * Motor wird abgeschalten, aber blockiert nicht
    * läuft im Leerlauf weiter
    * Nutzung der kinetischen Energie

