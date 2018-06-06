# Filter und Pyramiden

## Was gilt ein Filter als separierbar?
* wenn er als Faltung zwei Filtern $M_1$ und $M_2$ geschreiben werden kann
* das heisst: $M = M_1 \star M_2 = M_2 \star M_1$

## Was ist ein Beispiel für ein separierbaren Filter?
der Mittelwertfilter: $M = \left( \begin{array}{rrr} 1/9 & 1/9 & 1/9 \\ 1/9 & 1/9 & 1/9 \\ 1/9 & 1/9 & 1/9\end{array} \right) = \left( \begin{array}{rrr} 1/3 & 1/3 & 1/3\end{array} \right) \star \left( \begin{array}{r} 1/3 \\ 1/3 \\ 1/3\end{array} \right)$

## Wie ist der Gauss-Filter definiert und was ist seine Funktion?
* $G_{\sigma} = \frac{1}{2\pi\sigma^2} e^{-\frac{(x^2 + y^2)}{2\sigma^2}}$
* ist ein Tiefpassfilter d.h. entfernt die hohen Frequenzen (z.B. in scharfen Kanten)
* kann aber auch zum Schärfen eines Bildes verwendet werden

## Wie ist der Laplace-Filter definiert?
$L = L_x + L_y = \left( \begin{array}{rrr} 0 & 0 & 0 \\ 1 & -2 & 1 \\ 0 & 0 & 0\end{array} \right) + \left( \begin{array}{rrr} 0 & 1 & 0 \\ 0 & -2 & 0 \\ 0 & 1 & 0\end{array} \right) = \left( \begin{array}{rrr} 0 & 1 & 0 \\ 1 & -4 & 1 \\ 0 & 1 & 0\end{array} \right)$

## Was ist die Gauss- und die Laplace-Pyramide?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/05A-Gauss-und-Laplace-Pyramide.png}
\end{figure}

