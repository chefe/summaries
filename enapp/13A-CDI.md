# CDI

## Für was steht die Abkürzung CDI?
Context and Dependency Injection

## Für was steht die Abkürzung IoC?
Inversion of Control

## Was ist der Sinn von IoC?
* entkoppelt einen Task von seiner Implementation
* Fokusierung auf die Aufgabe
* befreit von Annahmen und bezieht sich stattdessen auf Contracts
* verhindert Seiteneffekte z.B. wenn Klassen ersetzt werden müssen

## Welche zwei spezialisierte Versionen von IoC gibt es?
* Service Locator
    * Zentrale Registry welche alle Services kennt
    * gibt die notwendigen Informationen zum ausführen eines Tasks zurück
* Dependency Injection
    * Services melden sich mit Interface beim Container an
    * Abhängigkeiten werden über Interfaces eingespielt
    * Implementation kann im Container ausgetauscht werden

## Was sind die Vorteile des CDI Service?
* verbesserter Lebenszyklus für stateful Objekte
* Typen sichere Dependency Injection
* verbesserter Ansatz um Interceptoren an Objekte zu binden
* SPI um portierbare Extensions für den Kunden zu entwickeln

## Was ist ein Bean?
* ein Objekt das an einen Life Cycle Kontext gebunden ist
* managed und session Beans können andere Beans injizieren
* andere Objekte können auch Beans via CDI injiziert bekommen

## Welche Bean können injizieren werden?
* CDI beinhaltet Support für managed und session Beans
* Message Driven Beans und Entity Beans sollten nicht injiziert werden

## In welche Komponentenarten können Beans injiziert bekommen?
* Message Driven Beans
* Interceptors
* Servlets, Servlet Filters und Servlet Event listener
* JAX-WS Service Endpunkte und Handler
* JAX-RS Ressourcen, Provider und javax.ws.rs.core.Application Subklassen
* JSP Tag Handler und Tag Library Event Listener

## Welche Fragen müssen mit CDI nicht mehr beantwortet werden?
* Was ist der Lebenszyklus dieses Objektes?
* Wie viele simultane Clients kann es haben?
* Ist es multithreaded?
* Wie kann ich darauf von einem Client zugreifen?
* Muss ich es explizit zerstören?
* Wo soll ich die Referenz aufbewahren wenn ich es momentan nicht verwende?
* Gibt es eine alternative Implementationsmöglichkeit?
* Wie soll ich dieses Objekt sharen zwischen anderen Objekten?

## Was ist das Ziel von CDI?
* loose coupling + strong typing
* ein Bean definiert nur den Typ und die Semantik von Abhängigkeiten
* das Bean muss keine Kenntnisse über CDI haben (Lebenszyklus, Implementation, ...)

## Was sind die Vorteil einer loosen Kopplung?
* Code ist leichter zu unterhalten
* konkrete Implementation, ... kann je nach Deployment-Szenario variieren

## Wo findet bei CDI loose Kopplung statt?
* Interceptors entkoppeln technische Überlegungen von der Business Logik
* Event Notifikationen entkoppeln Produzenten von Konsumenten
* Decorators erlauben Business Überlegungen in Kategorien einzuteilen

## Was definiert der Scope eines Beans?
* den Lebenszyklus und Sichtbarkeit jeder Instanz des Beans
* welche Clients eine Referenz eines bestimmten Beans sharen

## Welche Scopes gibt es für Beans?
* `@RequestScoped`
* `@SessionScoped`
* `@ApplicationScoped`
* `@ConversationScoped`

## Was ist die Anatomie eines Beans?
* ein (nicht leeres) Set von Bean Typen
* ein (nicht leeres) Set von Qualifiers
* ein Scope
* Optional, ein Bean EL Name
* ein Set von Interceptor Bindings
* eine Bean Implementaion
* kann eine Alternative haben (`@Alternative`)

## Was gehört zum erfüllenden Contract eines zu injizierenden Bean?
* ein Bean Typ, zusammen mit einem Set von Qualifiers
* der Bean Typ (bzw. das `@Local` Interface) muss sichtbar sein für den Client

## Wie wird der EL Name definiert?
```
@SessionScoped @Named("cart") 
public class ShoppingCart implements Serializable {
    // ...
}
```

## Wie werden alternative Implementationen definiert?
```
// ALTERNATIVE
@Alternative
public class TestCoderImpl implements Coder { /* ... */ }

// STANDARD
public class CoderImpl implements Coder { /* ... */ }

// BENUTZUNG
@Inject
Coder coder;
```

## Wie kann auf eine alternative Implementation umgeschaltet werden?
in der `beans.xml`

```
<beans ...>
    <alternatives>
        <class>javaeetutorial.encoder.TestCoderImpl<class>
    </alternatives>
</beans>
```

## Was ist ein Qualifier?
* ist eine benutzerdefinierte Annotation die mit `@Qualifier` annotiert wird
* hilft dabei Bean-Typen genauer zu spezifizieren

## Wie wird ein Qualifier definiert und benutzt?
```
// DEFINITION DES QUALIFIERS
@Qualifier
@Target({TYPE, METHOD, PARAMETER, FIELD})
@Retention(RUNTIME)
public @interface CreditCard {}

// DEFINITION AUF DER IMPLEMENTATION
@CreditCard
public class CreditCardPaymentProcessor implements PaymentProcessor { /* ... */ }

// BENUTZUNG
@Inject @CreditCard
PaymentProcessor paymentProcessor;
```

## Was ist ein Interceptor?
* eine Art Middleware
* kann die Methodenasführung abbrechen oder verändern

## Was sind Anwendungsmöglichkeiten für einen Interceptor?
* etwas loggen bevor eine Methode ausgeführt wird
* erzwingen einer Ausführung (z.B. Authorisierung) bei Methodenaufrufen

## Für was steht die Abkürzung AoP?
Aspect Oriented Programming

