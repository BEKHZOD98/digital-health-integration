Profile: HepatitisCondition
Parent: UZCoreCondition
Id: hepatitis-condition
Title: "Hepatitis condition profile"
Description: "Profile for representing hepatitis conditions in the context of a digital health integration project. This profile extends the base Condition resource to include specific elements and extensions relevant to hepatitis diagnosis, clinical status, and treatment outcomes."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"
* ^purpose = "Represents information about the patient's diagnosis, symptoms, or medical history."

* identifier 0..* MS
  * system = $hep-id-sys
  * system ^short = "Hepatitis condition identifier system"
  * value ^short = "Unique identifier for the condition: UUID"
* identifier.type 0..1 MS
* identifier.type from $identifier-type-vs (required)

* encounter ^short = "When a healthcare professional enters patient information into the system, it is used to associate this information with the patient's active encounter record."
* extension[diagnosisType] 1..1 MS
* extension contains HepatitisConditionOutcome named outcome 0..1 MS

* recordedDate ^short = "Date when the condition was recorded"
* participant  MS 
  * actor only Reference(UZCorePractitionerRole)
  * actor ^short = "Physician who made the diagnosis"
* note 
* note.text ^short = "Additional information about the condition, such as symptoms, duration, or relevant medical history."

// Instance Example
Instance: example-hepatitis-condition
InstanceOf: HepatitisCondition
Description: "Example of a hepatitis condition"
Usage: #example
* identifier 
  * system = $hep-id-sys
  * value = "COND-2026-5541"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* clinicalStatus = $condition-clinical#active "Active"
* extension[diagnosisType].valueCodeableConcept = $diagnosis-type#gencl-0001-00003 "Main diagnosis"
* code = $icd-10#B17.1 "Acute hepatitis C"

* subject = Reference(example-salim)

* recordedDate = "2025-11-09T13:31:00Z"
* participant.actor = Reference(PractitionerRole/example-practitionerrole)

* extension[outcome].valueCodeableConcept = $sct#1137679005 "Good response to medication"
* note.text = "test"
