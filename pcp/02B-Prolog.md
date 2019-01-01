# Prolog 2

## Was sind typische Prolog-Probleme?
* Kreuzworträtsel lösen
* Karten färben
* Zahlenrätsel lösen
* Sudoku lösen
* Spracherkennung
* Expertensysteme

## Wie lässt sich mit Prolog ein Kreuzworträtsel lösen?
```
word(d,o,g).	   word(r,u,n).	      word(t,o,p).        word(u,n,i,t).
word(f,i,v,e).     word(f,o,u,r).     word(l,o,s,t).      word(m,e,s,s).     
word(b,a,k,e,r).   word(f,o,r,u,m).   word(g,r,e,e,n).    word(s,u,p,e,r).
word(p,r,o,l,o,g). word(v,a,n,i,s,h). word(w,o,n,d,e,r).  word(y,e,l,l,o,w).

solution(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15,L16) :-
	word(L1,L2,L3,L4,L5),           % Top horizontal word
	word(L9,L10,L11,L12,L13,L14),   % Second horizontal word
	word(L1,L6,L9,L15),             % First vertical word
	word(L3,L7,L11),                % Second vertical word
	word(L5,L8,L13,L16).            % Third vertical word
```

## Wie kann mit Prolog ein Programm zum Färben ein Karte realisiert werden?
```
% Possible pairs of colors of neighboring countries 
n(red, green).      n(red, blue).       n(green, red).
n(green, blue).     n(blue, red).       n(blue, green).

% Part of Europe (CH=Switzerland, A=Austria, D=Germany, N=Netherlands...)
colors(CH, A, D, I, F, B, N) :-
    CH = red,                               % Switzerland must be red
    n(CH, A), n(CH, I), n(CH, F), n(CH, D), % Allneighborsof Switerland
    n(A, D), n(A, I),                       % Allneighborsof Autria (*) 
    n(I, F),                                % Allneighborsof Italy (*)
    n(F, B),                                % Allneighborsof France (*)
    n(D, B), n(D, N),                       % Allneighborsof Germany (*)
    n(B, N).                                % Allneighborsof Belgium (*)
                                            % (*) = except those already mentioned
```

## Wie kann eine mathematische Auswertung in Prolog erzwungen werden?
```
X is 1 + 2.
```

## Was ist der Unterscheide zwischen gebundene und ungebundene Operanden?
* Symbol: -
    * bedeutet: Operand sollte ungebunden (d.h. nicht instanziiert) sein
    * d.h.: eine Variable
    * Wert wird durch Prädikat zugewiesen
* Symbol +
    * bedeutet: Operand sollte gebunden (d.h. instanziiert) sein
    * d.h. eine Zahl, ein Atom oder ein gebundener zusammengesetzter Term
    * Wert wird vom Prädikat ‚gebraucht
* Symbol: ?
    * bedeutet: Operand kann gebunden oder ungebunden sein

## Welche arithmetische Operatoren stellt Prolog zur Verfügung?
* Addition (`+`)
* Subtraktion (`-`)
* Multiplikation (`*`)
* Division (`/`)
* Potenz (`**`)
* Ganzzahldivision (`//`)
* Modulo (`mod`)

## Welche arithmetische Vergleichsoperatoren stellt Prolog zur Verfügung?
* grösser als (`>`)
* kleiner als (`<`)
* grösser-gleich (`>=`)
* kleiner-gleich (`=<`)
* Gleichheit (`=:=`)
* Ungleichheit (`=\=`)

## Was ist der Unterschied zwischen Operatoren und Prädikaten?
* Operatoren und Prädikate sind dasselbe
* es sind einfach zwei verschieden Schreibweisen

## Wie kann ein neuer Operator definiert werden?
```
?- op(1150, xfx, is_bigger).   % declare new operation
true.
?- elephant is_bigger dog.     % use our new operation
true.
```

## Was versteht man bei Prolog unter der Präzedenz von Operatoren?
* gibt an, wie stark dieser Operator seine Operanden bindet
* Tiefere Präzedenz = stärkere Bindung
* in SWI-Prolog wird die Präzedenz als Wert zwischen 1 und 1200 angegeben

## Welche drei Gruppen von Operator Typen gibt es?
* __Infix:__ xfx, xfy, yfx
    * d.h. Operator f zwischen den beiden Operanden
* __Präfix:__ fx, fy
    * d.h. Operator f vor dem Operand
* __Postfix:__ xf, yf
    * d.h. Operator f nach dem Operand

## Was ist der Unterschied zwischen yfx und xfy?
* yfx = linkassoziativ
* xfy = rechtsassoziativ

## Wie wird in Prolog eine rekursive Funktion definiert?
```
fak(0, 1).        % simplecase
fak(N, F) :-      % generalcase
    N > 0,        % argument test
    N1 is N –1,   % evaluate N-1
    fak(N1, F1),  % recursive call
    F is N * F1.  % sum up 
```

