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

* value[x] only boolean
* valueBoolean 0..1 MS
* valueBoolean ^short = "Actual result"

* note 0..* MS