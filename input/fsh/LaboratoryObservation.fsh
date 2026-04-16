Profile: LaboratoryObservation
Parent: Observation
Id: lab-observation
Title: "Laboratory Observation for Integration IG"
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
* component.dataAbsentReason from DataAbsentReasonVS (extensible)
* component.interpretation from ObservationInterpretationVS (extensible)

Instance: afp-example
InstanceOf: LaboratoryObservation
Usage: #example
Description: "Example of Alpha-1-Fetoprotein (AFP) [Mass/volume] in Serum or Plasma laboratory observation using ObservationLabPanelCodesCS"
* meta.profile[0] = "https://dhp.uz/fhir/integrations/StructureDefinition/lab-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = lab-observation-pan-cs#lab-pan-386 "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2025-11-04T08:10:00Z"
* issued = "2025-11-04T09:00:00Z"
* performer = Reference(Practitioner/example-practitioner)
* specimen = Reference(Specimen/specimen-example-blood)
