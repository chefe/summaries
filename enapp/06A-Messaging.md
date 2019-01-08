# Messaging

## Wofür steht die Abkürzung JMS?
Java Messaging System

## Was sind die Vorteile von JMS?
* einfache Integration
* asynchrone Kommunikation
* one-to-many Kommunikation
* garantierte Lieferung
* transaktionale Messaging

## Wofür steht die Abkürzung MOM?
Message Oriented Middleware

## Was ist der Unterschied zwischen JMS Provider und Client?
* JMS Provider
    * ein Messaging System implementiert JMS Interfaces und
    * stellt Administrative und Kontroll-Eigenschaften zur Verfügung
* JMS Clients
    * sind die Java Programm Komponenten die Messages produzieren und konsumieren
    * jede Java EE Komponente kann als JMS Client agieren

## Was sind Administrative Objekte?
* sind JMS Objekte konfiguriert um von Clients verwendet zu werden
* Administratoren erzeugen administrative Objekte
* stehen allen Applikationen eines App-Servers zur Verfügung stehen
* Entwickler benutzen Annotationen um Applikation spezifische Objekte zu erzeugen

## Welche 2 Arten von Administrations Objekte gibt es?
* Destination Factories
* Connection Factories

## Was sind die grundlegenden Building Block einer JMS Applikation?
* Administrierte Objekte (Connection Factories und Destination)
* Connections
* Sessions
* Message Producer
* Message Consumer
* Messages

## Welches Verhältnis haben die Building Block untereinander?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06A-jms-relationen.png}
\end{figure}

## Welche zwei Architekturen gibt es Messaging?
* Point to Point Architektur
    * Message-Queue kann mehrere Consumer haben
    * wenn ein Consumer die Message konsumiert, dann wird sie gelöscht
* Publish / Subscribe Architektur
    * die Topic-Queue hält alle Messages
    * Message bleibt in der Queue bis sie von allen Subscribern konsumiert wurden
    * fällt ein Subscriber aus, behält die Topic-Queue die Message zurück

## Aus welchen drei Teilen besteht ein Message Objekte?
* __JMS Header__
    * Information über Routing und Identifikation
    * jedes Header Feld hat Get/Set Methoden
    * praktisch alle Felder werden automatisch gesetzt
    * Client kann eine Auswahl davon selber setzen
* __JMS Properties__
    * Werte als Ergänzung zu den Header Feldern
    * JMS API stellt vordefinierte Property-Namen zur Verfügung
    * der JMS Provider kann diese Unterstützen
    * beginnen alle mit JMS
* __JMS Body__
    * `StreamMessage`: ein Stream von primitiven Java Werten
    * `TextMessage`: ein java.lang.String Objekt
    * `ObjectMessage`: ein serialisierbares Java Objekt
    * `ByteMessage`: ein Stream von un-interpretierten Bytes oder binären Daten
    * `MapMessage`: ein Set von Werte-Paaren, z.B: Hash Table

## Was sind Beispiele für JMS Properties?
* `JMSMessageID`
* `JMSDeliveryMode`
* `JMSExpiration`
* `JMSPriority`
* `JMSRedelivered`

## Was sind die Mechanismen für sicheres Messaging?
1. Setting time-to-live
    * dass die Nachricht nicht geliefert wird wenn sie out-of-date ist (ms)
2. Specifying message persistence
    * dass die Nachricht nicht verloren geht bei einem Serverausfall
3. Controlling acknowledgment
    * verschiedene Bestätigungsebenen
4. Creating durable subscribers
    * Nachrichten werden im Pub/Sub Modell sicher zugestellt
5. Setting priorities
    * setzten der Zustellungs Priorität (0-9)

## Wofür steht die Abkürzung JNDI?
Java Naming and Diectory Interface

## Was sind die Schritte um eine JMS Nachricht zu senden?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06A-jms-send.png}
\end{figure}

1. Beschaffe eine Connection Factory unter Verwendung von Injection am JNDI API
2. Beschaffe die Message Queue unter Verwendung von Injection am JNDI API
3. Erzeuge ein Connection Objekt unter Verwendung der Connection Factory
4. Erzeuge ein Session Objekt (single threaded) unter Verwendung des Connection Objektes
5. Erzeuge ein `QueueSender` Objekt unter Verwendung vom Session Objekt
6. Erzeuge ein oder mehrere Message Objekte unter Verwendung von Session Objekten
7. Fülle die Message unter Verwendung der Methode `setText()` im `TextMessage` Objekt mit Text
8. Versende eine oder mehrere Message Objekte unter Verwendung vom `QueueSender` Objekt

