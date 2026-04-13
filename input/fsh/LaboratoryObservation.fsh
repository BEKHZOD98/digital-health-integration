Profile: LaboratoryObservation
<<<<<<< HEAD
Parent: Observation
=======
Parent: UZCoreObservation
>>>>>>> 6a3f730 (initial commit)
Id: lab-observation
Title: "Laboratory Observation for Integration IG"
Description: "Uzbekistan Laboratory Observation profile, for integration medical information systems"
* ^experimental = true
* ^status = #active
//rules
* identifier MS
* code MS
<<<<<<< HEAD
* code from ObservationLabCodesVS
=======
* code from ObservationLabCodesVS (required)
>>>>>>> 6a3f730 (initial commit)
* value[x] MS
* method from ObservationLabMethodsVS
* component MS
* component.code MS
* component.code from ObservationLabCodesVS
* component.value[x] MS
* component.dataAbsentReason from DataAbsentReasonVS (extensible)
* component.interpretation from ObservationInterpretationVS (extensible)

<<<<<<< HEAD
=======

// CBC - panel with components
Instance: cbc-panel-example
InstanceOf: UZCoreObservation
Usage: #example
Description: "Example of CBC (Umumiy qon tahlili) as a laboratory panel with analytes from observation-lab-research-codes-cs"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* status = #final
//* category = $observation-category#laboratory "Laboratory"
* code = #lab-pan-A
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2025-11-04T08:10:00Z"
* issued = "2025-11-04T09:00:00Z"
* performer = Reference(Practitioner/example-practitioner)
* specimen = Reference(Specimen/specimen-example-blood)
* component[0].code = #lab-89 
* component[=].valueQuantity = 6.2 '10*9/L' "10^9/L"
/* * component[+].code = observation-lab-research-codes-cs#lab-2 "Neutrophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 3.7 '10*9/L' "10^9/L"
* component[+].code = observation-lab-research-codes-cs#lab-3 "Lymphocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 2.0 '10*9/L' "10^9/L"
* component[+].code = observation-lab-research-codes-cs#lab-4 "Monocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.4 '10*9/L' "10^9/L"
* component[+].code = observation-lab-research-codes-cs#lab-5 "Eosinophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.1 '10*9/L' "10^9/L"
* component[+].code = observation-lab-research-codes-cs#lab-6 "Basophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.0 '10*9/L' "10^9/L"
* component[+].code = observation-lab-research-codes-cs#lab-7 "Neutrophils/100 leukocytes in Blood by Automated count"
* component[=].valueQuantity = 60 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-8 "Lymphocytes/100 leukocytes in Blood by Automated count"
* component[=].valueQuantity = 32 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-9 "Monocytes/100 leukocytes in Blood by Automated count"
* component[=].valueQuantity = 6 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-10 "Eosinophils/100 leukocytes in Blood by Automated count"
* component[=].valueQuantity = 2 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-11 "Basophils/100 leukocytes in Blood by Automated count"
* component[=].valueQuantity = 0 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-12 "Erythrocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 4.7 '10*12/L' "10^12/L"
* component[+].code = observation-lab-research-codes-cs#lab-13 "Hemoglobin [Mass/volume] in Blood"
* component[=].valueQuantity = 145 'g/L' "g/L"
* component[+].code = observation-lab-research-codes-cs#lab-14 "Hematocrit [Volume Fraction] of Blood by Automated count"
* component[=].valueQuantity = 43 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-15 "MCV [Entitic volume] by Automated count"
* component[=].valueQuantity = 91 'fL' "fL"
* component[+].code = observation-lab-research-codes-cs#lab-16 "MCH [Entitic mass] by Automated count"
* component[=].valueQuantity = 30.9 'pg' "pg"
* component[+].code = observation-lab-research-codes-cs#lab-17 "MCHC [Mass/volume] by Automated count"
* component[=].valueQuantity = 338 'g/L' "g/L"
* component[+].code = observation-lab-research-codes-cs#lab-18 "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"
* component[=].valueQuantity = 13.1 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-19 "Erythrocyte distribution width (RDW-SD) [Entitic volume] by Automated count"
* component[=].valueQuantity = 42 'fL' "fL"
* component[+].code = observation-lab-research-codes-cs#lab-20 "Platelets [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 250 '10*9/L' "10^9/L"
* component[+].code = observation-lab-research-codes-cs#lab-21 "Mean platelet volume [Entitic volume] in Blood by Automated count"
* component[=].valueQuantity = 9.8 'fL' "fL"
* component[+].code = observation-lab-research-codes-cs#lab-22 "Platelet distribution width [Entitic volume] in Blood by Automated count"
* component[=].valueQuantity = 12.1 'fL' "fL"
* component[+].code = observation-lab-research-codes-cs#lab-23 "Plateletcrit [Volume Fraction] of Blood by Automated count"
* component[=].valueQuantity = 0.24 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-24 "Platelet large cell count [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 60 '10*9/L' "10^9/L"
* component[+].code = observation-lab-research-codes-cs#lab-25 "Platelet large cell ratio [#] in Blood by Automated count"
* component[=].valueQuantity = 24 '%' "%"
* component[+].code = observation-lab-research-codes-cs#lab-26 "Erythrocyte sedimentation rate (ESR) by Westergren method"
* component[=].valueQuantity = 8 'mm/h' "mm/h"
*/
>>>>>>> 6a3f730 (initial commit)
