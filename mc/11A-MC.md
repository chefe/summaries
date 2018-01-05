# ADC

## Was sind die Eigenschaften eines Analog-Digital-Wandler?
* Eingangsspannung wird mit Referenzspannungen verglichen 
* Digitalwort nähert sich beim MSB beginnend, der Eingangsspannung an
* je mehr Bits das generierte Digitalwort umfasst, um so genauer wird die Näherung sein
* während der Wandlung wird die Eingangsspannung konstant gehalten (Sample & Hold)

## Wie funktioniert das Prinzip der A/D-Wandlung mittels sukzessiver Approximation?
* gestartet wird beim MSB, welches auf 1 gesetzt wird
* Signal wird verglichen mit dem Wert
* falls Signal grösser als Wert ist, Bit auf 1 behalten, sonst Bit auf 0 setzen
* zum nächsten Bit gehen

## Wie viele Kanäle besitzt der A/D-Wandler im MC9S08JM60?
* 12

## Wie viele Analogsignale kann der A/D-Wandler im MC9S08JM60 gleichzeitig wandeln?
* immer nur 1 Signal gleichzeitig

## Mit welcher Bit-Auflösung können Analogsignale im MC9S08JM60 eingelesen werden? 
* 8, 10 oder 12

## Welche Kriterien sind bei einem A/D-Wandler wichtig?
* Bit-Auflösung
* Geschwindigkeit
* Referenzspannung

