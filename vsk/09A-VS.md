# Remote Methode Invocation

## Wie funktioniert RMi prinzipell?
* in einem Remote-Interface werden eine oder mehrere Methoden definiert
* welche als Dienste zur Verfügung stehen sollen
* eine Server-Klasse implementiert das Interface 
* davon können mehrere Instanzen erzeugt werden 
* diese Instanzen werden als Remote-Objekte bezeichnet
* die Remote-Objekte werden bei einem Namens-Service registriert
* und können von potentiellen Clients abgefragt werden
* die Clients beschaffen mit Hilfe des Namens-Service die Remote-Referenzen
* auf den Referenzen können dann die gewünschten Dienste aufgerufen werden

## Wie wird in Java ein RMI-Interface implementiert?
```
public interface RemoteFibonacci extends Remote {
    public BigInteger calc(int value) throws RemoteException;
}
```

## Wie wird in Java ein RMI-Interface-Implementation geschrieben?
```
public class FibonacciImpl extends UnicastRemoteObject implements RemoteFibonacci {
	@Override
	public BigInteger calc(int value) throws RemoteException {
		return FibonacciCalculator.getFibonacci(
			new BigInteger(Integer.toString(value)));
	}
}
```

## Wie wird in Java ein RMI-Server implementiert?
```
public class FibonacciServer {
	public static void main(String[] args) {
        try {
			final FibonacciImpl fibo = new FibonacciImpl();
            LocateRegistry.createRegistry(Registry.REGISTRY_PORT).rebind("Fibo", fibo);
        } catch (RemoteException e) {
            System.out.println("Failed to start rmi server");
        }
	}
}
```

## Wie wird in Java ein RMI-Client implementiert?
```
public class FibonacciClient {
	public static void main(final String[] args) {
		try {
			final int value = 123;
			final String url = "rmi://localhost:1099/Fibo";
			final RemoteFibonacci fibo = (RemoteFibonacci)Naming.lookup(url);
			BigInteger result = fibo.calc(value);
		} catch (NotBoundException | MalformedURLException | RemoteException e) {
            System.out.println("Failed to calculate fibonacci");
		}
	}
}
```

