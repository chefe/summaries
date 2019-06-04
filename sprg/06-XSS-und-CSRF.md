# XSS und CSRF

## Was welchen Informationen setzt sich ein HTTP-Request zusammen?
* Protokoll (z.B. `https`)
* Adresse (z.B. `10.3.4.5:8080`)
* Pfad (z.B. `index.php`)
* Query-Parameters (z.B. `foo=bar&baz=baz`)
* Methode (GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS)
* Headers (cookie, agent, content-type, ...)
* Request-Body (html, css, js, json, ...)

## Was ist CSRF?
* Cross Site Request Forgery
* Daten von einer manipulierten Seite an den Server schicken
* funktioniert weil Cookie mitgeschickt wird

## Wie kann CSRF verhindert werden?
* samesite-Attribut auf Cookies verwenden
* versteckten CSRF-Token für Formulare verwenden
* Token wird automatisch generiert und bei Anfrage überprüft

## Was ist XSS?
* Cross Site Scripting
* Code in die Seite eines Nutzers einfügen z.B. mit JS
* erlaubt das stehten der User-Session
* ermöglicht JS-Keylogger
* ermöglicht es Dateien herunterzuladen

## Welche Arten von XSS gibt es?
* Reflected XSS
    * gefährliches JS hat Einfluss auf Response
* Persisten Or Stored XSS
    * gefährliches JS wird aus dem Speicher gelesen
    * wird später im Browser ausgeführt
* Source-Based XSS
    * gefährliches JS wird auf dem Server eingefügt
* DOM-Based XSS
    * JS wird durch DOM-Manipulation auf dem Client eingefügt

## Wie können XSS-Attacken erschwert werden?
* Validieren, encodieren und bereinigen von Eingaben
* Ausgabe escapen (durch Framework)
* Content-Security-Policy

