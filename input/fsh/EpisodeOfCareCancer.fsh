Profile: EpisodeOfCareCancer
Parent: UZCoreEpisodeOfCare
Id: episode-of-care-cancer
Title: "Episode Of Care Cancer"
Description: "Episode of care profile for cancer treatment and follow-up."

* ^experimental = true
* ^status = #active

* status 1..1 MS

* type MS

* extension contains
    SpecialTreatment named specialTreatment 0..1 MS and
    CharacterTreatment named characterTreatment 0..1 MS

* extension[specialTreatment].valueCodeableConcept 1..1 MS
* extension[specialTreatment].valueCodeableConcept from SpecialTreatmentVS (required)

* extension[characterTreatment].valueCodeableConcept 1..1 MS
* extension[characterTreatment].valueCodeableConcept from CharacterTreatmentVS (required)

* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition only CodeableReference(ConditionCancerPrimary or ConditionCancerSecondary)

* diagnosis.use MS


* patient 1..1 MS
* patient only Reference(UZCorePatient)

* managingOrganization 0..1 MS
* managingOrganization only Reference(UZCoreOrganization)

* period.start MS
* period.end MS

* careManager MS
* careManager only Reference(UZCorePractitionerRole)


Instance: episode-of-care-cancer-example
InstanceOf: EpisodeOfCareCancer
Usage: #example
Description: "Example cancer episode of care."

* status = #active

* type = $episode-of-care-type#mserv-0001-00004 "Treatment services"

* extension[specialTreatment].valueCodeableConcept = special-treatment-cs#cancr0009.00001 "Surgical"
    

* extension[characterTreatment].valueCodeableConcept = character-treatment-cs#cancr0008.00002 "Radical"

* diagnosis[0].condition = Reference(condition-cancer-primary-example)
* diagnosis[0].use = $diagnosis-role#DD "Discharge diagnosis"

* patient = Reference(example-patient)

* managingOrganization = Reference(example-organization)
* period.start = "2026-02-12"
* period.end = "2026-03-12"

* careManager = Reference(example-practitioner-role)