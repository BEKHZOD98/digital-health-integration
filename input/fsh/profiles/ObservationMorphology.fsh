Profile: ObservationMorphology
Parent: UZCoreObservation
Id: observation-morphology
Title: "Observation Morphology"
Description: "Observation profile for morphological examination used to confirm a cancer diagnosis and record morphological findings."

* ^experimental = true
* ^status = #active

* identifier MS

* status MS

* category MS


* code MS
* code from CancerDiagnosisBasisVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus MS
* focus only Reference(UZCoreCondition)

* effectiveDateTime MS

* performer MS
* performer only Reference(UZCorePractitioner)

* valueString 1..1 MS

* note MS

* hasMember MS
* hasMember only Reference(ObservationIHCSpecific or ObservationIHCnonspecific or ObservationMGR)


Instance: observation-morphology-example
InstanceOf: ObservationMorphology
Usage: #example
Description: "Example morphology observation."


* status = #final

* category = $observation-category#laboratory "Laboratory"

* code = $cancer-cs#cancr0015.00001 "Histology"

* subject = Reference(example-patient-john)

* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-01"

* performer = Reference(example-practitioner)

* valueString = "Fibrosarcoma G-2"

* note.text = "Morphological diagnosis confirmed by histological examination."

* hasMember[0] = Reference(observation-ihc-specific-example)
* hasMember[+] = Reference(observation-mgr-example)