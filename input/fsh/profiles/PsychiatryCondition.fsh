Profile: PsychiatryCondition
Parent: UZCoreCondition
Id: psychiatry-condition
Title: "Psix Condition Profile"
Description: "Condition profile for the Psix system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier MS

* onsetDateTime  MS

* participant MS
* participant.actor only Reference(UZCoreOrganization)

Instance: example-psychiatry-condition
InstanceOf: PsychiatryCondition
Description: "Example condition representing a diagnosis of harmful use of substance (F15.1) in the Psix system."
Usage: #example

* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#F15.1 "Mental and behavioural disorders due to use of other stimulants, including caffeine : Harmful use"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(Encounter/example-psychiatry-encounter)
* onsetDateTime = "2026-08-15"
* recordedDate = "2026-08-15"
* participant[0].actor = Reference(Organization/example-psychiatry-center)