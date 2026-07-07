Profile: ObservationIHCSpecific
Parent: UZCoreObservation
Id: observation-ihc-specific
Title: "Observation IHC Specific"
Description: "Observation profile for specific immunohistochemistry (IHC) hormone studies used to determine the presence or absence of tumor processes."

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

* component MS
* component.code 1..1 MS
* component.code from IHCHormoneVS (required)

* component.valueQuantity MS
* component.valueCodeableConcept MS
* component.valueCodeableConcept from IHCHormoneResultVS (required)

* interpretation MS
* interpretation from $observation-interpretation-vs (required)

* hasMember MS
* hasMember only Reference(UZCoreObservation)


Instance: observation-ihc-specific-example
InstanceOf: ObservationIHCSpecific
Usage: #example
Description: "Example of a specific IHC hormone study showing estrogen receptor expression."


* status = #final

* code = $cancer-cs#cancr0011.00001 "IHC specific"

* subject = Reference(example-patient-john)

* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-01"

* performer = Reference(example-lab)

* component[0].code = $cancer-cs#cancr0010.00001 "Estrogen"
* component[0].valueQuantity.value = 20
* component[0].valueQuantity.unit = "%"

* component[1].code = $cancer-cs#cancr0010.00002 "Progesterone"
* component[1].valueCodeableConcept = $cancer-cs#cancr0001.00002 "Weak (+)"

* interpretation = $observation-interpretation#DET "Detected"