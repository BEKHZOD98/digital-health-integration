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

