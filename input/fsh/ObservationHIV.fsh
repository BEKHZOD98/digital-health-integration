Profile: DhisObservationHIV
Parent: Observation
Id: dhis-observation-hiv
Title: "Dhis Observation HIV Profile"
Description: "Measurement and simple assertions"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Идентификатор для наблюдения"

* status 1..1 MS 
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* category 0..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* category = $observation-category#laboratory

* code 1..1 MS
* code from ObservationCodeVS

* subject 0..1 MS
* subject only Reference(DhisPatient)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS SU

* issued 0..1 MS

* performer 0..* MS
* performer only Reference(Organization)

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Actual result"

* component 0..* MS
  * code 1..1 MS
  * code from ObservationComponentCodeVS (required)
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1 MS
  * valueCodeableConcept from ObservationCodeableConceptVS

* note 0..* MS      

//Instance Example
Instance: example-obs-hiv
InstanceOf: DhisObservationHIV
Description: "Observation HIV tahlili"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = https://terminology.dhp.uz/CodeSystem/observation-code-cs#Tub002-0011 "HIV testing"
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-10T10:00:00Z"
* issued = "2026-03-15T11:00:00Z"
* valueCodeableConcept =  $observation-interpretation#POS "Positive"
* performer.reference = "Organization/example-organization"