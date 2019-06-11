# Sichere Requirements

## Für was steht die Abkürzung STRIDE?
* __S__ -- Spoofing (Authentication)
* __T__ -- Tampering (Integrity)
* __R__ -- Repudiation (Nonrepudiation)
* __I__ -- Information Disclosure (Confidentiality)
* __D__ -- Denial of Service (Availability)
* __E__ -- Elevation of Privilege (Authorization)

## Was ist Spoofing?
* betrifft Authentication
* sich als jemand anderen ausgeben
* verhindern, dass sich jemand als jemand anderen ausgibt

## Was ist Tampering?
* betrifft die Integrität
* verändern von Daten oder Code
* verhindern, dass jemand unbemerkt Daten verändern kann

## Was ist Repudiation?
* Nichtabstreitbarkeit
* jederzeit beweisen, wer etwas gemacht hat

## Was ist Information Disclosure?
* betrifft Vertraulichkeit
* kein Informationen an unauthorisierte Personen

## Was ist Denial of Service?
* Verfügbarkeit
* viele Anfragen an eine Webseite senden
* Überlastung eines Systems herbeiführen

## Was ist Elevation of Privilege?
* betrifft die Autorisierung
* Rolle übernehmen, ohne angebrachte Autorisierung
* z.B. Ausführen von Kommandos als root

## Für was steht die Abkürzung LM?
* Lateral Movement
* bezieht Operation mit ein
* gibt Möglichkeit noch mehr Threads zu finden

## Welche Möglichkeiten gibt um Probleme abzuschwächen?
* Redesign
* Standard Massnahmen
* Neue Massnahmen
* Verletzlichkeit akzeptieren

## Wie können Threats und Mitigations überprüft werden?
* Threats
    * Beschreiben eine Attacke
    * Beschreiben den Kontext
    * Beschreiben die Auswirkungen
* Mitigations
    * gehören zu einer Bedrohung
    * Beschreiben Massnahmen

## Für was steht die Abkürzung DREAD?
* __D__ -- Damage (wie schlimm ist eine Attacke)
* __R__ -- Reproducibility (wie einfach kann die Attacke reproduziert werden)
* __E__ -- Exploitability (wie aufwändig ist es die Attacke durchzuführen)
* __A__ -- Affected users (wie viele Personen sind von einer Attacke betroffen)
* __D__ -- Discoverability (wie einfach ist es Threats zu finden)

## Was bezeichnet die Abkürzung CVSS?
Common Vulnerability Scoring System

## Was sind Beispiele für die verschiedenen Punkt von STRIDE?
* Spoofing
    * NFC-ID spoofen
    * Einloggen mit 2-Faktor
* Tampering
    * Bezahlungsrichtung umkehren
    * App modifizieren
* Repudiation
    * Betrag abändern
    * Zahlung vortäuschen
* Information Disclosure
    * Keditkartendaten abfangen
    * Einkaufsdaten abfangen
* Denial of Service
    * System mit Bluetooth Anfragen überhäufen
    * Payment Provider angreifen
* Elevation of Privilege
    * Shell Commands per Bluetooth senden

