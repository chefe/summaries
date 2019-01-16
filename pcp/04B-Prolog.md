# Prolog 6

## Wie kann mit Prolog ein Sudoku gelöst werden?
```
:- use_module(library(clpfd)).
sudoku(Rows) :-
    append(Rows, Vs), Vs ins 1..9,  % nur Zahlen von 1 bis 9 möglich
    maplist(all_distinct, Rows),    % Zeilen paarweise verschieden
    transpose(Rows, Columns),
    maplist(all_distinct, Columns), % Spalten paarweise verschieden
    Rows = [A, B, C, D, E, F, G, H, I],
    blocks(A, B, C), blocks(D, E, F), blocks(G, H, I),
    maplist(label, Rows).

blocks([], [], []).
blocks([A, B, C|Bs1], [D, E, F|Bs2], [G, H, I|Bs3]) :-
    all_distinct([A, B, C, D, E, F, G, H, I]),
    blocks(Bs1, Bs2, Bs3).

?- Puzzle = [
    [5, 3, _, _, 7, _, _, _, _],
    [6, _, _, 1, 9, 5, _, _, _],
    [_, 9, 8, _, _, _, _, 6, _],
    [8, _, _, _, 6, _, _, _, 3],
    [4, _, _, 8, _, 3, _, _, 1],
    [7, _, _, _, 2, _, _, _, 6],
    [_, 6, _, _, _, _, 2, 8, _],
    [_, _, _, 4, 1, 9, _, _, _],
    [_, _, _, _, 8, _, _, 7, 9]
    ],
    Puzzle = [A, B, C, D, E, F, G, H, I],
    sudoku([A, B, C, D, E, F, G, H, I]).
```

## Wie kann mit Prolog ein GET-Request gemacht werden?
```
?- use_module(library(http/http_client)).
?- http_get('http://wherever.ch/test.txt', Response, []).
Response = 'Foo Bar'.
```

## Wie kann mit Prolog ein POST-Request gemacht werden?
```
?- use_module(library(http/http_client)).
?- use_module(library(http/http_json)).
?- http_post('http://localhost:16316/test',json(['data']),Response,[]).
Response = 'Foo Bar'.
```

## Wie können in Prolog beliebige Prädikate aufgerufen werden?
```
?- call(is_bigger, horse, X).
X = dog
X = sheep
```

## Wie kann ein Prädikate auf eine Listen angewendet werden?
```
?- maplist(sqrt, [4, 9, 16], X).
X = [2.0, 3.0, 4.0].
```

