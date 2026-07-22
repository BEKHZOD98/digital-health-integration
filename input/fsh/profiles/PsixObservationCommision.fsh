Profile: PsixObservationCommision
Parent: UZCoreObservation
Id: psix-observation-commision
Title: "Psix Observation Commision Profile"
Description: "Observation profile representing the medical-consultation commission's decision notes for the Psix system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier 0..1 MS

* code MS
* code from PsixTypeResourceVS (required)

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
* component[protocolNumber].code = psix-type-resource-cs#psycr0002-0002
* component[protocolNumber].value[x] 0..1 MS
* component[protocolNumber].value[x] only string


Instance: example-psix-observation-commision
InstanceOf: PsixObservationCommision
Description: "Example observation representing a medical-consultation commission's decision for the Psix system."
Usage: #example

* status = #final
* code = psix-type-resource-cs#psycr0002-0001 "Commission decision"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(Encounter/example-psix-encounter)
* effectiveDateTime = "2026-03-10"
* valueString = "Toshmatov Toshmat Toshmatovich"
* performer[0] = Reference(PractitionerRole/practitioner-role-nurse)
* note[0].text = "Patient with substance use disorder"
* component[protocolNumber].code = psix-type-resource-cs#psycr0002-0002 "Protocol number/court name"
* component[protocolNumber].valueString = "No. 123 / protocol / c"
