# Identity Management

## Wieso entstanden Verzeichnisdienste?
* Übergang von Standalone Rechner zu vernetzten Rechnersystemen
* Rechner mussten Informationen von anderen Rechnern kennen
* verteilte Applikationen mussten Konfigurationsdaten synchronisieren
* Benutzer mussten auf vielen Rechnern Berechtigungen haben
* Informationen von anderen Rechnersystemen müssen abrufbar sein

## Was ist X.500?
* Idee aus den 80er Jahren
* eine einzige, weltweite Datenbank mit verschiedenen Eigenschaften
* Implementation der Norm war zu Beginn viel zu komplex
* Datenschutz- und Privacy-Aspekte wurden nicht betrachtet
* Keine native Unterstützung von Betriebssystemen
* Konnte sich so nicht durchsetzen

## Was sind die Eigenschaften von X.500?
* Verteilte Informationen
    * Jeder Firma verwaltet eigene Informationen selbst
    * Jede Firma bestimmt, welche Informationen veröffentlicht werden
    * Ein Zugriff auf öffentliche Informationen von anderen Firmen ist gewährleistet
* Hierarchische Struktur mit objektorientierter Ausrichtung
    * Vorwiegend geographisch aufgebaut
    * Hierarchie den konkreten Bedürfnissen anpassbar
    * Berechtigungen und Sicherheit auf jeder Hierarchiestufe definierbar
* Hohe Verfügbarkeit
    * Verteilte Datenbanken
    * Replizierte Datenbestände
    * Verteilte Administration

## Welche Strukturierungselemente gibt es bei X.500?
* Country (C)
* Organisation (O)
* Organisation Unit (OU) 
* Common Name (CN)

## Was ist LDAP?
* Lightweight Directory Access Protocol
* "Nachfolger" von X.500
* grundlegenden Konstrukte von X.500 wurden beibehalten
* implementiert nur ein Subset der X.500 Features
* wird heute überall eingesetzt

## Wie können Objekte in einem AD angesprochen werden?
* LDAP qualifizierter Name -- $CN=MMuster, OU= I, DC=HSLU, DC=CH$
* UNC/URL Notation -- „hslu.ch/I/MMuster"
* UPN Notation -- *MMuster.I@hslu.ch*
* global eindeutiger Name (SAMAccountName, GUID) -- *tawaldma*

## Was ist der Unterschied zwischen Authentisierung und Autorisierung?
* Authentisierung (Sicherstellung der Identität)
* Autorisierung (Berechtigung)

## Wie heissen die 3 wichtigsten Protokolle für Federated Identity Management?
* SAML2 (ADFS bei Microsoft)
* OpenID Connect, Oauth 2.0
* Shibboleth (an Hochschulen)

## Wie ist ein typischer Ablauf bei Federated Identity Management?
* der Benutzer authentisiert sich beim Identity Provider
* der Benutzer muss sich nur einmal authentisieren
* die Service Provider vertrauen dem Identity Provider

## Was bedeutet die Abkürzung SAML 2?
Security Assertion Markup Language 2.0

## Was ist SAML 2?
* ist eine auf XML basierende Auszeichnungsprache 
* für den Austausch von Authentisierung und Autorisierungsinformationen
* Informationen sollen über Organisationsgrenzen hinweg ausgetauscht werden können

## Welche zwei Rollen gibt es bei SAML 2?
* Identity Provider 
    * ist die Assertin Party (SAML Authorit)
    * kann die Identität eines Subjektes garantieren
* Service Provider
    * ist die Relyin Party
    * vertraut den Aussagen des Identity Providers

## Was ist Shibboleth?
* Entwicklung im universitären Umfeld
* Breiter Einsatz in der Schweiz im universitären Umfeld
* Europäische Projekte im Aufbau
* Zunehmende Kompatibilität mit SAML2

## Welche Protokolle gibt es für Federated Identity Management?
* SAML 2
* Shibboleth
* Open ID
* OAuth
* OpenID Connect
* ADFS
* SuisseID

## Wie funktioniert Open ID?
* URL-basierte Identity
* einige Identity Provider verfügbar
* einige Relying Parties verfügbar
* Anmeldung über OpenID-URL
* Implementationen haben noch Interoperabilitätsprobleme
* Plattform unabhängig
* keine Anforderungen an den Client

## Was ist ADFS?
* Active Directory Federation Services
* Microsoft Lösung für SAML2 und OAuth
* wandelt Kerberos-Tickets in SAML2- oder OAuthToken um
* ist eine Server-Rolle und kann auf allen Serverversionen aktiviert werden

