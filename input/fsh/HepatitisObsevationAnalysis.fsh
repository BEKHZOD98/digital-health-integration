Profile: HepatitisObservationAnalysis
Parent: UZCoreObservation
Id: hepatitis-observation-analysis
Title: "Hepatitis observation analysis profile"
Description: "Profile for representing hepatitis observation analysis in the context of a digital health integration project. This profile extends the base Observation resource to include specific elements and extensions relevant to hepatitis observation analysis, such as laboratory result types, clinical significance, and associated notes."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"
* ^purpose = "Usually for the laboratory tests use Expresstest , ELISA and PCR methods. 
    NOTE:
    - If the laboratory test includes multiple analytes, the result SHALL be represented using Observation.component.
    - If the test contains a single analyte, the result SHALL be represented in Observation.value[x]."

* identifier 1..* MS
  * system = $hep-id-sys
  * system ^short = "Hepatitis observation identifier system"
  * value ^short = "Unique identifier for the observation: UUID"
* identifier.type 0..1 MS
* identifier.type from IdentifierTypeVS (required)

//* method 0..1 MS
//* method from $observation-methods (extensible)  //LabObservationMethodsVS add this value set after LabObsForIntegrationSys branch merged to main branch
* category 0..* MS
* category from HepatObsCategoryVS (required)
* status from ObservationStatusVS (required)
* status 1..1 MS


* code 1..1 MS
* code from HepatitisObservationAnalysisVS (required) //change the URL after LabObsForIntegrationSys branch merged to main branch 

* subject 0..1 MS
* subject only Reference(UZCorePatient)
* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "When a healthcare professional enters patient information into the system, it is used to associate this information with the patient's active encounter record."
* effective[x] only dateTime or Period
* effective[x] 0..1 MS
* effective[x] ^short = "Date and time when the observation occurred"

* value[x] 0..1 MS
* value[x] only Attachment or Quantity or CodeableConcept
* value[x] ^short = "Actual code"

* valueAttachment MS
* valueAttachment ^short = "Attached file"
* valueAttachment ^definition = "The actual analysis results can be found here."

* valueQuantity MS
* valueQuantity ^short = "Manually entered result"
* valueQuantity ^definition = "The result value entered manually."

* valueCodeableConcept MS
* valueCodeableConcept ^short = "Positive or negative laboratory test result"
* valueCodeableConcept ^definition = "Indicates whether the laboratory test result is positive or negative."
* valueCodeableConcept from ObservationInterpretationVS (required)

* performer 0..* MS
* performer only Reference(UZCoreOrganization or UZCorePractitionerRole)
* performer ^short = "Organization responsible for performing this observation"

//* component.value[x] only Quantity or string or CodeableConcept 
* component.valueQuantity.value 0..1 MS
* component.valueQuantity.comparator from QuantityComparatorVS (required)
* component.valueQuantity.unit 0..1 MS
* component.valueQuantity.system 0..1 MS
* component.valueQuantity.system = $ucum
* component.valueQuantity.code 0..1 MS

* component.valueString ^short = "The result value entered manually by a healthcare professional."
* component.valueCodeableConcept ^short = "Positive or negative laboratory test result"
* component.valueCodeableConcept from ObservationInterpretationVS (required) 
/*
* component 0..* MS 
  * code 1..1 MS
  * code from HepatitisObservationAnalysisVS (required) //after LabObsForIntegrationSys branch merged to main branch change this value set with LaboratoryObservationPanelCS
//* dataAbsentReason from DataAbsentReasonVS (extensible)
//* interpretation from ObservationInterpretationVS (extensible)


// Instance Example
Instance: example-hepatitis-observation-analysis
InstanceOf: HepatitisObservationAnalysis
Description: "DNK Gepatit B tahlili namunasi"
Usage: #example
* language = #en
* status = #final
* identifier 
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/hepatitis"
  * value = "PZR-2026-001"
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* method = $sct#258066000 "Polymerase chain reaction"
* code = $loinc#22314-9 "Hepatitis A virus IgM Ab [Presence] in Serum"
* subject = Reference(Patient/example-hepatitis-patient)
* effectiveDateTime = "2026-01-27T09:57:00Z"
* valueCodeableConcept.coding
  * code = hep-lab-res-type-cs#lab_0001_00001 "Negative"
  * display = "Negative"
  * system = "https://terminology.dhp.uz/CodeSystem/hep-lab-res-type-cs"

* performer[0] = Reference(PractitionerRole/muratova-gulshoda-role)
* performer[1] = Reference(Organization/samarkand-regional-hospital)
* component[0]
  * code = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum" //This example is incorrect , inside of component.code only use panel's analytes code
  * valueQuantity 
    * value = 100
    * comparator = #< "Less than"
    * unit = "mL"
    * system = "http://unitsofmeasure.org"
    * code = #mL
