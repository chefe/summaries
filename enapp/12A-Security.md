# Security

## Was sind mögliche Bedrohungen im Java EE Umfeld?
```
Unsichere Konfiguration    Komplexität              Man-in-the-middle
Schwache Protokolle        Viren/Würmer/Trojaner    Spoofing
Implementationsfehler      DoS/DDos                 Cross Site scripting
Designfehler               Session Hijacking        Böse/Unwissende Mitarbeiter
```

## Welche Security Konzepte gibt es für Java EE?
```
Identification        Authentication       Authorization    Confidentiality
Integrity             Administration       Auditing         Program Robustness
Configuration Mgmt    Benutzer-Schulung
```

## Welche Security Technologien gibt es für Java EE?
```
Public Key Infrastructure           XML Security Specifications
Transport Layer Security            Anti-Virus Software
Vulnerability Analysis Tools        Virtual Private Networks
Authentication Servers / SSO        Intrusion Detection Systems
Firewalls                           Cryptography
```

## Welche Konzepte werde für die Java Platform Security genutzt?
* Keine Pointer sondern Objektreferenzen
* Virtuelle Maschine überwacht die Programmausführung und Rechte
* Strenge Typisierung
* Sichtbarkeiten (private, protected, package, public)
* Exceptions ergeben definierte und kontrollierte Programmabbrüche
* Strenge Arraygrenzen erlauben keinen Zugriff auf benachbarte Entitäten

## Was sind die Hauptkomponenten der Java Platform Security?
* Byte-Code-Verifier:
    * Byte-Code-Format (`0xCAFEBABE`)
    * Prüfung auf gültige Objekt-Verweise und prüfen der Vererbungshierarchie
    * Datenflussanalyse der Methoden während dem Linken
    * Referenzen überprüfen während dem dynamischen Linken
* Classloader:
    * Laden von Klassen in Namespaces
    * Überprüfen von bereits geladenen Klassen
    * Protection Domains
* Security-Manager:
    * Durchsetzen der Rechte einer Protection Domain

## Was ist eine Protection Domain?
* jede Klasse wird einmalig einer Protection Domain zugeordnet
* ist eine Zuordnung von Rechten zu bestimmten Code
* kann während der Lebenszeit einer Klassen nicht mehr geändert werden

## Was ist in der Java EE Sandbox untersagt?
* File/Directory-Zugriff
* Netzwerkzugriff
* Benutzerinfo abfragen
* Programme ausführen oder dynamisch Bibliotheken laden
* Class Loader / Security Manager instanzieren
* Threads kreieren oder manipulieren (ausserhalb ThreadGroup)
* Klassenzugriff ausserhalb Packagek

## Wie kann einem Applet Zugriff auf lokale Ressourcen gegeben werden?
Durch ein Policy-File, welches beim Laden dem Security-Manager übergeben wird

## Wie ist ein Policy-File aufgebaut?
```
grant {
    permission java.io.FilePermission "c:\\temp\\*", "read, write";
};
```

## Was bezeichnet die Abkürzung JAAS?
Java Authentication and Authorization Service

## Was ist JAAS?
* Zugriffskontrolle nach Herkunft des Codes (Codezentriertes Sicherheitsmodell)
* Erweiterung der Java Platform Security
* ist für Multiuser-Applikationen wichtig
* ist die Standardimplementierung des JEE-deklarativen Sicherheitsmodells

## Welche Objekte gibt es bei JAAS?
* Subject
    * ist eine Person oder ein Dienst
    * stellt die anfragende Quelle dar
    * repräsentiert die Informationen einer einzelnen Entität
* Principal
    * ist Wert für die Identität eines Subject
    * Subject kann mehrere Principal haben
    * z.B. Benutzername, E-Mail Adresse, Kreditkartennummer
* Credential
    * repräsentiert eine Möglichkeit eines Subject sich zu authentifizieren
    * z.B. Passwort, Zertifikat, Kerberos Ticket, Public Keys

## Was ist das Ziele der Java EE Security Spezifikation?
* __Portabilität:__ Write Once, Run Anywhere
* __Transparenz:__ Entwickler brauchen keine grossen Kenntnisse über Security
* __Isolation / Abstraktion:__ Trennung von Business und Security
* __Erweiterbarkeit:__ Einbindung von Sicherheits-Services
* __Unabhängigkeit:__ Einbindung von verschiedenen Sicherheitstechnologien ist möglich

## Welche Mechanismen gibt es für die Autorisierung bei EJBs?
* Deklarative Security
    * Regeln werden im Deployment-Descriptor abgelegt
    * erlaubt Rollenspezifisches Schützen von Methoden
    * sollte wann immer möglich verwendet werden
* Programmatische Security
    * Innerhalb der Bean-Implementation kann auf die Identity zugegriffen werden
    * ermöglicht Security auf den aktuellen Kontext anzupassen

## Welche vier Möglichkeiten gibt es für Authorization?
* Deklarative Access-Control im Web-Tier
* Programmatische Access-Control im Web-Tier
* Deklarative Access-Control im EJB-Tier
* Programmatische Access-Control im EJB-Tier

## Wie wird deklarative Security umgesetzt?
```
<security-role>
    <description>People manages other people</description>
    <role-name>manager</role-name>
</security-role>
<security-role>
    <description>People who are employeed</description>
    <role-name>employee</role-name>
</security-role>

<method-permission>
    <role-name>manager</role-name>
    <method>
        <ejb-name>StatelessSessionBean</ejb-name>
        <method-name>getSalary</method-name>
    </method>
</method-permission>

<security-role-mapping>
    <role-name>manager</role-name>
    <group-name>g_manager</group-name>
    <role-name>employee</role-name>
    <group-name>g_employee</group-name>
</security-role-mapping>

import javax.annotation.security.DeclareRoles;
import javax.annotation.security.RolesAllowed;

@Stateless
@DeclareRoles({"manager", "employee"})
public class StatelessSessionBean implements StatelessSession {
    // ...

    @RolesAllowed("manager")
    public String getSalary(String name) { /** */ }
}
```

## Wie wird programmatische Security umgesetzt?
```
import java.security.Principal;

public double getSalary(String employeeId) {
    // manager role can read employee salary information
    // employee can read only his/her own salary information

    Principal p = ctx.getCallerPrincipal();
    boolean isOwnRecord = ctx.isCallerInRole("employee") && p.getName() == employeeId;
    if (ctx.isCallerInRole("manager") || isOwnRecord) ) {
        // return Salary information for the employee
        getSalaryInformationSomehow(employId);
    } else {
        throw new SecurityException("access denied");
    }
}

<security-role-ref>
    <description>abstract manager role</description>
    <role-name>manager</role-name>
<security-role-ref>

<security-role-ref>
    <role-name>manager</role-name>
    <role-link>managerOfHSLU</role-link>
</security-role-ref>

<assembly-descriptor>
    <security-role>
        <description> real “manager” role in HSLU   </description>
        <role-name>managerOfHSLU</role-name>
    </security-role>
</assembly-descriptor>
```

## Welche zwei Authentifizierungsmöglichkeiten gibt es?
* Authentifizierung im EJB-Tier
    * im Web-Tier werden die Informationen des Users ermittelt
    * werden zur Authentifizierung an den EJB-Tier weitergeleitet
* Authentifizierung im Web-Tier
    * is Best Practice
    * im Web-Tier werden die Informationen des Users ermittelt
    * Authentifizierung wird ebenfalls im Web-Tier durchgeführt
    * der Web-Tier leitet die Identity des Users an EJB-Tier weiter

