Profile: UZCoreNarkoCondition
Parent: UZCoreCondition
Id: uz-core-narko-condition
Title: "UZ Core Narko Condition"
Description: "Uzbekistan Core Narko Condition profile, used to define the patient's clinical condition"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-09"
* ^publisher = "Uzinfocom"

Instance: example-narko-condition
InstanceOf: UZCoreNarkoCondition
Description: "Example of Narko Condition"
Usage: #example
* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/narko"
* identifier[0].value = "EOC-2025-001"

* clinicalStatus = $condition-clinical#active "Active"

* code = $icd-10#G43.9 "Migraine, unspecified"

* subject = Reference(example-salim)

* encounter = Reference(example-encounter)

* recordedDate = "2026-03-10"

* participant
  * actor = Reference(example-practitionerrole)