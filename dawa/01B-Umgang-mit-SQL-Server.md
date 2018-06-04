# Umgang mit dem MS-SQL-Server

## Wie kann man sich alle Datenbanken anzeigen lassen?
```
SELECT name, database_id, create_date FROM sys.databases; 
```

## Wie kann man sich alle Schematas anzeigen lassen?
```
SELECT * FROM sys.schemas;
```

## Wie können alle Objekte mit dazugehörenden Schema angezeigt werden?
```
SELECT name, OBJECT_NAME(object_id) AS [Object Name], 
SCHEMA_NAME(schema_id) AS [Schema Name], object_id FROM sys.objects
```