## Was sind die Schritte um eine JMS Nachricht zu empfangen?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06A-jms-receive.png}
\end{figure}

1. Beschaffe eine Connection Factory unter Verwendung von Injection am JNDI API
2. Beschaffe die Message Queue unter Verwendung von Injection am JNDI API
3. Erzeuge ein Connection Objekt unter Verwendung der Factory
4. Erzeuge ein Session Objekt (single threaded) unter Verwendung des Connection Objektes
5. Erzeuge ein `QueueReciever` Objekt unter Verwendung vom Session Objekt
6. Ruf die `recieve()` Methode vom `QueueReciever` Objekt auf
7. Verwende die Message die von der `recieve()` Methode zurückgegeben wurde

## Wofür steht die Abkürzung MDB?
Message Driven Beans

## Was ist ein Message Driven Bean?
* erlaubt Java EE Applikationen die Messages asynchron zu konsumieren
* ähnlich einem Event Listener
* Messages können von jeder Java EE Komponente gesendet und empfangen werden
* sind nicht Teil von EJB light Profil
* kann nicht in einem "war" File deployed werden
* werden mit `@javax.ejb.MessageDriven` annotiert

## Was ist der Unterschied zwischen MDBs und Session Beans?
* Clients greifen nicht über Interfaces auf die MDBs zu
* sind ähnlich zu Stateless Beans
* MDBs halten keine Daten oder Status für einen Client
* alle Instanzen eines MDBs sind gleichwertig
* der Container kann die Nachricht an jedes MDB weitergeben
* ein einziges MDB kann Nachrichten für mehrere Clients verarbeiten

## Was sind die Charakteristiken von MDB?
* sie beginnen zu laufen, nachdem sie eine Nachricht erhalten haben
* sie werden asynchron ausgeführt
* sie sind kurzlebig
* sie können transaktionsgesteuert sein
* sie sind zustandslos, gleich wie Stateless Beans

## Wann sollte man MDBs verwenden?
um Messages asynchronzu empfangen

## Welche Methoden werden im Life Cycle einer MDB aufgerufen?
* `@PostConstruct` nachdem eine Instanz erzeugt wurde
* `onMessage()` wenn eine Message angekommen ist
* `@PreDestroy` bevor die Instanz zerstört wird

## Wofür steht die Abkürzung WSDL?
Web Service Description Language

## Für was stand die Abkürzung SOAP ursprünglich?
Simple Object Access Protocol

## Wie ist eine SOAP-Nachricht aufgebaut?
```
<soap-env:Envelope xmlns:soap-env="http://schemas/xmlsoap.org/soap/envelope/">
    <soap-env:Header>
        <!-Header Information -->
    </soap-env:Header>
    <soap-env:Body>
        <!- Body Information -->
    </soap-env:Body>
</soap-env:Envelope>
```

## Wofür steht die Abkürzung UDDI?
Universal Description, Discovery and Integration

## Was ist UDDI?
* vorgeschlagen als Webservice Standard
* entwickelt für die Publizierung von WSDL-Files
* hat sich jedoch nicht durchgesetzt

## Wie kann eine Kommunikation über SOAP aussehen?
_Anfrage:_
```
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
        <p:getPart xmlns:p="http://www.parts-depot.com">
            <part-id>00345</part-id>
        </p:getPart>
    </soap:Body>
</soap:Envelope>
```

_Antwort:_
```
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
        <p:getPartResponse xmlns:p="http://www.parts-depot.com">
            <Part-ID>00345</Part-ID>
            <Name>Widget-A</Name>
            <Description>This part is used with...</Description>
            <UnitCostcurrency="USD">0.10</UnitCost>
            <Quantity>10</Quantity>
        </p:getPartResponse>
    </soap:Body>
</soap:Envelope>
```

## Welche Dienste sind für einen verteilten Web Service notwendig?
SOAP, UDDI und WSDL

