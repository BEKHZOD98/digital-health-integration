Profile: DhisObservationMicroscopy
Parent: UZCoreObservation
Id: dhis-observation-microscopy
Title: "DHis Observation Microscopy Profile"
Description: "Measurement and simple assertions"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Идентификатор для наблюдения"
/*
* status 1..1 MS
* status from https://www.hl7.org/fhir/valueset-observation-status.html

* category 0..* MS
* category from https://build.fhir.org/ig/vadi2/DHP-temp/uz/ValueSet-observation-category-vs.html (required)
*/
* category = $observation-category#laboratory

* code 1..1 MS
* code from ObservationCodeVS
* code ^short = "Classification of type of observation"

* subject 1..1 MS
* subject only Reference(UZCorePatient)
* subject ^short = "Who and/or what the observation is about"

* effective[x] only dateTime
* effectiveDateTime 1..1 MS SU

* issued 0..1 MS

* performer 0..1 MS
* performer only Reference(UZCoreOrganization)

* method = $sct#278289002 "Microscopy technique (qualifier value)"

* specimen 0..1 MS
* specimen only Reference(Specimen)
* specimen ^short = "Specimen used for this observation + Rule: If Observation.specimen is a reference to Group, the group can only have specimens"

* component 0..* MS
  * code 1..1 MS
  * code from ObservationComponentCodeVS (required)
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1 MS
  * valueCodeableConcept from ObservationCodeableConceptVS

* hasMember 0..* MS

* note 0..* MS

//Instance Example
Instance: example-microscopy
InstanceOf: DhisObservationMicroscopy
Description: "Mikroskopiya tahlili va uning gradatsiyasi namunasi"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = https://terminology.dhp.uz/CodeSystem/observation-dhis-code-cs#Tub002-0001 "Sputum smear microscopy (fluorescent)"
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-12T12:00:00Z"
* issued = "2026-03-12T11:00:00Z"
* performer.reference = "Organization/example-organization"
* component[0]
  * code = https://terminology.dhp.uz/CodeSystem/observation-component-code-cs#Tub004-0005 "AMK/KAN/CAP result"
  * valueCodeableConcept = https://terminology.dhp.uz/CodeSystem/observation-codeable-concept-cs#Tub003-0040 "Macrota sample sediment"
  * interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
