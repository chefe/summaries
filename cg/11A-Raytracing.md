# Raytracing

## Für was wird Raytracing gebracuht?
* Erzeugung von photorealistischen Bildern
* Berücksichtigung von Spiegelung und Transparenz
* Pro Pixel wird ein Strahl gelegt und das Objekt ermittelt, das zuerst geschnitten wird
* Weitere Strahlen werden verwendet um zusätzliche Effekte zu erzielen
    * Spiegelung, Transparenz, Schatten, Umgebungslichtes

## Wie funktioniert ein einfacher Raytracing Algorithmus?
```
for alle Pixel do
    Ermittle Strahl durch Pixel
    for alle Objekte do
        Berechne Schnittpunkte mit Strahl
        if Schnittpunkt am nächsten then
            Speichere Schnittpunktinformation
        end
    end
    if Schnittpunkt gefunden then
        Berechne Farbe
    end
end
```
