# Enterprise Java Beans 

## In welche Layers wird eine Java EE Applikation üblicherweise unterteilt?
* View Layer
* Business Layer 
* JPA Layer

## Welche EJB Typen gibt es?
* Session Beans (Stateless, Stateful, Singleton)
* Message Driven Beans (Stateless)

## Was sind Enterprise Beans?
Serverseitige Komponenten in Java geschrieben die Business Logik zusammenfassen

## Was ist die Kardinalität bei Stateless und Statefull Beans?
* Stateless Session Bean
    * alle Clients greifen auf das gleich EJB object zu
    * das Object greif dann auf eine EJB instance aus dem Pool zu
* Stateful Session Bean
    * jeder Client hat ein eigenes EJB object
    * jedes EJB object ist genau mit einer EJB instance verbunden

## Was ist der Unterschied zwischen EJB object und EJB instance?
* EJB object
    * Proxy-Object zwischen CLient und EJB instance
    * wird automatisch vom Container erledigt
* EJB instance
    * Instanze eines EJB 
    * wird durch Entwickler geschrieben

## Was sind die Vorteile von Java Enterprise Beans?
* der Container stellt System Services für die Beans zur Verfügung
* so kann der Entwickler sich auf die Business Probleme konzentrieren
* Container übernimmt Transaktionsmanagement und Sicherheitsauthorisierungen
* Client Entwickler kann sich so auf die Präsentation fokussieren

## Was sind die Bestandteile eines EJB?
* Enterprise-Bean-Klasse
    * implementiert die Geschäftsmethoden der Enterprise-Bean
    * und alle Lebenszyklus-Callback-Methoden
* Business-Interfaces
    * definieren die zu implementierenden Business-Methoden der Bean-Klasse
    * Business-Schnittstelle ist nicht erforderlich, falls nur lokal genutzt
* Hilfsklassen
    * andere Klassen, die von der Enterprise-Bean-Klasse benötigt werden
    * z. B. Exeption- und Hilfsklassen.

## Welche EJB Methoden Typen gibt es?
* Lebenszyklus- oder Call Back Methoden
    * werden vom Container aufgerufen
    * EJB Komponenten Entwickler kann diese Methoden implementieren
    * Beispiel: `@PreDestroy` oder `@PostConstruct`
* Business Methoden
    * typischerweise definiert in einem Business Interface
    * die Bean Klasse implementiert diese Methoden

## Wie heissen einige wichtige EJB Componenten Schnittstellen?
* `EJBContext`
    * Zugriff zu Container Laufzeit Kontext
* `SessionContext` und `MessageDrivenContext`
    * erweitern `EJBContext` und stellen zusätzliche Methoden zur Verfügung
    * spezifisch zum Bean Typ (Security, Transaktion bezogen, Lookup)

## Was ist die Rolle des Containers?
* kapselt die Zugriffe zu externen Ressourcen
* managed den Lebenszyklus der instantiierten EJBs
* isoliert die Klasse mit der Implementation von ihrem Client
* Clients müssen einen Aufruf durch EJBObject in den Container machen
* stellt Services zur Verfügung um eine Methode zu einer bestimmten Zeit aufzurufen
* überwacht Message Queues für Message-Driven Beans

## Welche Funktionalität bietet der EJB Container?
* Remote Client Communication
* Dependency Injection
* State Management
* Pooling
* Component Life Cycle
* Messaging
* Transaction Management
* Security
* Concurrency Support
* Interceptors
* Asynchronous Method Invocation

## Was ist der Sinn des Embedded Container?
* ermöglicht über Client-Code auf Enterprise-Bean-Komponenten zuzugreifen
* dazu werden Container und Client-Code in derselben virtuellen Maschine ausgeführt
* wird zum Testen von Enterprise-Beans verwendet, ohne sie deployen zu müssen

## Wann können Timer Events durch den EJB Timer Service ausgelöst werden?
* zu einer bestimmten Zeit
* nach einer bestimmten verstrichenen Zeit
* an bestimmten, sich wiederholenden Zeitintervallen

