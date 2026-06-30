ValueSet: ObservationCodeableConceptVS
Id: observation-codeable-concept-vs
Title: "DHIS Observation Result ValueSet"
Description: "Value set of coded tuberculosis test results, combining the DHIS observation result code system with HL7 observation interpretation codes, for use in Observation.valueCodeableConcept."
* ^experimental = true
* ^url = "https://terminology.dhp.uz/ValueSet/observation-codeable-concept-vs"

* include codes from system observation-codeable-concept-cs
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

* include $observation-interpretation#S
* include $observation-interpretation#R
* include $observation-interpretation#IND
* include $observation-interpretation#DET
* include $observation-interpretation#ND
* include $observation-interpretation#POS
* include $observation-interpretation#NEG
