Profile: ProcedureCancerOtherImpact
// After new version is published, parent will be changed from Procedure to UZCoreProcedure
Parent: Procedure
Id: procedure-cancer-other-impact
Title: "Procedure Cancer Other Impact"
Description: "Procedure profile for documenting other therapeutic impacts in oncology."

* ^experimental = true
* ^status = #active

* status 1..1 MS

* code 1..1 MS
* code from OtherImpactVS (required)

* subject MS
* subject only Reference(UZCorePatient)

* encounter MS
* encounter only Reference(EncounterCancer)

* occurrencePeriod 0..1 MS
* occurrencePeriod.start MS
* occurrencePeriod.end MS

* performer MS
* performer.actor MS
* performer.actor only Reference(UZCorePractitioner or UZCoreHealthcareService)

* performer.onBehalfOf 0..1 MS
* performer.onBehalfOf only Reference(UZCoreOrganization)

* reason MS
* reason only CodeableReference(ConditionCancerPrimary)


Instance: procedure-cancer-other-impact-example
InstanceOf: ProcedureCancerOtherImpact
Usage: #example
Description: "Example other impact procedure."

* status = $event-status#completed "Completed"

* code = other-impact-cs#cancr0033.00001 "Hyperthermia"

* subject = Reference(example-patient)

* encounter = Reference(encounter-cancer-example)

* occurrencePeriod.start = "2026-01-05"
* occurrencePeriod.end = "2026-02-06"

* performer.actor = Reference(example-healthcare-service)

* performer.onBehalfOf = Reference(example-organization)

* reason[0].reference = Reference(condition-cancer-primary-example)