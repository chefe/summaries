# Verteilung - Data Grid

## Was kann Hazelcast?
* Applikationen skalieren
* Daten über Cluster verteilen
* Daten partitionieren
* Nachrichten senden und empfangen
* Lasten verteilen
* parallele Tasks verarbeiten

## Wie kann mit Hazelcast auf einer verteilten Map gearbeitet werden?
```
HazelcastInstance client = Hazelcast.newHazelcastInstance();
Map<Integer, String> map = client.getMap("mymap");
map.put(1, "value");
String result = map.get(1);
```

## Wie werden Daten auf verschiedene Partitionen verteilt?
```
partitionId = hash(keyData) % PARTITION_COUNT
```

