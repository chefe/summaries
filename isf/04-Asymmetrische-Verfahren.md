# Asymmetrische Verfahren

## Was ist das Konzept von Asymmetrische Verfahren?
* besteht aus Öffentlicher Schlüssel und privater Schlüssel
* Schlüssel besitzt eine komplexe mathematische Beziehung
* der eine Schlüssel kann nicht aus dem anderen berechnet werden

## Was ist der wesentliche Nachteil gegenüber symatrischen Verfahren?
typische Implementationen symmetrischer Verfahren sind 2-3 Grössenordnungen schneller als asymmmetrische

## Wie funktioniert ein hybrides Verfahren?
* zuerst läuft Kommunikation asymmetrisch
* debei wird ein gemeinsamer Schlüssel bestimmt
* ab dann wird die Kommunikation symmetrisch verschlüsselt

## Wie funktioniert das versenden einer Nachricht mit hybrider Verschlüsselung?
1. Klartext komprimieren
2. Zufälligen Sitzungsschlüssel erzeugen
3. Klartext mit Sitzungsschlüssel symmetrisch verschlüsseln
4. Sitzungsschlüssel mit öffentlichem Schlüssel des Empfängers verschlüsseln
5. Gesamtes Paket (Textchiffrat und Schlüsselbox) übermitteln
6. Der Empfänger öffnet die Schlüsselbox mit Hilfe seines privaten Schlüssels
7. Er erhält so den Sitzungsschlüssel für das IDEA-Verfahren
8. Mit dem Sitzungsschlüssel erhält er den Klartext aus dem Chiffrat zurück

## Was sind die Probleme von Asymmetrischen Verfahren?
* Geheimhaltung der privaten Schlüssels
    * Auswendiglernen,, AUfschreiben, USB-Stick, ...
* Authentizität der öffentlichen Schlüssel
    * Zertifikate, Beglaubigungen, ...

## Welche Informationen sind in einem Zertifikat enthalten?
* Name des Inhabers
* Zertifizierungsstelle
* Öffentlicher Schlüssel der Zertifizierungsstelle
* Öffentlicher Schlüssel des Inhabers
* Seriennummer des Zertifikates
* Gültigkeitszeitraum
* Signatur der Zertifizierungsstelle

## Was versteht man unter Web of Trust?
* geht auch ohne CA (Zertifizierungsstelle)
* Nutzer bestätigen sich gegenseitig
* dadurch wird eine Art Vertrauensnetzwerk aufgebaut

## Was ist der unterschied zwischen PKIX und OpenPGP?
* PKIX
    * besteht aus X.509 und PKCS
    * PKIX und X.509 überlappen bezüglich des Formats der Zertifikate
    * beide Standards sind sehr umfangreich
    * Beides sind hierarchische PKIs
* OpenPGP
    * Entstanden aus PGP Software
    * Unterstützt das Web of Trust Konzept
    * Auch hierarchisch nutzbar

## Was gehört alles zu einer PKI?
* Komponenten
    * Zertifizierungsstelle, Zertifikatsserver, Zeitstempeldienst, Registrierungsstelle, ...
* Rollen
    * Leiter, Operator, Administrator, Registrator, Sperragent, Anwender, ...
* Prozesse
    * Initialisierung, Erneuerung, Key Recovery, Sperrung, ...

