# Injections

## Was ist OWASP?
* Open Web Application Security Project
* beschreibt häufige Probleme und Lösungen dafür
* veröffentlichen regelmässig Top-10-Listen
* Webapplikationen sind eines der grössten Probleme

## Was sind die Top-10 Angriffe gemäass OWASP?
* Injection
* Broken Authentication
* Sensitive Data Exposure
* XML External Entities
* Broken Access Control
* Security Misconfiguration
* Cross-Site Scripting (XSS)
* Insecure Deserialization
* Using Components with Known Vulnerabilities
* Insufficient Logging & Monitoring

## Was sind die häufigsten Injection-Typen?
* SQL Query
* OS command
* LDAP query
* XML / XSLT / DSL
* HTML / JavaScript (XSS)

## Welche Typen von Injections gibt es?
* In-Band Injection
    * Resultat direkt in der Antwort
* Out-of-Band Injection
    * Resultat erst später über einen anderen Channel
    * beispielsweise in einem EMail
* Blind injection
    * keine Antwort kommt zurück
    * durch beobachten des Verhalten Rückschlüsse ziehen
    * z.B. durch Verknüpfen von And-Statements und Sleep
* 2nd order
    * einfügen von Schadcode in für ein anderes System
    * z.B. script-Tag in Log-Files schreiben
    * welches dann später in einem Browser angeschaut wird

## Was sind die häufigsten Gründe, wieso eine Injection möglich ist?
* Ignorieren von Best Practies
* falsch konfigurierte Systeme
    * Berechtigungen, Sleep-Funktion
* lockerer Umgang mit Benutzereingaben
    * Validierung, Bereinigung oder Encoding
    * direktes Einfügen in Queries oder OS-Commands

