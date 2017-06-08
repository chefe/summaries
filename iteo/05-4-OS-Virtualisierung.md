# OS Virtualisierung

## Was versteht man unter einem Container?
* wird im Linux Container genannte
* wird auf Solaris Zone genannt
* Container verwenden den Kernel vom Host OS
* verwendet keinen Hypervisor
* braucht nur ganz wenig zusätzliche Prozessorzyklen

## Was kann die OS Virtualisierung?
* Stellt eine feingranulare Kontrolle zur Verfügung
* Erlaubt die Isolation von Applikationen
* Transparente Migrationen von Applikationen möglich
* Im Gegensatz zum Hypervisor der nur ganze OS Instanzen migriert

## Was kann die OS Virtualisierung nicht?
* Keine fremden OS möglich
* Zonen müssen auf dem selben Patch Level laufe
* Anforderungen an SysAdmin steigern
* Ressource Management muss eingeschaltete sein

## Welche OS beherrschen OS Virtualisierung?
* BSD (Jails)
* Solaris (Zonen)
* Linux (Container, LXC)
* Microsoft (Container seit Server 2016)

## Welche 3 Erweiterungen braucht Linux für die Unterstützung von Container?
* Filesystemgrenzen für Prozesse (`chroot`)
* Ressourcen sharing zwischen Prozess Gruppen (`cgroups`)
* Namespaces (`ns`)

## Was ist Docker?
* Ist keine OS virtualisierung
* verwendet LXC (Linux Container) für die Virtualisierung

