# Bedrohung auf Anwendungsebene

## Was ist der Unterschied zwischen Bots und Reflektoren?
* Bots
    * Aktive Komponente
    * Infiziert mit böswilliger Software
    * senden Pakete an Reflektoren mit gefälschtem Absender
* Reflektoren
    * Antwortet auf gefälschtes Paket
    * Sendet Antwort an gefälschten Absender

## Wie vermeide ich den VW-Golf Effekt?
* PDFs erlauben Code auszuführen
* Immer zuerst überprüfen vor dem Unterschreiben

## Habe ich etwa mehrere Schlüsselringe und wie sicher sind sie?
* Ja, es gibt mehrere
* Public-Keyring & Private-Keyring

## Kann ich auf einem fremden Gerät eine an mich mit PGP verschlüsselte Nachricht lesen?
Wenn ich den private key dabei habe schon

## Welche Elemente können im Mail-System (SMTP) nicht vertraulich sein?
* Absender
* Empfänger
* Betreff

## Welche organisatorischen Fehler erlaubten den beschriebenen Angriff auf die Zertifizierungsstelle?
* Hash-Kollision generieren
* Keine fortlaufende Nummern für Zertifikate
* Unsichere Hash-Verfahren
* Ablauf:
    * Nummer generieren
    * Zeit-Stempel anfügen
    * Hash generieren
    * von PKI signieren
    * gefälschter Antrag mit gleichem Hash generieren

## Was sind Rollen der grossen Rechenleistung und des exakten Timings?
* Damit Voraussagen getroffen werden können
* über Zeit-Stempel und Nummern

## Was sind wichtige Begriffe, wenn es um Walowdac geht?
* Spammer
    * Verschickt Spam Mails
    * Nimmt Kontakt auf mit Repeater
* Repeater
    * gleichen sich gegenseitig ab
    * wechseln immer wieder den Namen (nach einem Muster)
* Backend-Server
    * Kontroll-Server
    * Teilt aufgaben an Repeater mit, welcher dann weiterverbreitet

