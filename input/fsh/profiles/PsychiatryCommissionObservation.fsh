Profile: PsychiatryObservationCommision
Parent: UZCoreObservation
Id: psychiatry-observation-commision
Title: "Psix Observation Commision Profile"
Description: "Observation profile representing the medical-consultation commission's decision notes for the Psix system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier 0..1 MS

* code MS
* code from PsychiatryCommissionTypeVS (required)

* subject MS
* subject only Reference(UZCorePatient)

* effective[x] MS
* effective[x] only dateTime

* value[x] MS
* value[x] only string

* performer MS
* performer only Reference(UZCorePractitionerRole)

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains protocolNumber 0..1 MS
* component[protocolNumber].code 1..1 MS
* component[protocolNumber].code = type-resource-cs#type-res-0002-0002 "Protocol number/court name"
* component[protocolNumber].value[x] 0..1 MS
* component[protocolNumber].value[x] only string


Instance: example-psychiatry-observation-commision
InstanceOf: PsychiatryObservationCommision
Title: "Psix Observation Commission Profile Instance"
Description: "Example observation representing a medical-consultation commission's decision regarding compulsory inpatient treatment in the Psix system."
Usage: #example

* status = #final
* code = type-resource-cs#type-res-0002-0001 "The commission's decision"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(Encounter/example-psychiatry-encounter)
* effectiveDateTime = "2026-08-15"
* valueString = "Commission concluded compulsory inpatient treatment is required"
* performer[0] = Reference(PractitionerRole/example-commission-psychiatrist-role)
* note[0].text = "Patient with F15.1 stimulant use disorder; compulsory inpatient treatment recommended by the commission"
* component[protocolNumber].code = type-resource-cs#type-res-0002-0002 "Protocol number/court name"
* component[protocolNumber].valueString = "Protocol No. 123, Tashkent City Civil Court"
