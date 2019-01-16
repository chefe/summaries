# Java 3

## Wie können mehrerer Strings aneinander gehängt werden?
```
String message = String.join("-", "Java", "is", "cool");
// message returned is: "Java-is-cool"
```

## Wie wird die Klasse `StringJoiner` angewendet?
```
StringJoiner sj = new StringJoiner(":", "[", "]");
sj.add("George").add("Sally").add("Fred");
String desiredString = sj.toString();
// string returned: [George:Sally:Fred]
```

## Welche Bequemlichkeits-Funktionalität bietet das `Comparator`-Interface?
* `naturalOrder`
* `reversed`
* `reverseOrder`
* `thenComparing`
* `nullsLast`
* `nullsFirst`

## Wie werden CompletableFuture angewendet?
```
public void doBlockingWait(long waitingTimeMillis) {
    try {
        Thread.sleep(waitingTimeMillis);
    } catch (InterruptedException ie) {
        // nop.
    }
}

private void doCompletableFutureDemo() {
    final CompletableFuture<String> f1 = CompletableFuture.supplyAsync(() -> {
        doBlockingWait(3000);
        System.out.print("1");
        return "42";
    });

    final CompletableFuture<String> f2 = f1.thenApplyAsync((String s) -> {
        doBlockingWait(3000);
        System.out.print("2");
        return "The answer is " + s;
    });

    f2.thenAcceptAsync((String s) -> {
        doBlockingWait(3000);
        System.out.print(s);
    });

    System.out.println("-> Now waiting for things to happen!");
    for (int i = 0; i < 20; i++) {
        System.out.print(".");
        doBlockingWait(500);
    }
    System.out.println();
    System.out.println("-> Done.");
}
```

