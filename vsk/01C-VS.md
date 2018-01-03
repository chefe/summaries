# Socket Kommunikation

## Welche Schichten werden bei der Internet-Kommunikation verwendet?
* Applikationsschicht (application layer)
    * HTTP, XMPP, SMTP, FTP, DNS
* Transportschicht (transport layer)
    * Transmission Control Protocol (TCP), User Datagram Protocol (UDP)
* Internetschicht (internet layer)
    * Internet Protocol (IP)
* Netzwerkschicht (network layer)
    * Ethernet, WLAN, ...

## Was bedeuten die Abkürzungen TCp und UDP?
* Transmission Control Protocol
* User Datagram Protocol

## Welche Klassen stehen in Java zur Netzwerkprogrammierung zur Verfügung?
* InetAddress
* Socket
* ServerSocket
* SocketAddress

## Welche Methoden bietet die Klasse InetAdress?
* `static InetAddress getByName(String host)`
* `String getHostName()`
* `String getHostAddress()`
* `String getCanonicalHostName()`
* `boolean isReachable(int msec)`
* `String getLocalHost()`
* `boolean isSiteLocalAddress()`

## Wie wird in Java ein TCP Client geschrieben?
```
public class WhoIsThis {
    private static final Logger LOG = LogManager.getLogger(WhoIsThis.class);
    public static void main(final String[] args) {
        final String host = "whois.nic.ch";
        try (Socket client = new Socket(host, 43)) {
            final PrintWriter outStream = new PrintWriter(
                client.getOutputStream());
            final BufferedReader inStream = new BufferedReader(
                new InputStreamReader(client.getInputStream()));
            outStream.println("hslu.ch");
            outStream.flush();
            String line;
            while ((line = inStream.readLine()) != null) {
                LOG.info(line);
            }
        } catch (Exception e) {
            LOG.debug(e.getMessage());
        }
    }
}
```

## Wie wird in Java ein TCP Server geschrieben?
```
public class EchoServer {
    private static final Logger LOG = LogManager.getLogger(EchoServer.class);
    public static void main(final String[] args) throws IOException {
        final ServerSocket listen = new ServerSocket(7777);
        final ExecutorService executor = Executors.newFixedThreadPool(5);
        while (true) {
            try {
                LOG.info("Waiting for connection...");
                final Socket client = listen.accept();
                final EchoHandler handler = new EchoHandler(client);
                executor.execute(handler);
            } catch (Exception ex) {
                LOG.debug(ex.getMessage());
            }
        }
    }
}

public class EchoHandler implements Runnable {
    private static final Logger LOG =
        LogManager.getLogger(EchoHandler.class);
    private final Socket client;

    public EchoHandler(final Socket client) {
        this.client = client;
    }

    @Override
    public void run() {
        LOG.info("Connection to " + client);
        try (OutputStream out = client.getOutputStream();
            InputStream in = client.getInputStream()) 
        {
            int data = in.read();
            while (data != -1) {
                out.write(data);
                System.out.print((char) data);
                data = in.read();
            }
            out.flush();
        } catch (IOException ex) {
            LOG.debug(ex.getMessage());
        }
    }
}
```

## Was sind die Schritte im Lebenszyklus eines TCP Servers?
1. Server-Socket erzeugen
2. Mit `accept`-Methode auf Verbindung warten
3. Ein- und Ausgabestrom mit erhaltenem Socket verknüpfen
4. Daten lesen und schreiben, entsprechend dem vereinbarten Protokoll
5. Stream von Client und Socket schliessen
6. Bei Schritt 2 weitermachen oder Server-Socket schliessen

