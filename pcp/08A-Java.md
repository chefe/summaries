# Java 1

## Worin unterscheiden sich abstrakte Klassen von Interfaces?
* Interface kann keinen Zustand haben, abstrakte Klassen schon
* Klasse kann mehrere Interface implementieren, aber nur eine abstrakte Klasse
* Interface haben keine Konstruktoren, abstrakte Klassen aber schon

## Wie kann das Problem mit Mehrfachvererbung bei Interfaces gelöst werden?
```
public interface DemoInterface {
    default int getLuckyNumber() { return 7; }
}

public interface OtherInterface {
    default int getLuckyNumber() { return 8;
}

public class InterfaceDemo implements DemoInterface, OtherInterface {
    @Override
    public int getLuckyNumber() {
        return DemoInterface.super.getLuckyNumber();
    }
}
```

## Wieso sollten default- und static-Methoden sehr sparsam eingesetzten werden?
* wegen der Rückwärtskompatibiltät von eigenen APIs
* Einsatz macht Design meistens nicht besser oder einfacher

## Was ist die Motivation für Lambdas?
```
// vor Java 8
btn.setOnAction(new EventHandler<ActionEvent>() {
    @Override
    public void handle(ActionEvent event) {
        System.out.println("Hello World!");
    }
});

// seit Java 8
btn.setOnAction(event -> System.out.println("Hello World!“));
```

## Was ist ein Lambda-Ausdruck in Java?
* sind eigentlich Instanzen von Interfaces
* Java bietet neue kompaktere und funktionalere Syntax
* Java übernimmt die Instanziierung

## Welche funktionalen Interfaces werden von Java bereitgestellt?
* `Consumer`: Produziert kein Resultat (keine Rückgabe)
* `Function`: Produziert Resultat von beliebigem Typ
* `Operator`: Produziert Resultat vom Argument-Typ
* `Supplier`: Produziert Resultat ohne Argument
* `Predicate`: Produziert boolean-Resultat

## Welche Namensregeln gibt es bei Funktionale Interfaces?
* Präfix "Bi" falls zwei Argumente, "Binary" bei Operator
    * z.B.: `BiPredicate<T, U> , BinaryOperator<T>`
* Präfix "Unary" falls Operator mit einem Argument
    * z.B.: `UnaryOperator<T>`
* Elementare Datentypen kommen im Namen vor
    * z.B. `DoublePredicate`
* Funktionen mit unterschiedlichen elementaren Typen benutzen "To"-Notation
    * z.B. `IntToLongFunction`

## Welche vier Typen von Methoden-Referenzen gibt es?
* Statische Methode: __ClassName::methodName__
    * z.B. `System::currentTimeMillis`
* Instanzmethode eines Objektes: __Expr::methodName__
    * z.B. `System.out::println`
* Instanzmethode einer belebigen Instanz einer gewissen Klasse: __ClassName::methodName__
    * z.B. `String::length`
* Konstruktor: __ClassName::new__
    * z.B. `String::new`

