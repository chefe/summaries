# Serialisierung

## Was sind die Anforderungen an Objektpersistenz?
* Transparenz
    * Benutzer arbeiten gleich mit transienten und persistenten Objekten
    * Persistenz erfordert keine Sonderbehandlung bei der Programmierung
* Interoperabilität
    * Persistente Objekte können in anderen Umgebungen verwendet werden
    * das Persistieren ist von spezifischen Systemen unabhängig
    * Laufzeitumgebung und persistenter Speicher sind austauschbar
* Skalierbare Wiederauffindbarkeit
    * das Auffinden von persistenten Objekten erfolgt transparent
    * kein spezifisches Durchsuchen von Objektpools

## Welche Persistenztechnik gibt es bei Java?
* Standardserialisierung:
    * Objektstruktur und Zustände werden in einem binären Format gespeichert
    * das Verfahren wird Java Object Serialization (JOS) genannt
* XML-Serialisierung über JavaBeans Persistence
    * JavaBeans können wir in einem XML-Format sichern
    * eine Lösung ist die JavaBeans Persistence (JBP)
* XML-Abbildung über JAXB
    * Abbilden der Objektstruktur auf XML-Dokumente
    * JAXB ist Teil der Standardbibliothek ab Java Version 6

## Was ist die Idee hinter der Serialisierung?
Wandle Objekt in einen Bytestrom um und lege diesen in ein nichtflüchtiges Medium ab

## Was ist der Ablauf zur Serialisierung eines Java-Objekts?
1. Metadaten (wie Klassenname und Versionsnummer) in den ByteStrom schreiben
2. alle nichtstatischen Attribute (private, protected, public) serialisieren
3. die entstehenden Byte-Ströme in einem bestimmten Format zu zusammenfassen

## Wie werden in Java Objekte serialisiert und wieder deserialisiert?
```
// Objekt schreiben
final FileOutputStream outputStream = new FileOutputStream("datei");
final ObjectOutput output = new ObjectOutputStream(outputStream);
output.writeObject(new Integer(3));
output.writeObject("Text");
output.flush();

// Objekt lesen
final FileInputStream inputStream = new FileInputStream("datei");
final ObjectInputStream input = new ObjectInputStream(inputStream);
final Integer integer = (Integer)input.readObject();
final String string = (String)input.readObject();
LOG.info("Integer: "+integer);
LOG.info("String: "+string);
```

## Wie muss eine Java Klasse implementiert sein, damit sie serialisierbar ist?
```
class Customer implements Serializable {
    private final String name;
    public Customer(final String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }
}
```

## Welche Informationen werden serialisiert?
* vollständig qualifizierte Name der Klasse
* Signatur der Klasse
* alle nicht-statischen, nicht-transienten Attribute
* weitere Objekte, auf welche die Objekt Attribute verweisen
* alle aus den Oberklassen geerbten Attribute

## Wie kann man verhindern das gewisse Attribute nicht serialisiert werden?
```
public class Customer implements Serializable {
	private final String firstName;
	private final String lastName;

	// Attribute name ist transient und wird nicht übertragen
	private transient final String name;

	public Customer(final String firstName, final String lastName) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.name = firstName + " " + lastName;
	}
}
```

## Welche Probleme gibt es bei der Deserialisierung von transienter Attribute?
* es gibt die Methode `readResolve()`
* wird wenn vorhanden vom `ObjectInputStream` aufgerufen
* so kann eine Initialisierung vorgenommen werden

```
public Object readResolve() {
	return new Customer(firstName, lastName);
}
```

## Wie lässt sich ein Singelton deserialisieren?
```
public class Customer implements Serializable {
	public static final Customer THE_BOSS = new Customer("The Boss");
	private final String name;
	
	// Singelton Konstruktion mit private Konstruktor und create Methode...
	public Object readResolve() {
		if (name.equals(THE_BOSS.getName())) {
			return THE_BOSS;
		}
		return this;
	}
}
```

## Wie übernimmt man die volle Kontrolle über die Serialisierung?
```
public class ShopCustomer extends Customer implements Serializable {
	// ...

	private void writeObject(final ObjectOutputStream oos)
			throws IOException {
		oos.defaultWriteObject();
		oos.writeObject(this.getName());
	}

	private void readObject(final ObjectInputStream ois)
			throws IOException, ClassNotFoundException {
		ois.defaultReadObject();
		final String name = (String) ois.readObject();
		this.setName(name);
	}
}
```

## Wie kann man serialisierte Objekte versionieren?
* Versionsnummer kann als statisches Attribut definiert werden

```
public static long serialVersionUID = 1L;
```

