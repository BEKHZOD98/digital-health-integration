Profile: HepatitisEncounter
Parent: Encounter
Id: hepatitis-encounter
Title: "Hepatitis patient encounter profile"
Description: "Profile for representing encounters related to hepatitis patients in the context of a digital health integration project. This profile extends the base Encounter resource to include specific elements and extensions relevant to hepatitis patient encounters, such as clinical status, participant types, and encounter outcomes."

* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS
  * system = $hep-encounter-id-sys 
  * system ^short = "Hepatitis encounter identifier system"
  * value ^short = "Unique identifier for the encounter"
* status from EncounterStatusVS (required)
* status MS
* status = #completed 

* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Patient being admitted" 

* serviceProvider 0..1 MS
* serviceProvider only Reference(Organization)
* serviceProvider ^short = "Medical institution"

* participant 0..* MS
  * type 0..* MS
  * type from HepatitisEncounterParticipantTypeVS (extensible)
  * actor 0..1 MS
  * actor only Reference(Practitioner or PractitionerRole or RelatedPerson)
  * actor ^short = "Physician who examined the patient"

* actualPeriod 0..1 MS
* actualPeriod ^short = "Actual encounter time"

* plannedStartDate 0..1 MS
* plannedStartDate ^short = "Planned encounter start date"

* partOf 0..1 MS
* partOf only Reference(Encounter)
* partOf ^short = "Part of the overall encounter process"


// Instance Example
Instance: example-hepatitis-encounter
InstanceOf: HepatitisEncounter
Description: "Example of a consultation for Yusupova Khalida on January 26, 2026" //Please translate this description to English 
Usage: #example
* identifier 
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/hepatitis"
  * value = "ENC-2026-9901"

* status = #completed

* subject = Reference(example-hepatitis-patient)
* serviceProvider = Reference(Organization/samarkand-regional-hospital)

* participant[0].actor = Reference(Practitioner/muratova-goolshod)
* actualPeriod 
  * start = "2026-01-26T09:41:00Z"
* plannedStartDate = "2026-01-26T09:41:00Z"
