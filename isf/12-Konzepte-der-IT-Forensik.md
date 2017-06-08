# Konzepte der IT Forensik

# Wo werden überall Spuren hinterlassen?
* Dateien und Metadaten
* gelöschte Dateien
* slack space
* Backups
* Logfiles
* Virtueller Arbeitsspeicher
* Temporäre Dateien
* Browser
* Papierkorb
* Datenrettung
* Probleme mit Verschlüsselung

## Welche Spuren hinterlassen Dateien und Metadaten?
* Inhalt der Datei
* Metainformationen über Dateien
* Erstellungszeit, Ersteller
* Letzte Modifikation, Ausdruck
* Dateigrösse
* effektiv und belegter Platz auf Datenträger

## Welche Spuren hinterlassen gelöschte Dateien?
* Meistens wird nur Eintrag in der File Allocation Table gelöscht
* Bereich 3x mit Zufallsdaten überschreiben gilt als sicher
* 7x gilt als NATO Standard

## Was bedeutete slack space?
* passiert wenn Block nicht voll ausgenutzt wird
* Sektoren beiinhalte noch Überreste alter Daten in einem Block

## Was sind Problemen bei Datensicherung?
* Sicherungsmedien sind wichtige Quelle für Spurensuche
* Sicherungsmedium können mehrmals beschrieben werden
* 2 Möglichkeiten zur Sicherung der Daten:
    * Dateiweise (Dateien einzeln lesen und schreiben)
    * Blockweise (Clone des Datenträgers)

## Was sind die Probleme beim Virtueller Arbeitsspeicher?
* letzte Zustand bleibt beim Systemstop erhalten
* kann sehr sensible Informationen enthalten
* z.B. Passwörter im Arbeitsspeicher

## Welche Informationen kann man aus temporären Dateien gewinnen?
* Warteschlangen für Druckaufträge
* Warteschlangen von Mailservern
* Lokaler Cache des Webbrowsers
* ...

## Welche Spuren werden von einem Webbrowser generiert?
* Browserverlauf
* Cookies
* Cache-Dateien
* Downloadverlauf

## Was ist das Hauptproblem bei Kommunikation?
Weiterleitung erfordert oft Zwischenspeicherung

## Was bedeutet Steganographie?
Verstecken von Informationen in einem unaffälligen Behälter

