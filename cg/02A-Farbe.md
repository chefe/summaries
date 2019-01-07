# Farbe, Halbtontechnik

## Welche Verfahren gibt es in der Halbtontechnik?
* Quantisierung
* Dithering
* Error Diffusion

## Was bedeutet der Begriff Quantisierung?
* Rundung auf die verfügbaren Farben
* nur möglich, falls noch genügend Farben zur Verfügung stehen

## Was bedeutet der Begriff Dithering?
* Drucker haben eine grössere Auflösung
* können aber weniger Farbstufen darstellen als der Bildschirm
* mittels Dithering werden Farben mit Auflösung simuliert

## Was versteht man unter dem Begriff Halbtontechnik?
* Grautöne werden durch schwarze Kreise auf weissem Hintergrund simuliert
* Anteil der schwarzen und weissen Flächen entspricht dem Grauwert

## Wie funktioniert die digitale Halbtontechnik?
* Ersetzen eines Grauwertpixels durch eine Pixelmatrix mit fester Grösse
* Je nach Grauwert sind verschieden viele Pixel gesetzt
* Weniger Farben werden benötigt, das Bild wird jedoch grösser

## Wie kann eine Dithermatrix aussehen?
```
2x2     3x3         4x4
---    -----    -----------
0 2    6 8 4     0  8  2 10
3 1    1 0 3    12  4 14  6
       5 2 7     3 11  1  9
                15  7 13  5
```

## Was sind die Regeln für Dithering?
* einmal gesetzte Pixel bleiben gesetzt
* Strukturen sollen vermieden werden
* es soll möglichst ein Kreis approximiert werden

## Wie kann Dithering benutzt werden, wenn die Auflösung gleich bleiben soll?
* Berechnen des Mittelwert einer $n \times n$ Region
* Ersetzen der Region durch die Dithermatrix $\Rightarrow$ Clustered dot dithering
* Vergleich der einzelnen Pixel mit den Werten der Dithermatrix $\Rightarrow$ Dispersed dot dithering

## Wie wird Dispersed Dot Dithering berechnet?
Beispiel für eine $2 \times 2$ Dithermatrix:

```
i = x modulo n
j = y module n

der Pixel (x,y) wird gesetzt, falls I(x,y) > Dij

Dij = [ 0 2
        3 1 ]

I_neu = I_alt * 5 / 256

I_alt = [ 255 200 150 100 080     I_neu = [ 4 3 2 1 1
          200 150 100 080 040 ]             3 2 1 1 0 ]
```

## Was ist die Idee hinter Error Diffusion?
* Anstatt Kreise verschiedener Grösse, können auch Punkte verschieden dicht angeordnet werden
* Fehler durch das Setzen eines Pixels wird auf die umliegenden Pixel verteilt
* Bild wird sequentiell von oben nach unten und von links nach rechts durchlaufen
* Fehler wird anhand der folgenden Gewichte auf die noch nicht besuchten Pixel verteilt

```
Gewichtung = [ ---- xxxx 7/16
               1/16 5/16 3/16 ]
```

## Wie wird die Error Diffusion berechnet?
Beispiel für 2 gültige Farben (255 & 0):

```
Z1 = [                 Z2 = [                 Z3 = [
    xxx 191 140 113        xxx 255 112 113        xxx xxx 000 162
    244 221 105 100        240 201 093 100        240 208 128 121
]                      ]                      ]
```

## Wie viele Intensitätsstufen können mit einer Dithermatrix dargestellt werden?
* $2 \times 2$ Dithermatrix $\Rightarrow$ 5 Stufen
* $3 \times 3$ Dithermatrix $\Rightarrow$ 10 Stufen
* $4 \times 4$ Dithermatrix $\Rightarrow$ 17 Stufen

## Wie wird eine RGB Farbe in einen Grauwert umgerechnet?
`Grauwert = 0.299 * R + 0.587 * G + 0.114 * B`

