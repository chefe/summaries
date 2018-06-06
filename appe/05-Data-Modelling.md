# Data Modelling

## Was definiert das Datenmodell?
* definiert die strukture Attribute
* definiert die Beziehungen zwischen Klassen
* definiert Assoziationen mit Attributen

## Welche Level von Datenmodelle gibt es?
* Konzeptuelles Datenmodel
    * Nicht-technische Namen
    * Kundenorientiert
    * Entitätsnamen und Beziehungen
* Logisches Datenmodel
    * unabhängig von der Technologie
    * Entitätsnamen und Beziehungen
    * Attribute und Primärschlüssel
    * Business Namen
* Pysisches Datenmodel
    * auf eine spezifische Technologie ausgelegt
    * Tabellen, Spalten, Indexe, Schlüssel, ...
    * Technische Namen

## Wie heissen die wichtigsten JPA-Elemente?
* Entity: Java class, mapped to a table in the database
* Annotation: Used to define the OR mapping for classes and fields
* Entity Manager: Manager-Object, provides access to entity objects and performs persistence operations
* Persistence Unit: Configures connectivity, DB driver, 
* JPQL: Object-oriented query language, platform-independent

## Wie heissen die wichtigsten JPA Annotations?
* `@Entity`: Designates a Java class as entity
* `@Table`: Specifies the table associated with the entity (optional)
* `@Id`: Designates a field as primary key
* `@Column`: Associates a field with a column (optional)
* `@OneToMany`: Defines association with one-to-many multiplicity
* `@ManyToMany`: Defines association with many-to-many multiplicity

## Wie funktioniert ein Create mit JPA?
```
EntityManagerFactory emf = Persistence.createEntityManagerFactory(Config.DB_Link);
EntityManager em = emf.createEntityManager();

Professor p = em.find(Professor.class, NamedRecords.ProfSokrates);

Assistant me = new Assistant();
me.setName("Peter Muster");
me.setAreaOfExpertise("SW Development");
me.setBoss(p);

em.getTransaction().begin();
em.persist(me);
em.getTransaction().commit();
```

## Wie funktioniert ein Read mit JPA?
```
Professor p = em.find(Professor.class, NamedRecords.ProfSokrates);
for (Lecture l : p.getLectureCollection()) {
	System.out.println(String.format(
		"Professor %s holds lecture %s", 
		p.getName(), 
		l.getTitle()
	));
}
```

## Wie funktioniert ein Update mit JPA?
```
Professor p = em.find(Professor.class, NamedRecords.ProfSokrates);
em.getTransaction().begin();
p.setName(p.getName() + " 2.0");
for (Assistant a : p.getAssistantCollection()) {
	a.setName(a.getName() + " 2.0");
}
em.getTransaction().commit();
```

## Wie funktioniert ein Delete mit JPA?
```
Lecture l = em.find(Lecture.class, LectureMaeeutik);
em.getTransaction().begin();
em.remove(l);
em.getTransaction().commit();
```

## Wie funktioniert ein Select mit JPA?
```
TypedQuery<Professor> query = em.createQuery("SELECT p FROM Professor p
WHERE p.grade = 'C4'", Professor.class);
List<Professor> results = query.getResultList();
```

## Wie funktioniert ein Delete direkt mit einem Query?
```
em.getTransaction().begin();
String q = "DELETE FROM Lecture l WHERE l.holdBy.personnelNumber = :prof";
Query query = em.createQuery(q);
query.setParameter("prof", 42);
int rowCount = query.executeUpdate();
em.getTransaction().commit();
```

