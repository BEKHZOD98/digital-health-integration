Profile: ObservationMGR
Parent: UZCoreObservation
Id: observation-mgr
Title: "Observation Molecular Genetic Research"
Description: "Observation profile for molecular genetic testing used to identify variants of genetic disorders."

* ^experimental = true
* ^status = #active

* identifier MS

* code MS
* code from NameTestsVS (required)


* subject MS
* subject only Reference(UZCorePatient)

* focus MS
* focus only Reference(UZCoreCondition)

* effectiveDateTime MS

* performer MS
* performer only Reference(UZCoreOrganization)

* method 1..1 MS
* method from ResearchMethodVS (required)

* component MS

* component.code 1..1 MS
* component.code from MGRMarkerVS (required)

* component.valueCodeableConcept 1..1 MS
* component.valueCodeableConcept from GeneticDisorderVS (required)

* interpretation MS
* interpretation from $observation-interpretation-vs (required)

* hasMember MS
* hasMember only Reference(UZCoreObservation)


Instance: observation-mgr-example
InstanceOf: ObservationMGR
Usage: #example
Description: "Example molecular genetic research observation identifying a mutation."


* status = #final

* code = $cancer-cs#cancr0011.00003 "Molecular genetic testing"

* subject = Reference(example-patient-john)

* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-01"

* performer = Reference(example-lab)

* method = $cancer-cs#cancr0003.00003 "PCR"

* component.code = $cancer-cs#cancr0004.00003 "ACD (Adrenocortical Dysplasia Homolog) Protein involved in telomere maintenance"
* component.valueCodeableConcept = $cancer-cs#cancr0005.00001 "Mutation"

* interpretation = $observation-interpretation#DET "Detected"