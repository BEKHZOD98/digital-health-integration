Profile: HepatitisObservationAnalysis
Parent: Observation
Id: hepatitis-observation-analysis
Title: "Hepatitis observation analysis profile"
Description: "Gepatit tahlillari natijalarini qayd etish uchun profil"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* status 1..1 MS

* method 0..1 MS
* method from https://terminology.dhp.uz/fhir/core/ValueSet/typeOfMethod (extensible)

* code 1..1 MS
* code from https://dhp.uz/fhir/core/en/ValueSet-observation-codes-vs (required)

* subject 0..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* encounter only Reference(Encounter)
* effective[x] only dateTime or Period
* effective[x] 0..1 MS

* value[x] 0..1 MS
* value[x] only Attachment or string or CodeableConcept
* valueCodeableConcept from https://terminology.dhp.uz/ValuSet/lab_result_20_type (required)

* performer 0..* MS
* performer only Reference(Organization or PractitionerRole)

* component 0..* MS
  * code 1..1 MS
  * code from https://terminology.dhp.uz/fhir/core/ValueSet/observation-codes-vs (required)

  * valueQuantity
    * value 0..1 MS
    * comparator from http://hl7.org/fhir/ValueSet/quantity-comparator (required)
    * unit 0..1 MS
    * system 0..1 MS
    * system = "http://unitsofmeasure.org"
    * code 0..1 MS

* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (extensible)
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* note 0..* MS


// Instance Example
Instance: example-hepatitis-observation-analysis
InstanceOf: HepatitisObservationAnalysis
Description: "DNK Gepatit B tahlili namunasi"
Usage: #example

* status = #final
* identifier 
  * system = "https://gepatit.sanepid.uz/observation"
  * value = "PZR-2026-001"

* method = https://terminology.dhp.uz/fhir/core/CodeSystem/observation-lab-research-codes-cs#lab-method-1 "ПЦР"
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/observation-diagnostic-cs#lab-258 "Zardob yoki plazmadagi D vitamini + metabolitlari [Mass/hajm]"
* subject = Reference(Patient/example-hepatitis-patient)
* effectiveDateTime = "2026-01-27T09:57:00Z"
* valueCodeableConcept = http://hl7.org/fhir/observation-referencerange-normalvalue#negative "Negative"
* performer = Reference(Organization/samarkand-regional-hospital)
* component[0]
  * code = https://terminology.dhp.uz/fhir/core/CodeSystem/observation-diagnostic-cs#lab-259 "Zardob yoki plazmadagi androstenedion [mol/hajm]"
  * valueQuantity 
    * value = 12
    * comparator = #<
    * unit = "mL"
    * system = "http://unitsofmeasure.org"
    * code = #mL