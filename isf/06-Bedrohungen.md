# Bedrohungen

## Woher kommen Fehler?
* Konzeptionsfehler
    * ursprünglich kooperativer Ansatz Ende der 60er Jahre
    * unvorhersehbare Entwicklung, insbesondere durch Kommerzialisierung
* Programmierfehler
    * oft ungeprüfte Eingabe(puffer)
    * Stack-Overflow / Manipulation des Programmzeigers
* Konfigurationsfehler (z.B. auf Webserver)
    * Falsche Berechtigungsvergabe auf Ebene des Filesystems
    * Unbedachte Owner von Serverprozessen (zu hohe Privilegien)
* Systemanomalien
    * Einnisten/Verstecken von Malware jeglicher Art

## Was für Angrifssarten gibt es?
* Passive Angriffe
    * Lauschen
    * Analyse des Datenverkehrs
    * sehr schwierig zu entecken
* Aktive Angriffe
    * Verändern, Ergänzen oder Löschen von Daten
    * Spoofing Angriffe
    * Degradation-of-service oder denial-of-service attack

## Was gibt es für Zeritifikatsklassen?
* Class 1 Certificates (wenig Sicherheit)
    * Keine Überprüfung der Identität des Antragsstellers
    * es wird nur der im Zerifikat eingetragee Namen überprüft
    * werden oft vollständig über das Internet beantragt
* Class 2 Certificates (mittlere Sicherheit)
    * Überprüfung der Identität des Antragsstellers mithilfe von Dokumenten
    * Für Private: Kopie von Pass oder Identitätskarte
    * Für Firmen: Unterschrift & Handelsregistereintrag
* Class 3 Certificates (hohe Sicherheit)
    * Überprüfung der Identität durch persönliches Vorsprechen
    * Überprüfen durch Vorweisen eines amtlichen Dokuments
    * Weitere Prüfungen
* Qualified Certificates (höchste Sicherheit)
    * Analog Klasse 3
    * Zusätzlich steht CA unter stattlicher Kontrolle

