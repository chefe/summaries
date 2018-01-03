# Versionskontrollsysteme

## Was ist ein Versionskontrollsystem (SCM)?
* hält die zeitliche Entwicklung von Artefakten fest
* erlaubt jederzeit einen Rückgriff auf alte Änderungsstände
* für konkurrenzierende Zugriffe und Modifikationen ausgelegt
* automatisiertes Merging bei Konflikten (soweit möglich)
* zentral oder verteilt einsetzbar
* keine Backupsysteme

## Wie arbeitet man mit einem SCM?
* `checkout`
    * von einem Projekt eine lokale Arbeitskopie erstellen
    * auf dieser Kopie wird dann gearbeitet
* `update`
    * Änderungen Dritter in die Arbeitskopie aktualisieren
    * periodisch oder nach Bedarf, aber unbedingt vor einem Commit
* `log`
    * Bearbeitungsgeschichte eines Artefaktes ansehen
    * Wer hat wann und warum welche Artefakte geändert?
* `diff`
    * verschiedene Revisionen miteinander vergleichen
    * Fremde oder eigene Änderungen nachvollziehen
* `commit`
    * Artefakte in das Repository schreiben (auch: checkin)
    * lokale Veränderungen in das Repository zurückschreiben
    * damit werden Änderungen für Dritte bei einem `update` sichtbar

## Was versteht man unter Tagging und Branching?
* Tag
    * markieren eines bestimmten Revisionsstandes mit einem Namen
    * sehr nützlich bei einem Release eines Produktes
* Branch
    * voneinander getrennte Entwicklungszweige
    * für Bugfixing, Prototypen, ...

## Was verwaltet man in einem SCM?
* Ausschliesslich Quell-Artefakte (`*.java, *.c, ...`)
* aber keine Artefakte die generiert bzw. erzeugt werden können

## Was gibt es für unterschiedliche Konzepte?
* zentrale oder verteilte Systeme
* optimistische und pessimistische Lockverfahren
* Versionierung von einer Datei, der Verzeichnisstruktur oder der Änderung
* Transaktionsunterstützung oder nicht
* verschiedene Zugriffsprotokolle und Sicherheitsmechanismen

## Wie heissen drei bekannte SCM und was sind ihere Eigenschaften?
* CVS
    * uraltes Versionskontrollsystem
    * sehr robust und stabil
    * benötigt einen zentraler Server
    * unterstützt keine Transaktionen
* Subversion
    * wurde als CVS-Nachfolger eingeführt
    * benötigt ebenfalls einen zentralen Server
    * Versioniert die ganze Verzeichnisstruktur
    * erlaubt Transaktionen
* git
    * entwickelt von Linus Torvalds, sehr flexibles Konzept
    * ausgelegt für massives, billiges Branching
    * verteiltes System, welches aber auch rein lokal eingesetzt werden kann
    * erfordert bei verteiltem Einsatz ein solides Konzept

