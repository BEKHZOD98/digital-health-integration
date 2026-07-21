Profile: UZCoreNarkoFlag
Parent: Flag
Id: uz-core-narko-flag
Title: "Flag"
Description: "Uzbekistan Flag profile, used to define the essential information that healthcare providers should be aware of when assessing, treating, or managing a patient."
* ^experimental = true
* ^status = #active
* ^date = "2025-06-11"
* ^publisher = "Uzinfocom"

* status 1..1 MS
* status from FlagStatusVS (required)

* code 1..1 MS
* code from RegistriFlagVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* period 0..1 MS

* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)

* author 0..1 MS
* author only Reference(UZCorePractitionerRole)


Instance: example-flag
InstanceOf: UZCoreNarkoFlag
Description: "Example of Narko Flag"
Usage: #example
* status = $flag-status-cs#active "Active"
* code = registri-flag-cs#registri0001-00002 "Compulsory treatment"
* subject = Reference(example-salim)
* period.start = "2026-03-12"
* encounter = Reference(example-encounter)
* author = Reference(example-practitionerrole)