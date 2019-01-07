# Beleuchtung und Schattierung

## Welche Materialeigenschaften haben Einfluss auf die Farbe eines Objektes?
* Struktur / Textur / Oberfläche
* Spiegelung / Lichtbrechnung
* Glanz / Matt
* Transparenz
* Farbe

## Wie funktioniert das Standardbeleuchtungsmodell?
* üblicherweise wird ein vereinfachtes Beleuchtungsmodell verwendet
* da ein physikalisch korrektes Beleuchtungsmodell relativ aufwendig zu berechnen ist
* Das Modell simuliert diffuse und spiegelnde Reflektion
* Raytracing und Radiosity werden für aufwendigere  Beleuchtungsmodelle verwendet

## Wie funktioniert eine diffuse Reflektion (Lambert Modell)?
* gleichmässige Abstrahlung des Lichts in alle Richtungen
* Eigenschaften eines matten, nicht glänzenden Materials

## Wie verändert sich die Energie auf eine Fläche, abhängig vom Winkel?
die Energie ist proportional zum Cosinus zwischen Lichtrichtung und Flächennormalen

## Wie wird die diffusen Reflektion berechnet?
$I_d = I_L * k_d * cos \phi$ mit $cos \phi = \vec{N} * \vec{L}$

* $N$ die Flächennormale
* $L$ die Richtung zur Lichtquelle
* $I_d$ die reflektierte Intensität
* $I_L$ die Intensität der Lichtquelle
* $k_d$ eine Reflexionskonstante _($\Rightarrow$ siehe ein paar Fragen weiter)_

## Wie funktioniert eine spiegelnde Reflektion (Phong Modell)?
* Simulation der Spiegelung auf glänzenden Oberflächen, wie Plastik, Metall oder lackiertes Holz
* die Intensität des Lichts nimmt mit $cos^n \phi$ ab,
    \newline wobei $\phi$ der Winkel zwischen der idealen Reflektionsrichtung und der betrachteten Richtung ist

## Wie wird die spiegelnde Reflektion berechnet?
$I_s = I_L * k_s * cos^n \phi$

* $n$ steuert wie scharf die Abbildung ist (je grösser desto schärfer)
* $k_s$ eine Reflexionskonstante _($\Rightarrow$ siehe ein paar Fragen weiter)_

## Wie setzt sich ein Spiegelungsmodell meistens zusammen?
* einen spiegelnde (Lambert) Teil - Bsp. 30%
* einen diffusen (Phong) Teil - Bsp. 50%

## Wie setzt sich die Farbe der Reflexion zusammen?
* die Reflektionskonstanten $k_d$ und $k_s$ hängen von der Wellenlänge ab
* im einfachen Modell werden sie durch Konstanten für die Farben rot, grün und blau bestimmt

## Wie könntent die Reflexionskonstanten für ein rote Kugel und ein weisses Licht sein?
* $k_d = (0.7, 0.0, 0.0)$
* $k_s = (0.3, 0.3, 0.3)$
* $L = (1.0, 1.0, 1.0)$

## Wie wird die Abschwächung des Lichts gehandhabt?
* die Energie des Lichts nimmt mit dem Quadrat des Abstands ab,
    \newline dadurch werden die Objekte allerdings schnell zu dunkel
* häufig findet deshalb das folgende, flexiblere Modell Verwendung
    $\newline f_{Att} = \dfrac{1}{c_1 + c_2 d + c_3 d^2}$

## Welche Arten von Lichtquellen gibt es?
\begin{figure}[H]
    \includegraphics[width=\textwidth]{images/08B-lichtquellen.png}
\end{figure}

## Was ist eine Schattierung?
bestimmt an welchen Orten die Beleuchtung berechnet wird

## Welche Arten Schattierung unterscheidet man?
* Konstante Schattierung
    * pro Polygon wird nur eine Farbe berechnet
    * Eignet sich nicht für gekrümmte Objekte
* Gouraud Schattierung
    * Berechnung der Farbe an jedem Eckpunkt des Polygons
    * Lineare Interpolation der Farbe im Innern des Polygons
* Phong Schattierung
    * Interpolation des Normalenvektors im Innern des Polygons
    * Beleuchtungsberechnung für jeden Pixel

\begin{figure}[H]
    \includegraphics[width=0.8\textwidth]{images/08B-schattierungen.png}
\end{figure}

