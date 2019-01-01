# Rendering Equation

## Was bedeutet die Abkürzung BRDF?
Bidirectional Reflectance Distribution Function

## Wie ist die Rendering Equation definiert?
$L_O(x,\vec{w_r}) = L_e(x, \vec{w_r}) + L_r(x, \vec{w_r})$

## Was ist das Ziel von Radiosity?
Berücksichtigung der Farbe des reflektieren Lichtes eines Objektes

## Radiosity Konzept
* Oberflächen der Objekte werden in Patches unterteilt
* Ein Patch ist ein Polygon mit konstanter Licht Intensität
* Die Abhängigkeiten der Patches werden durch ein System von lineraren Gleichungen modelliert
* Durch Lösung der Gleichungen wird die Intensität und Farbe pro Patch berechnet

## Radiosity Gleichung
$B_i A_i = E_i A_i + \rho_i \sum_{j=1}^n B_j A_j F_{ij}$ \newline

$B_i$ Radiosity
$A_i$ Flächeninhalt des Patch $i$
$E_i$ Emission des Patch $i$
$\rho$ Reflektion
$F_{ij}$ Formfaktor

## Welche Möglichkeiten gibt es ein Gleichungssystem zu lösen?
* Jacobi Iteration
* Gauss Seidel Relaxation
* Southwell Iteration

## Was ist das Problem bei der Berechnung der Formfaktoren?
* Analytische Berechnung des Integrals geht nur in Ausnahmefällen
* Sichtbarkeit muss berechnet werden
* Lösung durch Approximationen und geometrische Interpretation

## Welche Möglichkeiten gibt es für die Berechung der Radiosity?
* Progressive Radiosity: 
    * Berechnung und frühe Darstellung einer approximativen Lösung
* Hierarchical Radiosity: 
    * Erhöhung der Anzahl Patches wo es notwendig ist

