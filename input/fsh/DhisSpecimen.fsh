Profile: DhisSpecimen
Parent: Specimen
Id: dhis-specimen
Title: "Dhis Specimen Profile"
Description: "Example for analysis"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Sample identifier"

* status 0..1 MS
* status from http://hl7.org/fhir/ValueSet/specimen-status

* type 0..1 MS
* type from SpecimenTypeVS (required)

* subject 0..1 MS
* subject only Reference(DhisPatient)

* receivedTime 0..1 MS
* receivedTime only dateTime

* parent 0..* MS
* parent only Reference(Specimen)