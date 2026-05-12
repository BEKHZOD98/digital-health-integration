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
* identifier.type from $identifier-type-vs (required)
* code 1..1 MS
* code from HepatitisObservationAnalysisVS (required)

* subject only Reference(UZCorePatient)
* encounter ^short = "When a healthcare professional enters patient information into the system, it is used to associate this information with the patient's active encounter record."
* effective[x] only dateTime or Period
* effective[x] ^short = "Date and time when the observation occurred"

* value[x] only Attachment or Quantity or CodeableConcept
* value[x] ^short = "Actual code"

* valueAttachment ^short = "Attached file"
* valueAttachment ^definition = "The actual analysis results can be found here."

* valueQuantity ^short = "Manually entered result"
* valueQuantity ^definition = "The result value entered manually."

* valueCodeableConcept ^short = "Positive or negative laboratory test result"
* valueCodeableConcept ^definition = "Indicates whether the laboratory test result is positive or negative."
* valueCodeableConcept from ObservationInterpretationVS (extensible)

* performer only Reference(UZCoreOrganization or UZCorePractitionerRole)
* performer ^short = "Organization responsible for performing this observation"

* component.code 1..1 MS
* component.code from HepatitisObservationAnalysisVS (required)
* component.valueQuantity.comparator from QuantityComparatorVS (required)
* component.valueQuantity.system = $ucum

* component.valueString ^short = "The result value entered manually by a healthcare professional."
* component.valueCodeableConcept ^short = "Positive or negative laboratory test result"
* component.valueCodeableConcept from ObservationInterpretationVS (extensible)
* component.interpretation from ObservationInterpretationVS (extensible)


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
  * system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
  * code = #NEG
  * display = "Negative"

* performer[0] = Reference(PractitionerRole/muratova-gulshoda-role)
* performer[1] = Reference(Organization/samarkand-regional-hospital)

/* temporary commented out until the new version of dhp-core is released
// CBC - panel with components
Instance: cbc-panel-example
InstanceOf: HepatitisObservationAnalysis
Usage: #example
Description: "Example of CBC ( Umumiy qon tahlili ) as a laboratory panel with analytes from observation-lab-research-codes-cs"
* identifier 
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/hepatitis"
  * value = "PZR-2026-002"
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #PHC
    * display = "Public Health Case Identifier"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $lab-pan#lab-pan-E "CBC panel"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2025-11-04T08:10:00Z"
* issued = "2025-11-04T09:00:00Z"
* performer = Reference(PractitionerRole/muratova-gulshoda-role)
* specimen = Reference(Specimen/specimen-example-blood)
* component[0].code = $lab-pan#lab-pan-74 "Hemoglobin [Mass/volume] in Blood"
* component[=].valueQuantity = 145 'g/L' "g/L"
* component[+].code = $lab-pan#lab-pan-75 "Erythrocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 4.7 '10*12/L' "10^12/L"
* component[+].code = $lab-pan#lab-pan-76 "Color index"
* component[=].valueString = "0.93"
* component[+].code = $lab-pan#lab-pan-77 "MCV [Entitic volume] by Automated count"
* component[=].valueQuantity = 91 'fL' "fL"
* component[+].code = $lab-pan#lab-pan-78 "MCH [Entitic mass] by Automated count"
* component[=].valueQuantity = 30.9 'pg' "pg"
* component[+].code = $lab-pan#lab-pan-79 "MCHC [Mass/volume] by Automated count"
* component[=].valueQuantity = 338 'g/L' "g/L"
* component[+].code = $lab-pan#lab-pan-80 "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"
* component[=].valueQuantity = 13.1 '%' "%"
* component[+].code = $lab-pan#lab-pan-81 "Hematocrit [Volume Fraction] of Blood by Automated count"
* component[=].valueQuantity = 43 '%' "%"
* component[+].code = $lab-pan#lab-pan-82 "Platelets [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 250 '10*9/L' "10^9/L"
* component[+].code = $lab-pan#lab-pan-83 "Mean platelet volume [Entitic volume] in Blood by Automated count"
* component[=].valueQuantity = 9.8 'fL' "fL"
* component[+].code = $lab-pan#lab-pan-84 "Platelet distribution width [Entitic volume] in Blood by Automated count"
* component[=].valueQuantity = 12.1 'fL' "fL"
* component[+].code = $lab-pan#lab-pan-85 "Plateletcrit [Volume Fraction] of Blood by Automated count"
* component[=].valueQuantity = 0.24 '%' "%"
* component[+].code = $lab-pan#lab-pan-86 "Leukocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 6.2 '10*9/L' "10^9/L"
* component[+].code = $lab-pan#lab-pan-87 "Myelocytes [#/volume] in Blood by Manual count"
* component[=].valueQuantity = 0 '10*9/L' "10^9/L"
* component[+].code = $lab-pan#lab-pan-88 "Metamyelocytes/100 leukocytes in Blood by Manual count"
* component[=].valueQuantity = 0 '%' "%"
* component[+].code = $lab-pan#lab-pan-89 "Neutrophils.band form/100 leukocytes in Blood by Manual count"
* component[=].valueQuantity = 3 '%' "%"
* component[+].code = $lab-pan#lab-pan-90 "Neutrophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 3.7 '10*9/L' "10^9/L"
* component[+].code = $lab-pan#lab-pan-91 "Eosinophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.1 '10*9/L' "10^9/L"
* component[+].code = $lab-pan#lab-pan-92 "Basophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.0 '10*9/L' "10^9/L"
* component[+].code = $lab-pan#lab-pan-93 "Monocytes/100 leukocytes in Blood by Automated count"
* component[=].valueQuantity = 6 '%' "%"
* component[+].code = $lab-pan#lab-pan-94 "Lymphocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 2.0 '10*9/L' "10^9/L"
* component[+].code = $lab-pan#lab-pan-95 "Plasma cells monotypic population [Identifier] in Bone marrow by Flow cytometry (FC)"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-96 "Erythrocyte sedimentation rate (ESR) by Westergren method"
* component[=].valueQuantity = 8 'mm/h' "mm/h"
* component[+].code = $lab-pan#lab-pan-97 "Platelet anisocytosis [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-98 "Poikilocytosis [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-99 "Basophilic stippling [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-100 "Polychromasia [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-101 "Howell-Jolly bodies [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-102 "Cabot rings [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-104 "Megaloblasts/cells in Bone marrow"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-105 "Neutrophils.hypersegmented [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $lab-pan#lab-pan-106 "Toxic granules [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
*/
