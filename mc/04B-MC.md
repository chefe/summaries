# Transport- & Arithmetische-Befehle

## Welche Transportbefehle gibt es?
* L (Load)
    * Quelle: Memory
    * Ziel: CPU-Register
    * Beispiel: `LDA, LDX, LDHX, PULA, PULX`
* S (Store)
    * Quelle: CPU-Register
    * Ziel: Memory
    * Beispiel: `STA, STX, STHX, PSHA, PSHX`
* T (Transfer)
    * Quelle: CPU-Register
    * Ziel: CPU-Register
    * Beispiel: `TAP, TPA, TAX, TSX`
* M (Move)
    * Quelle: Memory
    * Ziel: Memory
    * Beispiel: `MOV`

## Wie kann man mit grossen Zahlen rechnen?
* Addition
    * LSB mit `ADD`
    * weitere Bits mit `ADC` (Übertrag von vorheriger Rechnung)
* Subtraktion
    * LSB mit `SUB`
    * weitere Bits mit `SBC` (Übertrag von vorheriger Rechnung)
* Multiplikation
    * Multiplikation Akkus mit dem Inhalt des Index-Registers X
    * 16 Bit Resultat wird in X:A (MSB in X, LSB in A) gespeichert
* Division
    * 

## Welche Condition Codes hat der HCS08?
| CC | Name     | Bedingung                      | Relevant für      |
|----|----------|--------------------------------|-------------------|
| Z  | Zero     | Resultat gleich 0              | unsigned & signed |
| N  | Negative | Resultat grösser 0             | signed            |
| C  | Carry    | Resultat ausserhalb [0-255]    | unsigned          |
| V  | Overflow | Resultat ausserhalb [-128-127] | signed            |

## Was bewirkt die Befehle TAP & TPA bei der HCS08 CPU?
* TPA (Accu = CCR)
* TAP (CCR = Accu)

## Woran erkennt die ALU ob signed oder unsigned gerechnet werden muss?
* ALU hat keine Möglichkeit um das zu erkennen
* Muss nachher von den CCR-Flags abgelesen werden

