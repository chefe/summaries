# Bildverbesserung

## Wie kann ein unscharfes Bild korrigiert werden?
* Unscharfe Maskierung
* Wiener Filte

## Wie funktioniert die Unscharfe Maskierung?
* auch bekannt als Sharpening
* Verbesserung von unscharfen Bildern durch lokale Kontrasterhöhung
* Spezifikation des Prozesses wie aus dem ursprünglich scharfen Bild ein unscharfes Bild wurde
* Versucht diesen Prozess umzukehren

## Wie wird ein Bild unscharf?
Bild verläuft anhand der Diffusionsgleichung

## Wie ist die Diffusionsgleichung definiert?
$\frac{\partial f}{\partial t} = C(\nabla^2 f)$ und 
$\nabla^2 = \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2}$

## Wie lässt sich die Unscharfe Maskierung approximieren?
$\frac{f_b - f_0}{\Delta t} = c \nabla^2 f_b$ also $f_0 = f_b - (c \Delta t) \nabla^2 f_b$

## Wie berechnet man die Ableitungen diskret?
* $\frac{\partial f}{\partial x} \approx \frac{1}{\Delta x} (f(x + \Delta x) - f(x))$
* $\frac{\partial f}{\partial x} \approx \frac{1}{2 \Delta x} (f(x + \Delta x) - f(x - \Delta x))$
* $\frac{\partial^2 f}{\partial x^2} \approx \frac{1}{(\Delta x)^2} (f(x + \Delta x) - 2 f(x) + f(x - \Delta x))$

## Wie kann Rauschen in einem Bild unterdrückt werden?
* Median Filter
* Tiefpassfilter (Gaussian Filter, Box Filter)
* Anisotrope Diffusion

