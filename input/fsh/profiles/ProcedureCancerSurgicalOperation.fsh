Profile: ProcedureCancerSurgicalOperation
// After new version is published, parent will be changed from Procedure to UZCoreProcedure
Parent: Procedure
Id: procedure-cancer-surgical-operation
Title: "Procedure Cancer Surgical Operation"
Description: "Procedure profile for documenting surgical cancer operations."

* ^experimental = true
* ^status = #active

* status MS

* category MS
* category from CharacterTreatmentVS (required)

* code 1..1 MS
* code from NameOperationsVS (required)

* subject MS
* subject only Reference(UZCorePatient)

* encounter MS
* encounter only Reference(EncounterCancer)

* occurrenceDateTime MS

* note MS

* extension contains
    ProcedureMethod named procedureMethod 0..1 MS and
    AdditionalProcedure named additionalProcedure 0..* MS

* performer MS
* performer.actor 1..1 MS
* performer.actor only Reference(UZCorePractitioner or UZCoreHealthcareService)

* performer.onBehalfOf 0..1 MS
* performer.onBehalfOf only Reference(UZCoreOrganization)

* reason MS
* reason only CodeableReference(ConditionCancerPrimary)


Instance: procedure-cancer-surgical-operation-example
InstanceOf: ProcedureCancerSurgicalOperation
Usage: #example
Description: "Example cancer surgical operation."

* status = $event-status#completed "Completed"

* category = $cancer-cs#cancr0008.00002 "Radical"

* code = $cancer-cs#cancr0018.00005 "plastic surgery with TDL flap after radical resection"

* subject = Reference(example-patient-john)

* encounter = Reference(encounter-cancer-example)

* occurrenceDateTime = "2026-02-18T10:00:00+05:00"

* note.text = "Surgical procedure completed without complications."

* extension[procedureMethod].valueCodeableConcept =
    $cancer-cs#cancr0024.00001 "Laparoscopic"

* extension[additionalProcedure].valueCodeableConcept =
    $cancer-cs#cancr0018.00127 "axillary lymphadenectomy"

* performer.actor = Reference(example-healthcare-service)

* performer.onBehalfOf = Reference(example-organization)

* reason[0].reference = Reference(condition-cancer-primary-example)