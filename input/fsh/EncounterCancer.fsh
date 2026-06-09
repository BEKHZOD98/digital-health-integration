Profile: EncounterCancer
Parent: UZCoreEncounter
Id: encounter-cancer
Title: "Encounter Cancer"
Description: "Encounter profile for oncology care used to document patient visits, diagnoses, and treatment-related information."

* ^experimental = true
* ^status = #active

* status MS

* class MS

* subject MS
* subject only Reference(UZCorePatient)


* episodeOfCare MS
* episodeOfCare only Reference(EpisodeOfCareCancer)

* serviceProvider MS
* serviceProvider only Reference(UZCoreOrganization)

* participant MS
* participant.type MS

* participant.actor MS
* participant.actor only Reference(UZCorePractitionerRole)

* actualPeriod MS

* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition only CodeableReference(ConditionCancerPrimary or ConditionCancerSecondary)

* diagnosis.use MS

* admission.dischargeDisposition MS


Instance: encounter-cancer-example
InstanceOf: EncounterCancer
Usage: #example
Description: "Example oncology encounter."

* status = #completed "Completed"

* class = $v3-ActCode#IMP "Inpatient encounter"

* subject = Reference(example-patient)

* episodeOfCare[0] = Reference(episode-of-care-cancer-example)

* serviceProvider = Reference(example-organization)

* participant[0].type = $v3-ParticipationType#ATND "attender"
* participant[0].actor = Reference(example-practitioner-role)

* actualPeriod.start = "2026-02-18T09:00:00+05:00"
* actualPeriod.end = "2026-02-18T11:30:00+05:00"

* diagnosis[0].condition = Reference(condition-cancer-primary-example)
* diagnosis[0].use = $diagnosis-role#DD "Discharge diagnosis"

* admission.dischargeDisposition = $encounter-discharge-disposition#exp "Expired"
