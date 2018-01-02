# Datensicherheit

## Welche 3 Kategorien von Schutzmechanismen gibt es?
* Identifikation und Authentisierung
* Autorisierung und Zugriffskontrolle
* Auditing

## Wie wird eine Rolle mit SQL erstellt und wieder gelöscht?
```
-- Rolle erstellen
CREATE ROLE myuser LOGIN ENCRYPTED PASSWORD md5('foobar');

-- Rolle löschen
DROP ROLE myuser;
```

## Wie wird eine Gruppe mit SQL erstellt?
```
CREATE ROLE read NOINHERIT; -- Gruppe
```

## Wie wird die Role-based Access Control unterteilt?
* Data Object Types
    * Arten von Datenobjekten
    * Beispiele: HW-Instanz, Datenbank, Schema, Tabelle, View, Prozedur
* Privileges
    * Recht auf eine bestimmte Operation
    * `SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, ...`
* Roles
    * Rollen mit Passwörtern erlauben authentifizierte und authorisierte Änderungen auf den DB-Server.
* Users
    * ein Postgres-User ist eine Rolle, welche mit dem Server verbinden darf
    * bekannt als CONNECT-Privileg
* Groups
    * Rolle, deren Privilegien von anderen Rollen geerbt werden kann
    * typischerweise ohne LOGIN

## Wie werden mit SQL Rechte an Rollen und Gruppen vergeben?
```
GRANT read TO joe;
GRANT admin TO read;
GRANT SELECT on s.t to read;
GRANT ALL ON ALL TABLES IN SCHEMA s TO admin;
```

## Wie können Berechtigungen wiederrufen werden?
```
REVOKE UPDATE (matrnr, vorlnr, persnr)
ON pruefen FROM eickler CASCADE;
```

## Wie kann die Granularität der Zugriffskontrolle festgelegt werden?
* mit Grant kann der Schutz pro User nur bis auf Ebene Tabelle oder View umgesetzt werden
* mit einer View kann die Zugriffskontrolle bis auf einzelne Zeilen und Spalten gezielt gesetzt werde

## Wie funktioniert die implizite Autorisierung von Objekten?
* Schema
* Relation
* Tupel
* Attribut

## Was sind externe Angriffs-Vektoren?
* Trust security
* Passwords / authentication theft
* Network snooping
* Network pass-through spoofing
* Server / backup theft
* Administrator access

