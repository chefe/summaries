# Kompression I

## Welche zwei Kompressionarten werden unterschieden?
* verlustfreie Kompression 
    * RLE, LZ77, LZW, Huffman, Arithmetische, ...
* verlustbehaftete Kompression 
    * DCT (MP3, JPEG, MPEG), Wavelets (JPEG2000), ...

## Was ist die DCT?
* ist die englische Abkürzung für Diskrete Cosinus Transformation
* ist einverlustfreies Kompressionsverfahren
* Analog zur Fourier-Transformation: aber nur mit reellen Zahlen
* Verwendung in JPEG, MPEG2, zur Daten- und Bildkompression, etc.

## Wie wird die 1D DCT berechnet?
* __Gegeben:__ Signal mit $N$ Abtastwerte $x = [x_0, x_1, \dots, x_{N-1}]^T$
* Zerlegung in Kosinus-Schwingungen: $y_n = c_n \displaystyle\sum_{k=0}^{N-1} cos(\frac{\pi n (2k + 1)}{2N}) x_k, n = 0, 1, \dots, N-1$
* wobei $c_0 = \frac{1}{\sqrt{N}}, c_n = \sqrt{\frac{2}{N}}$ für $n = 1, 2, \dots, N-1$

## Wie wird die 2D DCT berechnet?
* $y_{nm} = c_n c_m \displaystyle\sum_{i=0}^{N-1} \displaystyle\sum_{j=0}^{N-1} cos(\frac{\pi n (2i + 1)}{2N}) cos(\frac{\pi m (2j + 1)}{2N}) x_{ij}$
* wobei $c_0 = \frac{1}{\sqrt{N}}, c_n = \sqrt{\frac{2}{N}}$ für $n = 1, 2, \dots, N-1$

## Wie werden Farben von RGB in YCbCr umgewandelt?
$\left[\begin{array}{r}Y \\ Cb \\ Cr\end{array}\right] = \left[\begin{array}{rrr}0.301 & 0.586 & 0.113 \\-0.172 & -0.340 & 0.512 \\0.512 & -0.430 & -0.082\end{array}\right] \left[\begin{array}{r}R \\ G \\ B\end{array}\right] + \left[\begin{array}{r}0 \\ 128 \\ 128\end{array}\right]$

$\\ \left[\begin{array}{r}R \\ G \\ B\end{array}\right] = \left[\begin{array}{rrr}1 & 0 & 1.371 \\ 1 & -0.336 & -0.698 \\ 1 & 1.732 & 0\end{array}\right] \left[\begin{array}{r}Y \\ Cb-128 \\ Cr-128\end{array}\right]$

## Welche Schritte werden bei der  JPEG-Kompression angewandt?
1. __Level-shift__ $([0, 255] \rightarrow [-128, 127])$
2. __Subsampling__ von Cb, Cr (Farbeinfo für je 4 Pixel), z.B. 4:2:0
3. __2D-DCT__ für jeden 8x8 Block
4. __Quantisierung__ jedes 8x8 Blocks mit der Quantisierungsmatrix $Q$
5. __Sequenzielle Differenz__ der DC Anteile wird mittels vordefinierter Huffman Tabellen codiert
6. __Zig-Zag__-Verarbeitung der AC-Komponenten und Huffman Codierung
7. __Progressive Mode:__ niedrige Frequenzen zuerst, schrittweise Approximation
8. __Hierarchical Mode:__ Subsample, Encode, Decode, Interpolate
9. __Marker Codes__ um z.B. Frame-Header, etc. einzubetten

