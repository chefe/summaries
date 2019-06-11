# OWASP

## Was bedeuten die Begriffe Subject, Principal und Credential?
* Subject
    * ist eine Person oder ein Dienst
    * stellt die anfragende Quelle dar
    * repräsentiert die Informationen einer einzelnen Entität
* Principal
    * ist Wert für die Identität eines Subject
    * Subject kann mehrere Principal haben
    * z.B. Benutzername, E-Mail Adresse, Kreditkartennummer, LDAP-DN
* Credential
    * repräsentiert eine Möglichkeit eines Subject sich zu authentifizieren
    * z.B. Passwort, Zertifikat, Kerberos Ticket, Public Keys

## Welche zwei Arten von Authentifizierung werden unterschieden?
* Schwache Authentifizierung
    * ist knackbar mit überschaubarem Aufwand
    * z.B. Identifizierung mit Passwort
* Starke Authetifizierung
    * Multifaktor-Authentifizierung oder über Zertifikat
    * z.B. Client-Zertifikat

## Was sollte bei der Authentifizierung immer beachtet werden?
sollte immer dem Zweck angepasst sein

## Welche Standard-Authentifizierung Methoden gibt es?
* Basic
    * Base64 (Benutzername:Passwort)
    * HTTPS erforderlich, weil Übertragung als Klartext
    * Passwort kann in jeder Form gespeichert werden
* Digest
    * MD5 (Passwort + weitere Informationen)
    * benötigt nicht zwingenden HTTPS
    * MD5 sollte nicht mehr gebraucht werden

## Welche Arten von automatischen Attacken werden unterschieden?
* credential stuffing (einfügen von geleakten Zugangsdaten)
* dictionary attacks (einfügen von Zugangsdaten aus Wortlisten)
* brute force (ausprobieren von zufälligen Kombinationen)

## Was sind häufige Probleme bei einer SessionID?
* wiederverwenden einer SessionID
* SessionID ist zugänglich
* gleiche SessionID vor und nach dem Login
* zu kurze SessionID (brute force session hijacking)

## Wie kann die Session geschützt werden?
* lange und zufällige SessionID (grosse Entropie)
* SessionID bei Login und Logout wechseln
* Session Cookie mit Attributen (`http-only, secure, same-site`) schützen

## Was sind einfache Möglichkeiten um Authentifizierung zu verbessern?
* immer HTTPS verwenden
* externe Scripts blockieren (Content Security Policy)
* Login-Versuche einschränken
* Passwort-Richtlinie
* Salted Hashes verwenden

## Was ist die Funktion einer ACL?
* Access Control List
* ACL(Subjekt, Objekt) => Berechtigungen
* Zuweisen von Berechtigungen über Subjekt und Objekt

## Welche Möglichkeiten gibt es für Access Controll?
* RBAC: Role Based Access Controll
* ABAC: Attribute Based Access Controll
* PBAC: Policy Based Access Control

## Welche zwei Arten von Access Controll Strategien gibt es?
* Open Policy
    * alles ist erlaubt, ausser es ist verboten
* Closed Policy
    * alles ist verboten, ausser es ist explizit erlaubt

## Was sind die häufigsten Möglichkeiten um Access Controll zu umgehen?
* Direkter Zugriff auf ungeschützte URL
* Pfad austricksen (`/users/../managers/saleries`)
* falsche konfigurierte Berechtigungen
* Entscheidungen wird dem Client anvertrauen (Berechtigungen, Validierung, ...)

## Was bedeuten die Begriffe Marhalling und Unmarshalling?
* Marhalling
    * Serialisierung eines Objektes
    * aus dem Speichern in eine Datenrepräsentation (binär/text)
* Unmarshalling
    * Deserialisierung eines Objektes
    * aus der Datenrepräsentation in den Speicher

## Was bezeichnet der Begriff XXE?
* XML External Data Entities
* nachladen von Daten in einer XML Struktur
* ermöglicht es, beliebige Dateien vom Server zu lesen
* wenn möglich immer deaktivieren

## Was bezeichnet der Begriff SAML?
* Security Assertion Markup Language
* Hauptverwendungszweck ist Single-Sign-On

