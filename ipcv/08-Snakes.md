# Snakes

## Was sind Snakes?
* sind verformbare Kurven
* werden von Objektgrenzen angezogen
* werden für Bildsegmentierung, Formerkennung, Abgleich von Stereobildern, etc. verwendet
* arbeiten lokal, ausgehend von vorgebenener Anfangsposition

## Welche zwei Arten von Kräfte wirken auf eine Snake?
* internen Kräften:
    * sie halten die Snake zusammen (elastische Kräfte) und verhindern eine zu starke Biegung
* externen Kräften:
    * sie zwingen die Kurve in Richtung der Kanten
    * werden von den Bilddaten abgeleitet (geeignete Potentiale)

## Wie sollten diese beiden Kräfte sein?
* so, dass das Resultat unabhängig von der Ausgangs-Snake ist
* und die Snake auch in konkave Gebiete eindringen kann

## Wie sollt sich die Energie einer Snake verändern?
* physikalische Vorgänge laufen so ab, dass die Gesamtenergie minimiert wird
* die Lage der gesuchten Snake soll eine geeignete Gesamtenergie minimieren

## Wie wird die Energie einer Snake mathematisch dargestellt?
* es gilt: $E(x(s,t)) = E_{int}(x(s,t)) + E_{img}(x(s,t))$
* wobei $E_{int}(x(s,t))$ die Deformationsenergie (internal energy) der Snake ist
* und $E_{img}(x(s,t))$ die potentielle Energie (image oder external energy) abhängig vom Bild

## Wie ist die Deformationsenergie definiert?
* es gilt: $E_{int}(x(s,t)) = \int_0^1 \frac{\alpha (s)}{2} |\frac{\partial x(s,t)}{\partial s}|^2 ds + \int_0^1 \frac{\beta (s)}{2} |\frac{\partial^2 x(s,t)}{\partial s^2}|^2 ds$
* Deformationsenergie = Spannungsenergie (erster Term) + Steifigkeitsenergie (zweiter Term)
* $\alpha$ = Materialparameter für Dehnung, $\beta$ = Materialparameter für Steifigkeit

## Wie ist die potentielle Energie definiert?
* $E_{img}(x(s,t)) = \int_0^1 P(x(s,t)) ds$ und $P(x,y) = -| \nabla ((G_{\sigma} \star I)(x,y))|^2$
* wobei $G_{\sigma}$ die $\sigma$-Gauss'sche Glättungsfunktion ist

## Wie ist die Gleichung zur Minimierung des Energiefunktionals definiert?
$E = \int dt \int_0^1 ds (\frac{\alpha (s)}{2} | \frac{\partial x(s,t)}{\partial s} |^2 + \frac{\beta (s)}{2} | \frac{\partial^2 x(s,t)}{\partial s^2} |^2 + (x(s,t)))$

## Wie funktionert der Gradienten Vektor-Fluss?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/08A-GVF.png}
\end{figure}

## Was sind die Vor- und Nachteile von Snakes?
* Vorteile:
    * verwendet alle Informationen des Bildes
    * Kontour bleibt zu allen Zeiten zusammenhängend (kein auffüllen von Löchern)
    * detektiert nicht Objekte, deren Rand Lücken aufweist
    * gut für die Verfolgung von nicht-festen Objekten
* Nachteile:
    * braucht eine glatte Potentialfläche
    * benötigt eine nahe bei der Lösung liegende Startlösung
    * benötigt Kenntnisse der Parameter $\alpha$ und $\beta$

