Profile: ConditionNarko
Parent: UZCoreCondition
Id: condition-narko
Title: "Narko Condition"
Description: "Uzbekistan Core Narko Condition profile, used to define the patient's clinical condition"
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"


Instance: example-narko-condition
InstanceOf: ConditionNarko
Title: "Narko Condition Example"
Description: "Example of Narko Condition"
Usage: #example

* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/narko"
* identifier[0].value = "EOC-2025-001"
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#F15.1 "Mental and behavioural disorders due to use of other stimulants, including caffeine : Harmful use"
* subject = Reference(example-salim)
* encounter = Reference(example-encounter)
* recordedDate = "2026-03-10"
* participant.actor = Reference(Organization/organization-123)