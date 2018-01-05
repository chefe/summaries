# RS232

## Für was wird RS-232 eingesetzt?
* asynchrone Punkt-zu-Punkt Übertragung
* getrennte Rx und Tx Datenleitung (Receive / Transmit)
* wird heutzutage oft auf USB oder Bluetooth übertragen
* optionales Parity-Bit

## Wie ist das RS-232 Protokoll aufgebaut?
* Start Bit (Low)
    * 1x oder mehr (gemäss Abmachung)
* 8 Daten-Bits 
    * LSB to MSB
* Parity Bit 
    * Even, Odd or None
* Stop Bit (High)
    * 1x oder mehr (gemäss Abmachung)
* Pause (High)

## Welche serielle Übertragungsprotokolle gibt es und was sind ihre Eigenschaften?
|                        | RS-232         | IIC                         | SPI                      | 1-Wire               |
|------------------------|----------------|-----------------------------|--------------------------|----------------------|
| Duplex                 | full           | half                        | full                     | half                 |
| Topologie              | point-to point | multi-master                | master-slave             | master-slave         |
| Timing                 | asynchron      | synchron                    | synchron                 | asynchron            |
| Pin Count (ohne GND)   | 2              | 2                           | 3 + #slaves              | 1                    |
| Typ. Data Rates [kbps] | 10-100         | 100-3400                    | 1000-15000               | 16                   |
| Typical Application    | off-board      | on-board, address locations | on-board, streaming data | ultra lowcost/-power |
| Typical Devices        | PC terminals   | Sensors                     | ADC/DAC                  | Sensors              |

## Wie viele Leitungen benötigt ein RS-232-Interface zur Datenübertragung?
* 2 Leitungen
* Leitungen heissen RX und TX

## Warum gibt es bei RS-232 im Gegensatz zu IIC keine Clock-Leitung?
* weil es asynchron ist

## Wie viele Datenbytes kann man mit 9600 Baud/s und einem RS-232-Format von 8-No-1 pro Sekunde übertragen?
* Paket besteht aus 8 Bits und 2 Status-Bits (Start und Stop)
* 9600 / 10 = 960 Bytes pro Sekunde

## Wie erklärt sich der Faktor 16 bei der Berechnung des BR-Wertes für das SCI-Modul im MC9S08JM60? 
* jedes Bit wird 16x abgetastet
* das wird gemacht da die Verbindung asynchron ist
* daraus lässt sich der Clock regenerieren

