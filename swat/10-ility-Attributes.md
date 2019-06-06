# illity-Attributes

## Was ist Architektur?
Requirements + -ility Attribute

## Wer definiert Requirements?
PO / Entwickler

## Wer definiert die ility-Attribute?
Staat, Kunde, Besitzer

## Was ist der Unetrschied zwischen Verification und Validation?
* __Validation:__ Build the right product
* __Verification:__ Build the product right

## Welche Informationen braucht für ein Non-Functional Requirements?
* Kontext (Welche Umgebung soll geprüft werden?)
* Begründung (Wieso braucht es dieses Requirements?)
* Wertebereich (minimal, optimal, maximal)

## Was beschreibt eine Fitness-Funktion?
Objektive Bewertung von gewissen Architektur-Charakteristiken

## Was sind Datenquellen für eine Fitness-Funktion?
* Static code analysis
* Unit test frameworks
* Penetration testing tools
* Load testing tools
* Monitoring tools
* Logging tools

## Was sind Beispiele für eine Fitness-Funktion?
* Code quality must be above 90% to be promoted to the next stage
* No secrets may be committed in plain text
* You must always have a security testing stage
* You must always have two approvers before production

## Welche Daten können als Basis für eine Fitness-Funktion dienen?
* Mean Time between Failure
* Maximum Time to Recover
* Response Time
* Latency in your network
* Resource usage

## Welche -ility Attribute gibt es?
accessibility, accountability, adaptability, administrability,
affordability, agility, auditability, availability, compatibility,
composability, configurability, credibility, customizability,
debugability, degradability, determinability, demonstrability,
deployability, discoverability, distributability, durability,
usability, extensibility, flexibility, inspectability,
installability, interoperability, maintainability, manageability,
modifiability, modularity, operability, orthogonality, portability,
precision, predictability, process capabilities, producibility,
reliability, repeatability, reproducibility, reusability,
scalability, sustainability, testability, traceability

## Was sind die wichtigsten Attribute für die Code Qualität?
* Modifiability
* Manageability
* Adaptability
* Legibility

## Wie kann die Code Qualität gemessen werden?
* statische Analyse z.B. SonarLint/SonarQube

## Was sind die wichtigsten Attribute für den Funktionsfähigkeit?
* Stability
* Resiliency
* Availability
* Recoverability

## Was sind die wichtigsten Attribute für die Leistung?
* Scalability
* Stability
* Response time
* Security

