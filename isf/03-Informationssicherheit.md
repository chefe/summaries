# Informationssicherheit

## Was sind bekannte Angriffsstrategien?
* Passwort-Hashfunktion knacken
* Brute-Force Attacken
* Wörterbuch Attacken
* Lookup Tabellen

## Wie lange geht es etwas ein Passwort zu knacken mit Brute-Force?
Unter Annahme von 70 möglichen Zeichen auf einem normalen Rechner

| Anzahl Zeichen | Maximale Wartezeit |
|----------------|--------------------|
| 7              | ca. 6 Minuten      |
| 8              | ca. 7 Stunden      |
| 9              | ca. 20 Tage        |
| 10             | ca. 4 Jahre        |
| 11             | ca.273 Jahre       |

## Wie lassen sich Wörterbuch-Angriffe verbessern?
* Variationen mit Gross- / Kleinschreibung
* Variationen mit Zahlen und Sonderzeichen
* Buchstaben durch Zahlen ersetzen
* Kombination mehrere Wörter aus dem Wörterbuch
* Kombination mit Brute-Force

## Wieso werden Rainbow-Tabellen verwendet?
* Vorteile / Nachteile von Brute-Force
    * mit Brute-Force knackt mann irgendwann jedes Passwort
    * Brute-Force berechnet alle Hashs online
    * Wiederholung bedarf der wiederholten Berechnung aller Hashs
* Vorteile / Nachteile von Lookup Tabellen
    * Lookup Tabellen können offline berechnet und wiederverwendet werden
    * Eine vollständige Lookup Tabelle knackt irgendwann jedes Passwort
    * eine Lookup Tabelle wird schnell sehr gross (ca. 1.4TB für 6 Stellen)

## Was ist eine Hash-Kette?
Eine Reduktion verwandelt einen Hashwert mittels eines Wörterbuchs wieder
in ein mögliches Passwort. Zur Minimierung von Kollisionen sollten bei jedem
Schritt eine andere Reduktion verwendet werden

## Was ist der grosse Vorteil von Rainbow-Tabellen?
* nur der erste und letzte EIntrag jeder Kette wird gespeichert
* viel kleinere Datenmenge

## Was sind weitere Vor- und Nachteile von Rainbow-Tabellen?
* Hybride Version von Lookup und Brute-Force
* Kompromiss bezüglich Hashberechnungen, Speicherplatz, Vollständigkeit
* Verschiedene Tabellen für verschiedene Hash-Algorithmen
* Knackt nur Passwörter im Wörterbuch (unvollständige Methode)
* Auf Passwörter einer fixen Länge spezialisiert

## Was sind Verteidigungsmassnahmen gegen solche Angriffe?
* Hashfunktion muss langsam sein
    * Mehrfach-Hash oder verschiedene Hashfunktionen kombinieren
* salt password
    * Salt ist eine zufällig generierte Zeichenkette
    * Berechne den Hash von Passwort und Salt

## Wie lassen sich Brute-Force und Wörterbuch-Angriffe erschweren?
* strukturloses Passwort wählen (gegen Wörterbuch Attacken)
* langes Passwort wählen (gegen Brute-Force Attacken)

## Was für Arten von Keylogger gibt es?
* Hardware Keylogger
* Skimming (Overlay Tastatur)
* Software Keylogger (Spyware)
* Akustische Keylogger (mit Richtmikrofon)
* Elektromagnetische Keylogger
* Optische Keylogger

