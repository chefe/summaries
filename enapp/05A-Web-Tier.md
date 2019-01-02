# Web Tier

## Welche Java EE Architektur werden unterstützt?
* Web zentrische Architektur
    * Verwendet nur den Web Container der EE Technologie
    * Der Web Server beinhaltet alle benötigten Komponenten
* B2B Architektur
    * Erweiterung der Komponenten basierten Architektur
    * Verwendet zwei EJB Server, jeder besteht aus Web-und EJB Container
* Web Service Architektur
    * Eine EE Business-Komponente veröffentlicht Funktionalität
    * Stateless Session Bean dient als Zugriffspunkt für die Servicefunktion

## Was sind die Vorteile einer Komponenten basierten Entwicklung?
* Haben Status und Eigenschaften
* Werden vom Container gekapselt (verwaltet)
* Unterstützen lokale und verteilte Komponenten Interaktion
* Erzeugen Standort Transparenz
* Können referenziert werden unter Verwendung von Namensservice

## Was ist ein Servlet?
* ist ein Java Programm, welches in einem Web- oder Applikationsserver läuft
* implementiert das `javax.servlet.Servlet` Interface
* werden für Anfragen und Antworten vom Internet Clients oder Browsers verwendet

## Wieso sollte man Servlets verwenden?
* Verwaltet Anfragen und Antworten
* Multi Threading
* Benutzt Java Language (write once, run anywhere)
* Verteilbar (RMI, Corba, INDI)
* Viele Komponenten verfügbar
* Sehr stabile Container (Tomcat, Jeronimo, Jetty)
* Ideal für kleine Applikationen (Servlets only)

## Was ist die Aufgabe eines Servlets?
* der Server identifiziert das Servlet gemäss der URL definiert im `web.xml`
* der Server delegiert die Anfrage zum entsprechenden Servlet
* das Servlet macht seine Arbeit (Aufruf EJB etc.)
* das Servlet produziert eine Antwort (formatiert html Seite)
* der Server sendet die Antwort zum Client zurück

## Welche Methoden werden im Servlet Life Cycle aufgerufen?
```
init()      service()   destroy()   doGet()     doPost()
```

## Welche Service Methoden können auf einem Servlet implementiert werden?
```
doGet()     doPost()    doHead()    doPut()
doDelete()  doTrace()   doOptions()
```

## Was sind die Implikationen für den Entwickler bei Servlet Threading?
* Instanzvariablen mit Vorsicht verwenden
* Klassenvariablen mit Vorsicht verwenden
* Den Zugriff auf externe Ressourcen vorsichtig abwickeln
* DB ist selten das Problem – eher Zugriff auf Filesystem
* Benutzen sie Synchronisationsprimitiven für kritische Abschnitte

## Welche zwei Möglichkeiten gibt es für das Session Management?
* Session Cookies
    * Sehr effektiv
    * ungeeignet bei grossen Session Data
    * am besten nicht über ein paar hundert Bytes
* Session ID
    * Best Practice
    * grosse Session Data Volumen möglich
    * Cookies werden nur noch für Session ID, etc. verwendet
    * Unterliegen dem EE Session Management

## Welche zwei Arten von Session Binding gibt es?
* unter Verwendung von Cookies
    * der Container liest und schreibt die Cookies
* unter Verwendung von URL Rewriting
    * Entwickler muss sicherstellen, dass die Session ID zur URL dazugefügt wird

## Welche Managed Backing Bean Scopes gibt es?
* __Application__
    * `javax.enterprise.context.ApplicationScoped`
    * gültig über alle User Aktionen mit der Web Applikation
    * z.B: Datenbankzugriff
* __Session__
    * `javax.enterprise.context.SessionScoped`
    * gültig über mehrere HTTP Anfragen in einer Web Applikation
    * z.B: Warenkorb
* __Flow__
    * `javax.faces.flows.FlowScoped`
    * Gültig während User Interaktionen mit einem spezifischen "Ablauf"
    * z.B: Suche
* __Request__
    * `javax.enterprise.context.RequestScoped)`
    * Gültig während einer einzigen HTTP Anfrage in einer Web Applikation
* __Dependent__
    * `javax.enterprise.context.Dependent`
    * Kennzeichnet eine Abhängigkeit von einem anderen Bean

## Was sind die Eigenschaften eines Beans?
* öffentlicher Konstruktor
* öffentliche Methoden

## Was ist ein Management Bean?
* normales Bean mit Annotationen
* wird von Servelt Container verwaltet

## Welche Attribute kennt die WebFilter Annotation?
```
filterName      description         displayName
initParams      servletNames        value
urlPatterns     dispatcherTypes     asyncSupported
```

## Welche 3 Methoden muss ein Filter implementieren?
```
public void doFilter(ServletRequest, ServletResponse, FilterChain)
public void init(FilterConfig filterConfig)
public void destroy()
```

## Wie kann ein Filter im `web.xml` definiert werden?
```
<filter>
    <filter-name>LogFilter</filter-name>
    <filter-class>LogFilter</filter-class>
    <init-param>
        <param-name>test-param</param-name>
        <param-value>InitializationParamter</param-value>
    </init-param>
</filter>
<filter-mapping>
    <filter-name>LogFilter</filter-name>
    <url-pattern>/*</url-pattern>
</filter-mapping>
```

## Was sind JSP?
* Java Server Pages
* ist eine Java View Technologie, welche im Servlet Container läuft
* erlaubt es Template zu schreiben in Client-Side Sprachen (HTML, CSS, JS)
* verwendet Tags welche auf Java Code zeigen oder Java Code enthalten
* wird durch Tomcat oder ähnliches ausgeführt
* generiert Output der im Browser des Clients dargestellt werden kann

## Wie sieht eine JSP aus?
```
<html>
    <body>
        <%
            // Scriptlet deklariert und initialisiert "date"
            System.out.println("Evaluating date now");
            java.util.Date date = new java.util.Date();
        %>
        Hello!The time is now 
        <%
            // Scriptlet generiert HTML Output
            out.println( String.valueOf( date));
        %>
    </body>
</html>
```

## Was sind JSF?
* ist ein Komponenten basiertes Framework um dynamische Webinhalte bereitzustellen
* können Konfigurationsdateien wie z.B. `faces-config.xml` verwenden
* haben ein Deployment Deskriptor File (`web.xml`)
* basiert auf den Servlet APIs
* baut auf dem MVC Ansatz auf
* bietet AJAX Unterstützung

## Wie sieht ein JSF aus?
```
// FILE: HelloWorld.java
import javax.faces.bean.ManagedBean;
@ManagedBean(name= "HelloWorld", eager= true)
public class HelloWorld {
    public HelloWorld() { 
        System.out.println("HelloWorldstarted!");
    }
    public String getMessage() {
        return "HelloWorld!";
    }
}

// FILE: web.xml
<welcome-file-list>
    <welcome-file>faces/home.xhtml</welcome-file>
</welcome-file-list>

// FILE: home.xhtml
<head>
    <title>JSF Beispiel!</title>
</head>
<body>
    #{helloWorld.message}
</body>
```

## Welche JSF Namensräume gibt es?
* `h:`
    * die html basic Taglibrary definiert Tags für gängige HTML UI Komponenten
* `f:`
    * die jsf core Taglibrary definiert alle anderen Tags der JSF

