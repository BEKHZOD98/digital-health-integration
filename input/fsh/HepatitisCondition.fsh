Profile: HepatitisCondition
Parent: UZCoreCondition
Id: hepatitis-condition
Title: "Hepatitis condition profile"
Description: "Profile for representing hepatitis conditions in the context of a digital health integration project. This profile extends the base Condition resource to include specific elements and extensions relevant to hepatitis diagnosis, clinical status, and treatment outcomes."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"
* ^purpose = "Represents information about the patient's diagnosis, symptoms, or medical history."

* identifier 1..* MS
  * system = $hep-id-sys
  * system ^short = "Hepatitis condition identifier system"
  * value ^short = "Unique identifier for the condition: UUID"
* identifier.type 0..1 MS
* identifier.type from IdentifierTypeVS (required)

* clinicalStatus 1..1 MS
* clinicalStatus from HepatitisClinicalStatusVS (required)

//* extension contains HepatitisDiagnosisType named diagnosisType 0..1 MS

* code 1..* MS
* code from HepatitisICDVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)
* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "When a healthcare professional enters patient information into the system, it is used to associate this information with the patient's active encounter record."
//condition outcomes 
* extension contains ConditionOutcome named outcome 0..1 MS
* extension[outcome] ^short = "Effectiveness of treatment at the time of removal from A, B, C, D, E registry follow-up"
* extension[outcome] ^definition = "Represents the effectiveness of treatment at the time of removal from the A, B, C, D, E registry follow-up."
* recordedDate 0..1 MS
* recordedDate ^short = "Date when the condition was recorded"
* participant 0..1 MS
  * actor only Reference(UZCorePractitioner)
  * actor ^short = "Physician who made the diagnosis"
* note 
* note.text ^short = "Additional information about the condition, such as symptoms, duration, or relevant medical history."


// Instance Example
Instance: example-hepatitis-condition
InstanceOf: HepatitisCondition
Description: "Example of a hepatitis condition"
Usage: #example
* identifier 
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/hepatitis"
  * value = "COND-2026-5541"
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* extension[diagnosisType].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00003 "Main diagnosis"
* code = http://hl7.org/fhir/sid/icd-10#B17.1 "Acute hepatitis C"

* subject = Reference(example-hepatitis-patient)
* encounter = Reference(example-hepatitis-encounter)

* recordedDate = "2026-11-09T13:31:00Z"
* participant.actor = Reference(Practitioner/example-practitioner)

* extension[outcome].valueCodeableConcept = $sct#1137679005 "Good response to medication"
* note.text = "Symptoms started 2 weeks ago in the patient"
