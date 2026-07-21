Profile: UZCoreNarkoEncounter
Parent: UZCoreEncounter
Id: uz-core-narko-encounter
Title: "UZ Core Narko Encounter"
Description: "Uzbekistan Core Narko Encounter profile, used to provide comprehensive information about a patient encounter, available for review when a healthcare professional opens the encounter record"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-08"
* ^publisher = "Uzinfocom"

Instance: example-narko-encounter
InstanceOf: UZCoreNarkoEncounter
Title: "Example Narko Encounter"
Description: "Example of Narko encounter"
Usage: #example
* status = #completed "Completed"

* subject = Reference(example-patient)

* participant.type = $v3-ParticipationType#ATND "attender"

* type[nationalType] = encounter-type-cs#mserv-0001-00004 "Treatment services"

* participant.actor = Reference(PractitionerRole/example-practitionerrole)

* actualPeriod
  * start = "2026-02-12T10:00:00Z"
  * end = "2026-02-12T11:00:00Z"

* diagnosis[0].condition = Reference(Condition/example-headache)
