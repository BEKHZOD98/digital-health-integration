Profile: HepatitisCondition
Parent: Condition
Id: hepatitis-condition
Title: "Hepatitis condition profile"
Description: "Profile for representing hepatitis conditions in the context of a digital health integration project. This profile extends the base Condition resource to include specific elements and extensions relevant to hepatitis diagnosis, clinical status, and treatment outcomes."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS SU
* clinicalStatus 1..1 MS
* clinicalStatus from HepatitisClinicalStatusVS (required)

* extension contains http://hl7.org/fhir/StructureDefinition/condition-outcome named diagnosisType 0..1 MS
* extension[diagnosisType].valueCodeableConcept from HepatitisConditionDiagnosisTypeVS (required)

* code 0..1 MS
* code from HepatitisICDVS (required) //CodeSystem should be done

* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* encounter only Reference(Encounter)
//condition outcomes 
* extension contains ConditionOutcome named outcome 0..1 MS
* extension[outcome] ^short = "Effectiveness of treatment at the time of removal from A, B, C, D, E registry follow-up"
* extension[outcome] ^definition = "Represents the effectiveness of treatment at the time of removal from the A, B, C, D, E registry follow-up."
* recordedDate 0..1 MS
* participant 0..1 MS
  * actor only Reference(Practitioner)
  * actor ^short = "Physician who made the diagnosis"

* note 0..* MS


// Instance Example
Instance: example-hepatitis-condition
InstanceOf: HepatitisCondition
Description: "Example of a hepatitis condition"
Usage: #example
* identifier 
  * system = "https://gepatit.sanepid.uz/condition"
  * value = "COND-2026-5541"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"

* code = http://hl7.org/fhir/sid/icd-10#B17.1 "Acute hepatitis C"

* subject = Reference(example-hepatitis-patient)
* encounter = Reference(example-hepatitis-encounter)

* recordedDate = "2026-11-09T13:31:00Z"
* participant.actor = Reference(Practitioner/simonov-farkhod)

* extension[outcome].valueCodeableConcept = $sct#1137679005 "Good response to medication"
* note.text = "Symptoms started 2 weeks ago in the patient"
