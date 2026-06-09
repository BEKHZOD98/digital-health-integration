Profile: ProcedureCancerRadiationtherapy
Parent: Procedure
Id: procedure-cancer-radiationtherapy
Title: "Procedure Cancer Radiation Therapy"
Description: "Radiation therapy procedure for cancer patients."

* ^status = #draft
* ^experimental = true

* identifier MS

* status 1..1 MS

* category 0..* MS
* category from CharacterRadiationTherapyVS (required)

* code 0..1 MS
* code from ImpactTypeVS (required)

* extension contains
    RadiotherapyZone named radiotherapyZone 0..1 MS and
    RadiotherapyModifiers named radiotherapyModifiers 0..* MS and
    RadiotherapySingleDose named radiotherapySingleDose 0..1 MS and
    RadiotherapyTotalDose named radiotherapyTotalDose 0..1 MS and
    RadiotherapyEquivalentDose named radiotherapyEquivalentDose 0..1 MS

* extension[radiotherapyZone].valueCodeableConcept 0..1 MS
* extension[radiotherapyZone].valueCodeableConcept from ImpactZoneVS (required)

* extension[radiotherapyModifiers].valueCodeableConcept 0..1 MS
* extension[radiotherapyModifiers].valueCodeableConcept from ModifiersVS (required)

* bodySite 0..* MS
* bodySite from AnatomicalLocationVS (required)

* note 0..* MS

* extension[radiotherapySingleDose].valueQuantity 0..1 MS
* extension[radiotherapyTotalDose].valueQuantity 0..1 MS
* extension[radiotherapyEquivalentDose].valueQuantity 0..1 MS

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)

* occurrence[x] only Period
* occurrencePeriod 0..1 MS

* performer 1..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(UZCorePractitioner or UZCoreHealthcareService)

* performer.onBehalfOf 0..1
* performer.onBehalfOf only Reference(UZCoreOrganization)

* reason 0..* MS
* reason only CodeableReference(ConditionCancerPrimary)

* used 0..* MS
* used only CodeableReference
* used from NameDrugVS (required)


Instance: example-procedure-cancer-radiationtherapy
InstanceOf: ProcedureCancerRadiationtherapy
Title: "Example Cancer Radiation Therapy Procedure"
Description: "Example of radiation therapy procedure for a cancer patient."
Usage: #example

* status = $event-status#completed "Completed"

* category = character-radiation-therapy-cs#cancr0025.00004 "Independent radical"

* code = impact-type-cs#cancr0026.00001 "Remote"

* extension[radiotherapyZone].valueCodeableConcept =
    impact-zone-cs#cancr0027.00001 "Primary focus"

* extension[radiotherapyModifiers][0].valueCodeableConcept =
    modifiers-cs#cancr0028.00002 "Radiosensitizers"

* extension[radiotherapySingleDose].valueQuantity.value = 10
* extension[radiotherapySingleDose].valueQuantity.unit = "Gy"

* extension[radiotherapyTotalDose].valueQuantity.value = 20
* extension[radiotherapyTotalDose].valueQuantity.unit = "Gy"

* extension[radiotherapyEquivalentDose].valueQuantity.value = 25
* extension[radiotherapyEquivalentDose].valueQuantity.unit = "Gy"

* bodySite = anatomical-location-cs#cancr0007.00003 "Liver"
* bodySite.text = "Lymph nodes"

* subject = Reference(example-patient)
* encounter = Reference(encounter-cancer-example)

* occurrencePeriod.start = "2026-01-05"
* occurrencePeriod.end = "2026-02-06"

* performer.actor = Reference(example-healthcare-service)
* performer.onBehalfOf = Reference(example-lab)

* reason[0].reference = Reference(condition-cancer-primary-example)

* used = name-drug-cs#cancr0029.00002 "Actinomycin"

* note.text = "Additional description of the primary lesion."