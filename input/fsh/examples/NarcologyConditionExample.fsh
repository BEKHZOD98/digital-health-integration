Instance: example-narko-condition
InstanceOf: UZCoreCondition
Title: "Narko Condition Example"
Description: "Example of Narko Condition"
Usage: #example

* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/narco"
* identifier[0].value = "EOC-2026-001"
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#F15.1 "Mental and behavioural disorders due to use of other stimulants, including caffeine : Harmful use"
* subject = Reference(example-salim)
* encounter = Reference(example-narko-encounter)
* recordedDate = "2026-03-10"
* participant.actor = Reference(Organization/organization-123)