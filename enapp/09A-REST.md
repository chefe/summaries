# REST

## Für was steht die Abkürzung REST?
Representational State Transfer

## Welche REST-Operationen gehören zum Simple Set?
* `GET` = Gib mir Informationen (Retrieve)
* `POST` = Hier sind Update Informationen (Update)
* `PUT` = Hier sind neue Informationen (Create)
* `DELETE` = Lösche Informationen (Delete)

## Was sind die Paradigmen hinter REST?
* Für jeden Service wird eine Ressource erzeugt
* Identifiziere jede Ressource unter Verwendung einer URL
* Die retournierten Daten sollten Links zu anderen Daten enthalten

## Ist REST ein Standard?
Nein, nur ein Design-Pattern

## Wo liegt der Status/Zustand bei REST?
beim Client

## Welche Standards werden von REST verwendet?
* HTTP Basics
    * `HTTP, URL`
* Resource Representations
    * `XML, HTML, GIF, JPEG, ...`
* ResourceTypes / MIME Types
    * `text/xml, text/html, image/gif, image/jpeg, ...`

## Was bedeuten die Begriffe URL, URN und URI?
* __URL:__
    * Uniform Resource Locator
    * ist vom Typ URI
    * ist eine Referenz auf eine Web Ressource
* __URN:__
    * Uniform Resource Name
    * Methode (Protokoll) ist nicht enthalten
    * sagt nichts aus über die Verfügbarkeit einer Ressource
* __URI:__
    * Uniform Resource Identifier
    * folgt einem URI Schema (RFC 3986)
    * können klassifiziert werden als Namen, Lokator oder beides

## Aus welchen Komponenten besteht das Web?
* Firewalls
    * welche HTTP Nachrichten hinaus und hinein gehen
    * setzen die Web Security durch
* Routers
    * entscheiden wohin mit den HTTP Nachrichten
    * verwalten das Web Scaling
* Caches
    * entscheiden ob eine gespeicherte Kopie verwendet werden darf
    * erhöhen den Web Speed

## Was ist der Unterschied zwischen REST und SOAP?
* Proxy Servers
    * REST
        * URL identifiziert die gewünschten Ressourcen
        * HTTP Methode identifiziert die gewünschte Operation
        * Proxy entscheidet basierend auf der Ressource und der HTTP Methode
    * SOAP
        * URL ist nicht die Target Ressource
        * Proxy muss herausfinden welche Ressource angesteuert wird
        * dazu muss er in die SOAP Nachricht schauen
* Zustandsübergänge
    * REST
        * jede Ressource Repräsentation beinhaltet Hyperlinks
        * Hyperlink bringt den Client in einen neuen Zustand
        * dh. der Zustand ist jederzeit klar
    * SOAP
        * Zustand kann nicht direkt abgelesen werden
* Caching
    * REST
        * Resultat beinhaltet im Header ob es Cache-bar ist oder nicht
    * SOAP
        * Nachrichten werden immer per HTTP POST übermittelt
        * Server kann nicht herausfinden welche Daten welcher Ressource verlangt werden
        * daher ist kein Caching möglich mit SOAP
* Semantic Web
    * REST
        * jede Ressource hat eine URI
        * ist konsistent mit der Idee des Semantic Web
    * SOAP
        * SOAP URI zeigen alle auf den gleichen Server
        * ist nicht konsistent mit der Idee des Semantic Web

## Wie sollten die HTTP-Verben bei REST verwendet werden?
* __GET__
    * wird verwendet um Daten zu lesen
    * GET `http://www.example.com/customers/12345`
    * GET `http://www.example.com/customers/12345/orders`
    * Idempotent
* __PUT__
    * wird für das Update von Daten verwendet
    * PUT `http://www.example.com/customers/12345`
    * PUT `http://www.example.com/customers/12345/orders/98765`
    * Idempotent (mit Ausnahme)
* __POST__
    * wird verwendet um neue Ressourcen zu erzeugen
    * POST `http://www.example.com/customers`
    * POST `http://www.example.com/customers/12345/orders`
    * Nicht idempotent
* __DELETE__
    * wird verwendet um Ressourcen zu löschen
    * `DELETE http://www.example.com/customers/12345`
    * `DELETE http://www.example.com/customers/12345/orders`
    * Idempotent(mit Ausnahme)

