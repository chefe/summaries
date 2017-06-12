# Reguläre Sprachen und endliche Automaten

## Was ist die Motivation hinter regulären Sprachen?
* anschaulich
* umsetzungsnahe (Wortproblem, Mustersuche)
* unterstützend durch Tools

## Was ist ein Endliche Automaten (EA)?
* Präzisierung des Automaten
* Zustände Z
    * endliche Anzahl
    * expliziter Startzustand
    * explizite Endzustände
* Eingaben E
    * endliches Eingabealphabet
* Typen
    * deterministischer endlicher Automat (DEA)
    * nichtdeterministischer endlicher Automat (NEA

## Was ist ein Deterministischer endlicher Automat (DEA)?
* Beschreibung als 5-Tuple
* Folgezustand ist eindeutig

## Was ist ein Nichtdeterministischer endlicher Automat (NEA)?
* mehrere Folgezustände sind möglich
* Folgezustände können quasi gleichzeitig eingenommen werden

## Was sind die wichtige Eigenschaften von DEA und NEA?
* DEA kann in NEA überführt werden und auch umgekehrt
* DEA und NEA sind gleich mächtig bzw. gleich ausdrucksstark!

## Was sind die Vor- und Nachtile von DEA und NEA?
* DEA
    * sind einfacher und effizienter zu programmieren
    * erfordern für das Lösen des Wortproblems kein Backtracking
* NEA
    * sind leichter zu konstruieren
    * benötigen weniger Zustände

