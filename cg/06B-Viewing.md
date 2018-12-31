# Viewing

## Was sind die Eigenschaften der Parallel-Projektion?
* Geraden bleiben erhalten
* Parallelen bleiben erhalten
* Konstante Verkürzung in eine gegebene Richtung
* keine Winkeltreue

## Welche Arten von Projektionen gibt es?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06B-projektionen.png}
\end{figure}

* Paralell-Projektion
    * Spezifikation durch Ebene und Projektionsrichtung
* Orthographische Projektion
    * Rechter Winkel zwischen Projektionsebene und Projektionsrichtung
* Isometrische Projektion
    * Orthographische Projektion auf Ebene mit Normalvektor (1, 1, 1)
* Kavaliersprojektion
    * Parallelprojektion mit 45 Grad Winkel zwischen Ebene und Projektionsrichtung
    * Linien rechtwinklig zur Ebene haben natürliche Länge
* Kabinettsprojektion
    * Parallelprojektion mit 63.4 Grad zwischen Ebene und Projektionsrichtung
    * Linien rechtwinklig zur Ebene haben halbe Länge
* Perspektivische Projektion
    * Simuliert Kamera oder Auge
    * Spezifiziert durch Projektionszentrum und Projektionsebene

## Wie sieht eine Orthographische Projektion aus?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06B-orthographische-projektion.png}
\end{figure}

## Wie sieht eine Isometrische Projektion aus?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06B-isometrische-projektion.png}
\end{figure}

## Wie sieht eine Kavaliersprojektion aus?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06B-kavaliersprojektion.png}
\end{figure}

## Wie sieht eine Kabinettsprojektion aus?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06B-kabinettsprojektion.png}
\end{figure}

## Wie sieht eine Perspektivische Projektion aus?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/06B-perspektivische-projektion.png}
\end{figure}

## Was sind die Eigenschaften der Paralell-Projektion?
* Geraden bleiben erhalten
* Parallelen bleiben erhalten
* Konstante Verkürzung in eine gegebene Richtung
* keine Winkeltreu

## Was sind die Eigenschaften der perspektivischen Projektion?
* Geraden bleiben erhalten
* Parallelen schneiden sich in einem Punkt
* Objektgrösse nimmt proportional zum Abstand vom Projektionszentrum ab

## Wie kann die Kamera Position spezifiziert werden?
```
var matrix = mat4.create();
mat4.lookAt(
    matrix,
    [eyeX, eyeY, eyeZ],
    [centerX, centerY, centerZ],
    [upX, upY, upZ]
);

// Parameter beschreibung
// [eyeX,    eyeY,    eyeZ   ] Koordinaten der Kamera in Weltkoordinaten
// [centerX, centerY, centerZ] Wohin schaut die Kamera
// [upX,     upY,     upZ    ] Richtungsvektor der bei der Kamera nach oben zeigt
```

## Wie wird eine Orthographische Projektion mit WebGL implementiert?
```
var projectionMatrix = mat4.create();
mat4.ortho(projectionMatrix, left, right, bottom, top, near, far);
```

\begin{figure}[H]
    \includegraphics[width=0.4\textwidth]{images/06B-webgl-ortho.png}
\end{figure}

## Wie wird eine perspektivische Projektion mit WebGL implementiert?
**Variante 1:**

```
var projectionMatrix = mat4.create();
mat4.frustum(projectionMatrix, left, right, bottom, top, near, far);
```

\begin{figure}[H]
    \includegraphics[width=0.4\textwidth]{images/06B-webgl-frustum.png}
\end{figure}

**Variante 2:**

```
var projectionMatrix = mat4.create();
mat4.perspective(projectionMatrix, fovy, aspect, near, far);
```

\begin{figure}[H]
    \includegraphics[width=0.4\textwidth]{images/06B-webgl-perspective.png}
\end{figure}

