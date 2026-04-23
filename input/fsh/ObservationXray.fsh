Profile: DhisObservationXray
Parent: Observation
Id: dhis-observation-xray
Title: "Dhis Observation Xray Profile"
Description: "Measurement and simple assertions"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Идентификатор для наблюдения"

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* category 1..1 MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* category =  $observation-category#imaging

* code 1..1 MS
* code from ObservationCodeVS
* code ^short = "Classification of type of observation"

* subject 1..1 MS
* subject only Reference(DhisPatient)

* effective[x] 0..1 MS SU
* effective[x] only dateTime

* issued 0..1 MS

* performer 0..* MS
* performer only Reference(Organization)

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Actual result"

* note 0..* MS

// Instance Example
Instance: example-observation-xray
InstanceOf: DhisObservationXray
Description: "Xray Observation tahlili namunasi"
Usage: #example
* status = #final
* category =  $observation-category#imaging
* code = https://terminology.dhp.uz/CodeSystem/observation-code-cs#Tub002-0010 "Chest X-ray"
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-10T10:00:00Z"
* issued = "2026-03-12T11:00:00Z"
* performer.reference = "Organization/example-organization"
* valueCodeableConcept = $observation-interpretation#POS "Positive"