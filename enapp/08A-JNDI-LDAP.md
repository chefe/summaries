# JNDI & LDAP

## Für was steht die Abkürzung SPI bei JNDI?
Server Provider Interface

## Was enthält die JNDI API?
* einen Mechanismus zur Bindung eines Objekts an einen Namen
* Methoden für den Abruf von Informationen anhand eines Namens
* ein Ereigniskonzept, über das Clients von Änderungen informiert werden
* spezielle Erweiterungen für LDAP-Funktionalitäten

## Welche Back-Ends unterstützt JNDI?
* LDAP
* DNS
* NIS
* CORBA
* Dateisystem

## Welche JNDI Packages gibt es?
* `javax.naming` definiert ein Naming Context Interface für alle Operationen
* `javax.naming.directory` erweitert das naming Packet mit Zugriffen auf Namens Services
* `javax.naming.event` unterstützt die Event Notifikation in Directory Services
* `javax.naming.ldap` erweitert das directory Packet mit erweiterten Operation Control
* `javax.naming.spi` unterstützt Entwickler von Namensdiensten bei der Implementierung

## Was ist der Unterschied zwischen Namens Service und Namenssystem?
* __Namens Service__
    * hat die Aufgabe Menschen freundliche Namen auf Objekte abzubilden
    * Beispiel File System: _Filenamen_ $\Rightarrow$ _Filehandler_
    * Beispiel DNS: _Namen_ $\Rightarrow$ _IP Adresse_
* __Namenssystem__
    * beschreibt die Syntax die befolgt werden muss
    * Beispiel File System: Objekte werden durch `/` getrennt (`/etc/hosts`)
    * Beispiel DNS: Objekte werden durch `.` getrennt (`www.enterpriselab.ch`)

## Was muss als erstes für Verwendung eines Naming Services erzeugt werden?
1. Wähle Service Provider vom entsprechenden Service aus
2. Spezifiziere die Konfiguration vom `InitialContext`
3. Rufe den `InitialContext`-Konstruktor auf

```
Hashtable<String, Object> env = new Hashtable<String, Object>();
env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
env.put(Context.PROVIDER_URL, "ldap://ldap.example.com:389");
env.put(Context.SECURITY_PRINCIPAL, "zamuster");
env.put(Context.SECURITY_CREDENTIALS, "secretpassword");
Context ctx = new InitialContext(env);
```

## Was ist der Unterschied zwischen einem LDAP und einer DB?
* Lese/Schreib Verhältnis
* Erweiterbarkeit
* Verteilbarkeit
* Replizierbarkeit
* Geschwindigkeit
* Standardisierung

## Was bedeutet LDAP?
Lightweight Directory Access Protocol

## Welche 4 Modelle bietet das LDAP?
* Informations Modell
* Namens Modell
* Funktionales Modell
* Sicherheits Modell

## Was bedeutet LDIF?
LDAP Data Interchange Format

## Welche Abkürzungen gibt es bei LDAP für Objekte?
* dc = Domain Compononent
* ou = Organisational Unit
* dn = Distinguished Name
* uid = User Id

## Wie ist ein Distinguished Name aufgebaut?
`dn: uid=zamuster, ou=people, dc=el, dc=campus, dc=intern`

## Welche Möglichkeiten bietet das funktionale Modell?
* Interrogation Operations _(Abfrage, Search kennt bis zu 8 Parameter)_
* Update Operations _(Hinzufügen, Löschen, Verändern)_
* Authentication & Control Operations _(Bind, Unbind, Abandon)_
* Keine Read Operation _(wird über Search realisiert)_

## Wie funktioniert das Zugriffs-Modell von LDAP?
```
Client  --[   bind request   ]--> Server
Client <--[   bind success   ]--  Server
Client  --[  search filter   ]--  Server
Client <--[ matching entries ]--  Server
Client  --[      unbind      ]--  Server
```

## Wie funktioniert das Sicherheits-Modell von LDAP?
* Flexible Zugriffskontrolle
    * Entire directory information tree (DIT)
    * Sub-tree
    * Attribute level
    * User / Group
    * Authentication method
* Access Control Instruction (ACI)
    * Regeln können für jedes Attribut einzeln festgelegt werden
* SSL & TLS
    * Beide möglich, aber nicht gleichzeitig
    * Benützt x.509 basierte Zertifikate
    * LDAP über SSL (ldaps)

## Wie sieht ein LDAP Update in LDIF aus?
```
dn: uid=zamuster, ou=people, dc=el, dc=campus, dc=intern
changetype: modify
replace: givenname
    givenname: Peter Muster
    givenname: Peter Muster Teacher
add: mail
    mail: pmuster@example.com
```

