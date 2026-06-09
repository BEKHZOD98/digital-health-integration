Profile: ConditionCancerSecondary
Parent: UZCoreCondition
Id: condition-cancer-secondary
Title: "Condition Cancer Secondary"
Description: "Secondary cancer condition used to document recurrence, relapse, metastasis, and associated anatomical sites."

* ^experimental = true
* ^status = #active

* extension contains RelatedCondition named relatedCondition 0..1 MS

* clinicalStatus 1..1 MS

* extension[relatedCondition].valueReference only Reference(ConditionCancerPrimary)

* code 0..1 MS
* code from OncologyEventTypeVS (required)

* bodySite MS
* bodySite from AnatomicalLocationVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)

* onsetDateTime MS

* abatementDateTime MS

* note MS

Instance: condition-cancer-secondary-example
InstanceOf: ConditionCancerSecondary
Usage: #example
Description: "Example secondary cancer condition representing recurrence with metastasis."

* clinicalStatus = $condition-clinical#active "Active"

* extension[relatedCondition].valueReference = Reference(condition-cancer-primary-example)

* code = oncology-event-type-cs#cancr0006.00002 "Relapse"

* bodySite = anatomical-location-cs#cancr0007.00002 "Bones"

* subject = Reference(example-patient)

* encounter = Reference(encounter-cancer-example)

* onsetDateTime = "2026-03-15"

* note.text = "Recurrence detected with metastatic involvement of bone."