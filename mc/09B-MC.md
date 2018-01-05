# I2C

## Was sind die Nachteile von paralellen Bussytemen?
* beide Chips brauchen viele Pins
* beide Chips sind teuer

## Was bedeutet I2C?
Inter Integrated Circuit

## Was sind Synonyme für I2C?
* IIC
* TWI

## Welche Leitungen braucht es für I2C?
* 2 bidirektionale Leitungen
* Clock: SCL
* Daten: SDA

## Mit welcher Bitrate wird beim IIC-Bus gearbeitet?
* Standard: 100 kHz
* Fast: 400 kHz
* Fast: Plus 1 MHz
* High Speed: 3.4 MHz 

## Was sind die Eigenschaften von I2C?
* mehrere Master sind möglich
    * kann zu Problemen führen
* Teilnehmerzahl begrenzt durch Anzahl der Adressen und Leitungskapazität
* verschieden schnelle Busteilnehmer sind möglich (Clock Stretching)
* theoretisch 2^7 (128) Slaves möglich

## Wieso benötigen alle Busteilnehmer Open-Drain Ausgangstufen?
* verhindern eines Kurzschluss
* verlangsamen aber den Bus
* Leitung kann über Transistor nur auf 0 gezogen werden
* Busleitung ist über Pull-Up-Wiederstand mit Vcc verbunden
* externe Pullup-Widerstände sorgen für H-Pegel (Default-Zustand)
* alle Busteilnehmer überwachen den aktuellen Zustand von SCL und SDA
    * so kann erkannt werden wenn 2 Master gleichzeitig sendern

## Was sind die Regeln beim IIC-Bus?
* Grundregel
    * SDA ändert nur während SCL = 0 ist
    * SDA wird gelesen wenn SCL = 1 ist
* Start-/Stop-Bedingungen werden immer vom Master generiert 
    * können durch andere Master und Slaves erkannt werden
    * durch Protokollverletzung von normalen Datenbits unterscheidbar
* nach einer Start-Bedingung ist der Bus busy, nach einer Stop- Bedingung wieder idle
* die Datenübetragung vom Transmitter zum Receiver erfolgt Byte-weise mit MSB-first
* am Ende jedes Bytes generiert der Receiver ein Acknowledge-Bit:
    * SDA = 0 = Ack, SDA = 1 = No-Ack. No-Ack beendet einen Transfer vorzeitig
* eine Repeated-Start (Sr) Bedingung kann an Stelle einer Stop-Bedingungen generiert werden
    * so kann der Master den Bus weiter belegen
* ein Slave kann durch Clock Stretching den Master bremsen
* Arbiter unter Mastern
    * das erste Bit auf dem Bus stimmt nicht (0 statt 1)
    * Fehlererkennung wenn zwei Master gleichzeitig schreiben

## Wie funktioniert die Slave-Adressierung bei I2C?
* im ersten Byte nach der Start-Bedingung sendet der Master eine 7-Bit Adresse aus
* im 8. Bit sendet der Master das R/W Richtungs-Bit mit folgender Bedeutung:
    * R/W = 0: Write: Master-Transmitter zu Slave-Receiver
    * R/W = 1: Read: Master-Receiver von Slave-Transmitter
* ein Slave mit dieser Adresse muss im 9. Bit mit einem Ack-Signal antworten
* kombinierte Transfer-Formate sind durch Repeated-Start möglich

## Was bedeuten die Status- und Control-Register beim I2C?
* IICEN: Block enable
* IICIE: Interrupt en.
* MST: master & busy
* Tx: transmit
* TXAK: ack enable
* RSTA: repeat start
* TCF: transfer done
* IAAS: addressed
* BUSY: bus busy
* ARBL: arbitration lost
* SRW: slave R/W
* IICIF: int. Flag
* RXAK: acknowledged

## Welche Treiberstufen benötigen der IIC-Bus und warum?
* OpenDrain
* wenn man mehere zusammenhängt gehen sie nicht kaputt

## Wie werden Start und Stop einer Übertragung signalisiert?
* Start-Signal
    * wenn der Clock auf 1 ist geht die Datenleitung von 1 auf 0
* Stop-Signal
    * wenn der Clock auf 1 ist geht die Datenleitung von 0 auf 1

## Wann dürfen Daten auf der SDA-Leitung geändert werden?
* solange der Clock tief ist

## Wie entscheidet sich wer beim IIC-Bus Master und Slave ist?
* steht im Datasheet
* kann beim Aufsetzen des Chips in einem Register gesetzt werden

## Wie entscheidet sich wer beim IIC-Bus Sender und Empfänger ist?
* Adresse kommt immer vom Master
* Entscheidung hängt von Read-Write-Bit ab
* Master sendet weiter an Slave oder Slave antwortet an Master

## Wozu wird beim IIC-Bus die Repeated-Start-Bedingung verwendet?
* Daten geht von 1 auf 0 während Clock 1 st
* für Chips mit adressierbaren Daten