## Wieso können Statefull-Beans den EJB Timer Service nicht benutzen? 
* weil Statefull-Bean auf Festplatte geschrieben werden kann
* und dann nicht mehr im Memory zugreifbar ist

## Wie kann ein asynchroner Bean Call gemacht werden?
mit der `@Asynchronous` Annotation

## Welche Bean Interfaces gibt es?
* __Remote__ - Methoden Parameter sind serialisierbar
* __Local__ - Methoden Parameter sind Referenzen
* __No-Interface__ - gleich wie local, aber ohne Business Interface

## Was ist das Ziel eines Business Interface?
* stellt ein Zugriffspunkt und Typ für Clients zur Verfügung
* spezifiziert dem Server wie er das EJB zu konstruieren hat
* dient als Framework für das Verhalten einer EJB Komponente

## Was sind die möglichen Typen eines Cient Zugriffs?
* local
* remote
* web service

## Was sind die EIgenschaften eines Local Clients?
* muss in der gleichen JVM laufen
* kann eine Web Komponente oder ein anderes EJB sein
* vom lokalen Client aus ist die Lokalität des Beans nicht transparent
* das lokale Business Interface definiert die Business- und Lebenszyklus-Methoden

## Wie wird ein Local Client definiert?
```
@Local
public interface InterfaceName {
    // ...
}

@Local(InterfaceName.class)
public class BeanName implements InterfaceName {
    // ...
}
```

## Wie wird ein Remote Client definiert?
```
@Remote
public interface InterfaceName {
    // ...
}

@Remote(InterfaceName.class)
public class BeanName implements InterfaceName {
    // ...
}
```

## Was ist das Remote Komponenten Interface?
* Stellt Zugriff auf die Business Methoden einer Komponente zur Verfügung
* Ist implementiert als Stub auf der Clientseite und dem EJB Objekt auf der Serverseite
* Der Client verwendet Dependency Incection oder JNDI Lookups um die Referenz zu erhalten

## Was ist das spezielle an Implementationsklasse?
* Klasse ist markiert mit der `javax.ejb.Stateless` oder `javax.ejb.Stateful` Annotation
* Clients haben keinen direkten Zugriff auf die Implementationsklasse
* Auf Implementations-Instanzen wird immer über local oder remote Interfaces zugegriffen

## Wie sollten EJBs gemäss Conventions benannt werden?
* EJB Name: z.B. `AccountBean`
* EJB Class: z.B. `AccountBean`
* Business Interface: z.B. `Account`

## Was ist der Unterschied zwischen JNDI Lookup und Dependency Injection?
* grundsätzlich keiner, da beide das gleiche machen
* Dependency Injection ist eleganter und koppelt loose
* Lookups haben eigene try/catch Blöcke und können gewisse Voraussetzungen durchsetzen

## Wie können Session Beans konfiguriert werden?
* durch Annotation
* durch Deployment Descriptor (DD)

## Welche zwei Stati gibt es Lebenszyklus einer Stateless Session Bean?
* bereit und in einem Pool
* existiert nicht

## Was sind die Vorteile stateless Beans?
* Bean Pooling
    * nicht benutzte Methoden stehen zur Verfügung Client Anfragen zu bedienen
* Scalability
    * Stateless Beans bedienen mehrere Clients und haben kleineren Footprint
    * das erlaubt viel mehr zu erzeugen als ihr Stateful Pendant
* Performance
    * EJB Container lagern keine stateless Beans vom RAM auf die Festplatte aus
    * somit sind sie performanter als statefull Beans

## Welche vier Stati gibt es Lebenszyklus einer Stateful Session Bean?
* existiert nicht
* bereit
* passiv
* Bean führt Business Methode aus

## Wann sollte man EJBs verwenden?
* die Applikation muss skalieren
* Daten Integrität bei Transaktionen muss gewährleistet sein
* die Applikation hat verschiedene Clients

