# Datenintegrität

## Was sind Integritätsbedingungen?
* Daten sind integer, wenn sie inhaltlich korrekt sind
* Um die Integrität zu prüfen, gibt es Bedingungen

## Welche Arten von Integritätsbedingungen gibt es?
* Semantische Integritätsbedingungen
    * Regeln, die definieren, wann die Daten korrekt sind
* Syntaktische Integritätsbedingungen
* Statische Integritätsbedingungen
    * müssen von jedem Zustand der DB erfüllt sein
    * `not null, unique, check, primary key, references`
* Dynamische Integritätsbedingungen
    * müssen von Zustandsänderungen erfüllt werden
    * `cascade, set null, restrict, create trigger`

## Wie können Schlüssel bei einer Tabelle nachträglich ergänzt werden?
```
alter table verantwortung add foreign key (mnr) references mitarbeiter (mnr);
alter table mitarbeiter add primary key (mnr);
```

## Welche 3 Möglichkeiten gibt es bei Änderung des Primärschlüssels?
1. Verhindern (`on update restrict` / `on delete restrict`)
2. Kaskadieren (`on update cascade` / `on delete cascade`)
3. Nullsetzen (`on update set null` / `on delete set null`)

## Wie kann eine Integritätsbedingung statisch mit einem Check überprüft werden?
```
CREATE TABLE studenten (... , semester INTEGER CHECK semester BETWEEN 1 AND 13);
CREATE TABLE professoren (... , rang CHARACTER(2) CHECK rang IN ('c3','c4');
```

## Wie wird mit PostgreSQL ein Trigger erstellt?
```
CREATE TRIGGER keinekuerzung
BEFORE UPDATE ON mitarbeiter
FOR EACH RWO BEGIN
    IF NEW.lohn < OLD.lohn
    THEN SET NEW.lohn = OLD.lohn
    END IF;
END
```

