# Kryptotologie

## Was ist das Ziel der Kryptologie?
Umwandlung einer Nachricht (Klartext) mit Hilfe eines Verfahrens
(Krypto-Algorithmus) und eines Geheimnisses (Schlüssel) in eine
scheinbar sinnlose Zeichenfolge (Geheimtext), die mit Hilfe des
Schlüssels und des Umkehrverfahrens wieder in den Klartext
umwandelbar ist

## Was sind alte Verschlüsselungsverfahren?
* Skytale - Stab wird mit Streifen umwickelt und dann beschrieben
* Caesar - Verschiebung der Zeichen im Alphabet
* Freimaurer - Abbildung von Zeichen in grafische Symbole

## Was sind die Schwächen der meisten Algorithmen?
* Buchstaben-Häufigkeit
* Anzahl Möglichkeiten für das Geheimnis

## Was besagt das Kerckhoffsche Prinzip?
Die Sicherheit eines Verschlüsselungsverfahrens soll auf der
Geheimhaltung des Schlüssels und nicht auf der Geheimhaltung des
Verschlüsselungsalgorithmus beruhen.

## Was ist der Vorteil von polyalphabetische Substitution?
* ist nicht immun gegen Häufigkeitsanalysen
* braucht viel mehr Textvergeleiche um Schlüssel zu ermitteln
* Wenn der Schlüssel häufig wechselt sind nur wenige Textvergleiche möglich

## Was ist das besondere an One Time Pad?
* darf nur einmal verwendet werden
* ist theoretisch unknackbar

## Was versteht man unter Permutationschiffren?
* Buchstaben ersetzen, statt ihre Reihenfolge vertauschen
* Vertauschungsregel als Passwort merken

## Was versteht man unter Kryptologie?
Sie umfasst das Studium von Methoden und Techniken, um
Informationen aus verschlüsselten Texten zu gewinnen oder
Informationen in verschlüsselten Texten zu verstecken.

Kryptologie = Kryptographie + Kryptoanlyse

## Was gibt es für Arten der Kryptoanalyse?
* Brute-Force (Durchprobieren)
* Ciphertext-Only (Nur verschlüsselter Text, Buchstabenhäufigkeit)
* Known-Plaintext (Nur Teilübersetzung verfügbar)
* Chosen-Plaintext (Klartext kann teilweise übersetzt werden)
* Chosen-Cipher (Kann wieder in plain umgewandelt werden)

## Was ist eine Hashfunktion?
* berechnet aus Binärdaten eine kondensierte Darstellung
* zur Charakterisierung einer Nachricht oder Datei
* basiert auf mathematischen Einwegfunktionen
* eine Art "Fingerabdruck" von gewissen Daten

## Was sind die Anforderungen an eine Hashfunktion?
* Es soll praktisch unmöglich sein
    * zu einem gegebenen Hashwert ein passendes Dokument zu finden
    * zwei Dokumente zu finden, welche den gleichen Hashwert liefern

## Was sind typische Verwendungen von Hashes?
* Integrität einer Nachricht mit MAC (Message Authentication Codes)
* Erzeugen von Einmalwerten für Authentisierungsprotokolle
* Verifikation der Unversehrtheit einer Datei

## Was ist eine Blockchiffren?
* Nachrichten werden in Blöcken fixer Länge aufgeteilt
* Diese Blöcke werden dann nacheinander verschlüsselt
* Fehler sind immer nur innerhalb eines Blockes möglich

## Was ist eine Stromchiffren?
* sind nicht knackbar, da der Schlüssel beliebig lang und unberechenbar ist
* das grösster Problem ist das der Empfänger den Schlüssel bekommen muss
* der Schlüssel muss von einem guten Zufallszahlengenerator kommen
* ein Bit nach dem anderen wir verschlüsselt

