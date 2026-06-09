Profile: ObservationIHCnonspecific
Parent: UZCoreObservation
Id: observation-ihc-nonspecific
Title: "Observation IHC Nonspecific"
Description: "Observation profile for non-specific immunohistochemistry (IHC) antibody testing."

* ^experimental = true
* ^status = #active

* identifier MS

* code 1..1 MS
* code from NameTestsVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus MS
* focus only Reference(UZCoreCondition)

* effectiveDateTime MS

* performer MS
* performer only Reference(UZCoreOrganization)

* valueCodeableConcept 1..1 MS
* valueCodeableConcept from IHCNameAntibodyVS (required)


* interpretation MS
* interpretation from $observation-interpretation-vs (required)

* hasMember MS
* hasMember only Reference(UZCoreObservation)



Instance: observation-ihc-nonspecific-cd3-example
InstanceOf: ObservationIHCnonspecific
Usage: #example
Description: "Example of a non-specific IHC observation with CD3 antibody detected."


* status = #final

* code = name-tests-cs#cancr0011.00002 "IHC non-specific"

* subject = Reference(example-patient)

* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-25"

//put refernce
* performer = Reference(example-lab)

* valueCodeableConcept = ihc-hormone-antibody-cs#cancr0002.00004 "CD3(Protein complex)"

* interpretation = $observation-interpretation#DET "Detected"