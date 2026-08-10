Profile: HepatitisEncounter
Parent: UZCoreEncounter
Id: hepatitis-encounter
Title: "Hepatitis Encounter"
Description: "Encounter profile for hepatitis-related clinical encounters"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"


* identifier 0..1 MS
  * system = $hep-id-sys
    * ^short = "Namespace for the encounter identifier"
  * type from IdentifierTypeVS (required)
  * type.coding 
    * system = $v2-0203
      * ^short = "Terminology system defining the identifier type"
    * code = #PHC
      * ^short = "Code identifying the identifier type" 
    * display = "Public Health Case Identifier"
      * ^short = "Human-readable name of the identifier type"
  * use from IdentifierUseVS (required)
    * ^short = "Purpose of the identifier"

* subject 1..1 MS
  * ^short = "Patient involved in the encounter"
* subject only Reference(UZCorePatient)

* serviceProvider 0..1 MS
  * ^short = "Organization responsible for the encounter"
* serviceProvider only Reference(UZCoreOrganization)

* participant 0..* MS
  * ^short = "People or organizations participating in the encounter"
  * type 0..* MS
    * ^short = "Role of the participant in the encounter"
  * type from EncounterParticipantTypeVS (extensible)
  * period 0..1 MS
    * ^short = "Period during which the participant was involved"
  * actor 0..1 MS
    * ^short = "Person or organization participating in the encounter"
  * actor only Reference(UZCorePractitionerRole)


* actualPeriod 0..1 MS
  * ^short = "Actual start and end time of the encounter"
* plannedStartDate 1..1 MS
  * ^short = "Planned start date and time of the encounter"

* partOf 0..1 MS
  * ^short = "Larger encounter of which this encounter is a part"
* partOf only Reference(UZCoreEncounter)

Instance: HepatitisEncounterExample
InstanceOf: HepatitisEncounter
Title: "Hepatitis Encounter Example"
Description: "Example of a hepatitis-related clinical encounter"
Usage: #example

* identifier.system = $hep-id-sys

* identifier.type.coding.system = $v2-0203
* identifier.type.coding.code = #PHC
* identifier.type.coding.display = "Public Health Case Identifier"
* identifier.use = #usual


* class = $v3-ActCode#AMB "Ambulatory"
* subject = Reference(example-salim)
* serviceProvider = Reference(example-organization)

* status = #completed
* participant.type = $v3-ParticipationType#ATND "attender"
* participant.actor = Reference(muratova-gulshoda-role)
* type[nationalType] = encounter-type-cs#mserv-0001-00004 "Treatment services"
* actualPeriod
  * start = "2026-01-26"

* plannedStartDate = "2026-01-26T09:41:00+05:00"