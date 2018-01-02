# Datenbankprogrammierung

## Was sind Gründe für Business Logik in der Datenbank?
* Grosses Datenvolumen
* Hoher Vernetzungsgrad der Daten (viele Tabellen betroffen)
* viele paralelle Zugriffe
* Transaktionssicherheit

## Wie werden DB-Anfragen in Anwendungsprogrammen abgearbeitet?
1. Anfrage ausführen
2. Anfrage auswerten, ResultSet bereitstellen
3. Tupel sequentiell verarbeiten
4. Cursor/Iterator schließen

## Was ist ein `CURSOR`?
* ist ein Zeiger, der eine Menge von Tupeln durchlaufen kann
* Reihenfolge der Tuepl ist dabei vorgegeben
* erlaubt ein tabellenzeilenweises Vorgehen

## Wie wird in PostgreSQL ein `CURSOR` definiert un benutzt?
```
CREATE OR REPLACE FUNCTION hello_cursor ()
RETURNS SETOF TEXT AS $$
DECLARE student_cursor CURSOR FOR
    SELECT MatrNr AS id, Name as name FROM studenten;
BEGIN
    FOR record IN student_cursor LOOP
        RETURN NEXT record.name;
    END LOOP;
END
$$

LANGUAGE plpgsql;
SELECT hello_cursor();
```

## Was ist der Unterschied zwischen Stored Procedures und Stored Functions?
* Stored Procedures
    * haben keinen Rückgabewert
* Stored Functions
    * haben einen Rückgabewert

## Was bedeutet JDBC und was ist der Zweck davon?
* Java Database Connectivity
* Anbindung von SQL-Datenbanken an Java
* Standardisierte Schnittstelle
* Portierbare Programme

## Was sind die wichtigsten Klassen und Methoden von JDBC?
* Wichtige Klassen:
	* `DriverManager`
	* `Connection`
	* `Statement`
	* `ResultSet` (ist ein Zeiger / Cursor)
* Wichtige Methoden:
	* `DriverManager.getConnection()`
	* `connection.createStatement()`
	* `statement.executeQuery()`
	* `resultSet.next()`
	* `resultSet.getInt()` / `resultSet.getString()` / ...

## Wie kann über JDBC Daten von der Datenbank gelesen werden?
```
Class.forName("org.postgresql.Driver");
Connection connection = DriverManager.getConnection(
	"jdbc:postgresql://127.0.0.1:5432/uni","user", "password");
Statement statement = connection.createStatement();
ResultSet resultset = statement.executeQuery("SELECT * FROM PROFESSOREN");
while (resultset.next()) {
	System.out.println(resultset.getString(2));
}
```

## Wie kann die Fetch Size in JDBC eingestellt werden?
```
// Standard Fetch Size ist 0 = gesamtes Resultat in das Result Set kopieren
statement.setFetchSize(50);
```

## Wie kann SQL Injection durch ein Prepared Statements in JDBC verhindert werden?
```
PreparedStatement pstmt = conn.prepareStatement(
	"delete from Studenten where MatrNr = ?");
int userInput; 
// Datenwert für userInput einlesen und Variable setzen
pstmt.setInt(1, userInput);
pstmt.executeUpdate();
```
