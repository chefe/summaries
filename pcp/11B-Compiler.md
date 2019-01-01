# Compiler Bau 2

## Welche Schritte sind für die Integration in ein Java-Programm erforderlich?
1. aus Quellcode die lexikalische Analyse erstellen
2. aus der lexikalischen Analyse den Parser erstellen
3. der Parser erstellt den abstrakten Syntaxbaum
4. den abstrakten Syntaxbaum durchlaufen
5. Auswertungen vornehmen

```
// erzeugen eines CharStream – String lesen aus args[0]
CharStream input = CharStreams.fromString(args[0]);
// aus dem CharStream wird ein Lexer erzeugt
AdamRieseLexer lexer = new AdamRieseLexer(input);
// aus dem Lexer wird Token-Puffer erzeugt
CommonTokenStream tokens =
new CommonTokenStream(lexer);
// aus dem Token-Puffer wird ein Parser erzeugt
AdamRieseParser parser = new AdamRieseParser(tokens);
// Beginn des parsens mit der Startregel - stmt
ParseTree tree = parser.stmt();
// Ausgabe des Syntaxbaumes im LISP-Stil
System.out.println(tree.toStringTree(parser));
```

## Wie kann eine Grammatik mit Labels verbessert werden?
```
// Definition der Grammatik AdamRiese
grammar AdamRieseLabeled;

// Parser-Regeln
stmt     : expr '=' ;

expr     : term             # TermOnly
         | term ADD expr    # AddOp
         ;

term     : factor           # FactorOnly
         | factor MUL term  # MulOp
         ;

factor   : number           # NumberOnly
         | '(' expr ')'     # Parens
         ;

number   : DIGIT* DIGIT ;

// Lexer-Regeln
ADD      : '+' ;
MUL      : '*' ;
```

__Ergibt das von ANTLR generiertes Listener-Interface:__
```
public interface AdamRieseLabeledVisitor<T> extendsParseTreeVisitor<T> {
    T visitStmt(AdamRieseLabeledParser.StmtContext ctx);
    T visitTermOnly(AdamRieseLabeledParser.TermOnlyContext ctx);
    T visitAddOp(AdamRieseLabeledParser.AddOpContext ctx);
    T visitFactorOnly(AdamRieseLabeledParser.FactorOnlyContext ctx);
    T visitMulOp(AdamRieseLabeledParser.MulOpContext ctx);
    T visitNumberOnly(AdamRieseLabeledParser.NumberOnlyContext ctx);
    T visitParens(AdamRieseLabeledParser.ParensContext ctx);
    T visitNumber(AdamRieseLabeledParser.NumberContext ctx);
}
```

