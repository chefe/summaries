# Informationsmodellierung

## Welche primitiven Datentypen biete UML?
* Integer
* Boolean
* String

## Welche Informationen lassen sich bei einem Attribut definieren?
* Sichtbarkeit
* Name (Adresse)
* Typ (Adresse: String)
* Multiplizität (Adressen: String [1..*])
* Vorgabewert (Kontostand: Integer [= 0])
* Eigenschaftswert (Kontostand: Double {Kontostand >= Kredit})

## Welche Sichtbarkeiten gibt es?
* public (Plus-Zeichen)
* protected (Raute-Zeichen)
* private (Minus-Zeichen)

## Wie wird ein Klassenattribut (static) gekennzeichnet?
* Unterstrichenes Attribut

## Wie wird ein Konstante gekennzeichnet?
* Name nur mit Grossbuchstaben

## Wie wird eine abtrakte Methode gekennzeichnet?
* Kursiv geschriebener Name

## Was ist ein abgeleitetes Attribut und wie wird es dargestellt?
* von anderen Attributen abgeleitet
* kann dynamisch berechnet werden
* Wert eines abgeleiteten Attributs darf nicht direkt geändert werden
* Kennzeichnung mit Präfix "/"

## Welche Informationen lassen sich bei einer Operation definieren?
* Sichtbarkeit
* Name
* Parameterliste
    * Richtung (in, out, inout)
    * Name
    * Type (Integer, ...)
* Rückgabetyp (betrag () : Integer)

