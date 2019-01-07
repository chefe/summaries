# Compiler 2

## Aus welchen Bestandteilen setzt sich eine Sprache zusammen?
* Menge von Sätzen
* die sich aus einer definierten Menge von Zeichen
* unter Beachtung der Syntaxregeln bilden lassen

## Was ist ein Alphabet?
Menge von Zeichen aus denen die Sätze, Wörter oder
Satzformen einer Sprache bestehen

## Welche zwei Arten von Alphabet gibt es bei Programmiersprachen?
* __Terminales Alphabet (T):__
    * Menge der Zeichen, aus denen die Sätze der Sprache gebildet werden
    * Atome, Morpheme oder Token genannt
    * Zeichen kann nicht nur Buchstabe oder Ziffer sein, sondern auch ein Wort
* __Nichtterminales Alphabet (N):__
    * Menge der Metasymbole, zur Bildung syntaktischer Regeln

## Was ist eine Zeichenkette?
* Synonym: Wort
* Aneinanderreihung von Zeichen eines Alphabete
* kann Elemente des terminalen, als auch nichtterminalen Alphabetes enthalten

## Wie ist die Grammatik nach Chomsky aufgebaut?
`G = (T,N,S,P)` mit

* `T`: terminales Alphabet
* `N`: nicht terminales Alphabet
* `S`: Startsymbol, Axiom
* `P`: Menge der Produktionen (Regeln)

## Was sind die Regeln der Grammatik nach Chomsky?
* Aufbau von Regeln: `Linke Seite SYMBOL Rechte Seite`
* Linke und rechte Seite sind Zeichenketten des Alphabetes
* linke Seite muss wenigstens ein nichtterminales Symbol enthalten
    * muss bei Anwendung der Regel durch eine Zeichenkette ersetzt werden
* ein String `t` heisst ableitbar aus dem String `s`,
    * wenn es eine Folge direkter Ableitungen in folgender Form gibt
    * `s=>t`, wenn `s->s1->s2->... sn->t`
* ein String `t` heisst direkt ableitbar aus
    * wenn `t` durch Anwendung einer einzigen Regel aus `s` ableitbar ist

## Wie kann eine Grammatik definiert werden?
```
T = { der, den, hund, briefträger, beisst }

N = { SATZ, SUBJEKT, PRÄDIKAT, OBJEKT, ARTIKEL, VERB, SUBSTANTIV }

S = SATZ

P = {
    SATZ -> SUBJEKT PRÄDIKAT OBJEKT
    SUBJEKT -> ARTIKEL SUBSTANTIV
    OBJEKT -> ARTIKEL SUBSTANTIV
    PRÄDIKAT -> VERB
    SUBSTANTIV -> hund
    SUBSTANTIV -> briefträger
    VERB -> beisst
    ARTIKEL -> der
    ARTIKEL -> den
}
```

## Was ist der Unterschied zwischen Linksableitung und Rechtsableitung?
* Linksableitung:
    * das am weitesten links stehende nichtterminale Metasymbol wird untersucht
* Rechtsableitung:
    * das am weitesten rechts stehende nichtterminale Metasymbol wird untersucht

## Was sind die Definitionen von Satzform, Satz und Sprache?
* Satzform:
    * ist ein String, der aus einem Startsymbol (Axiom) ableitbar ist
    * basiert auf einer Grammatik mit terminalen und nichtterminalen Symbolen
* Satz:
    * ist eine Satzform, die nur terminale Symbole enthält
* Sprache :
    * ist die Menge der durch eine Grammatik `G` erzeugbaren Sätze

## Was bedeuten die Abkürzung BNF und EBNF?
* BNF: Backus-Naur-Form
* EBNF: Erweiterte Backus-Naur-Form

## Welche BNF Symbole gibt es?
* `=`: Definitionszeichen
* `|`: Alternative
* ': Kennzeichnungen von Sprachsymbolen
* $\phi$: Die leere Zeichenfolge
* `.`: das Ende einer Regel

## Aus welchen Teilen besteht die EBNF Notation?
* einer Startregel
* sonstigen Regeln
* terminalen Symbolen (Basiselemente der Sprache)
* nichtterminalen Symbolen (abgeleitete Konstrukte durch Regeln erklärt)

## Wie ist eine EBNF Regel aufgebaut?
Auf einer linken Seite kommt jeweils genau ein nicht-terminales Symbol vor,
das durch die rechte Seite erklärt wird

## Was darf die rechte Seiten bei der EBNF enthalten?
* terminale Symbole, geschrieben in Anführungszeichen
* nichtterminale Symbole
* die leere Zeichenfolge $\phi$
* Alternativen gruppiert durch das Zeichen: |
* Geklammerte Ausdrücke

## Welche zwei Konventionen gibt es für Klammern bei der EBNF?
| K1    | K2     | Beschreibung                  |
|-------|--------|-------------------------------|
| `( )` | `( )`  | Gruppierung                   |
| `[ ]` | `( )?` | optionalen Inhalt (0 oder 1x) |
| `{ }` | `( )*` | Wiederholung (0-n)            |
| `< >` | `( )+` | Wiederholung (1-n)            |

## Wie wird die EBNF Syntax gebraucht?
```
Ausdruck = Einfacher-Ausdruck [ RelOp Einfacher-Ausdruck ] .
Einfacher-Ausdruck = [ AddOp ] Term { AddOp Term } .
Term = [ 'NOT' ] Faktor { MulOp Faktor } .
Faktor = Variable | '(' Ausdruck ')' .
Variable = 'a' | 'b' | 'c' | 'd' | 'e' | 'f' .
AddOp = '+' | '-' .
MulOp = '*' | '/' | 'DIV' | 'MOD' .
RelOp = '=' | '<>' | '<' | '<=' | '>' | '>=' .
```

