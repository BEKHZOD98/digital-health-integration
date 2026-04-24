Profile: LaboratoryObservation
Parent: UZCoreObservation
Id: lab-observation
Title: "Laboratory Observation profile for Integration systems"
Description: "Uzbekistan Laboratory Observation profile, for integration medical information systems"
* ^experimental = true
* ^status = #active
//rules
* identifier MS
* code MS
* code from ObservationLabCodesVS
* value[x] MS
* method from ObservationLabMethodsVS
* component MS
* component.code MS
* component.code from ObservationLabCodesVS
* component.value[x] MS
//* component.dataAbsentReason from DataAbsentReasonVS (extensible)
//* component.interpretation from ObservationInterpretationVS (extensible)

Instance: cbc-panel-example
InstanceOf: LaboratoryObservation
Usage: #example
Description: "Example of CBC (Umumiy qon tahlili) as a laboratory panel with analytes from ObservationLabPanelCodesCS"
* meta.profile[0] = "https://dhp.uz/fhir/integrations/StructureDefinition/lab-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = lab-observation-pan-cs#lab-pan-E "CBC panel"
* method = observation-lab-methods-cs#lab-method-3 "ELISA (Enzyme-Linked Immunosorbent Assay)"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2025-11-04T08:10:00Z"
* issued = "2025-11-04T09:00:00Z"
* performer = Reference(Practitioner/example-practitioner)
* specimen = Reference(Specimen/specimen-example-blood)
* component[0].code = lab-observation-pan-cs#lab-pan-74 "Hemoglobin [Mass/volume] in Blood"
* component[=].valueQuantity = 130.0 'g/L' "g/L"
* component[+].code = lab-observation-pan-cs#lab-pan-75 "Erythrocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 4.0 '10*12/L' "10^12/L"
* component[+].code = lab-observation-pan-cs#lab-pan-76 "Color index"
* component[=].valueQuantity = 0.86 '10*12/L' "10^12/L"
* component[+].code = lab-observation-pan-cs#lab-pan-77 "MCV [Entitic volume] by Automated count"
* component[=].valueQuantity = 80 'fL' "fL"
* component[+].code = lab-observation-pan-cs#lab-pan-78 "MCH [Entitic mass] by Automated count"
* component[=].valueQuantity = 30 'fL' "fL"
* component[+].code = lab-observation-pan-cs#lab-pan-79 "MCHC [Mass/volume] by Automated count"
* component[=].valueQuantity = 320 'g/L' "g/L"
* component[+].code = lab-observation-pan-cs#lab-pan-80 "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"
* component[=].valueQuantity = 11.6 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-81 "Hematocrit [Volume Fraction] of Blood by Automated count"
* component[=].valueQuantity = 36 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-82 "Platelets [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 180 '10*9/L' "10^9/L"
* component[+].code = lab-observation-pan-cs#lab-pan-83 "Mean platelet volume [Entitic volume] in Blood by Automated count"
* component[=].valueQuantity = 3.6 'fL' "fL"
* component[+].code = lab-observation-pan-cs#lab-pan-84 "Platelet distribution width [Entitic volume] in Blood by Automated count"
* component[=].valueQuantity = 3 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-85 "Plateletcrit [Volume Fraction] of Blood by Automated count"
* component[=].valueQuantity = 0.15 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-86 "Leukocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 4.1 '10*9/L' "10^9/L"
* component[+].code = lab-observation-pan-cs#lab-pan-89 "Neutrophils.band form/100 leukocytes in Blood by Manual count"
* component[=].valueQuantity = 1 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-90 "Neutrophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 47 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-91 "Eosinophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.6 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-92 "Basophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 1 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-93 "Monocytes/100 leukocytes in Blood by Automated count"
* component[=].valueQuantity = 4 '%' "%"
* component[+].code = lab-observation-pan-cs#lab-pan-94 "Lymphocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 20 '%' "%"
